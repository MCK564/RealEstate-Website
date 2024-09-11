package org.example.listingservice.filters;


import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.example.listingservice.models.User;
import org.example.listingservice.utils.JwtUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.util.Pair;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Component
@RequiredArgsConstructor
public class JwtFilter extends OncePerRequestFilter {
    @Value("${api.prefix}")
    private String apiPrefix;

    private final UserDetailsService userDetailsService;
    private final JwtUtils jwtUtil;


    @Override
    protected void doFilterInternal(@NonNull HttpServletRequest request,
                                    @NonNull HttpServletResponse response,
                                    @NonNull FilterChain filterChain)
            throws ServletException, IOException {
        try{
            if(isByPassToken(request)){
                filterChain.doFilter(request,response);
                return;
            }
            final String authHeader = request.getHeader("Authorization");
            if(authHeader == null || !authHeader.startsWith("Bearer ")){
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED,
                        "authHeader null or not start with Bearer");
                return;
            }
            final String token = authHeader.substring(7);
            final String phoneNumber = jwtUtil.extractPhoneNumber(token);
            if(phoneNumber != null
                && SecurityContextHolder.getContext().getAuthentication() ==null
            ){
                User userDetails = (User)userDetailsService.loadUserByUsername(phoneNumber);
                if(jwtUtil.validateToken(token,userDetails)){
                    UsernamePasswordAuthenticationToken authenticationToken =
                            new UsernamePasswordAuthenticationToken(
                                    userDetails,
                                    null,
                                    userDetails.getAuthorities()
                            );
                authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authenticationToken);
                }
            }
            filterChain.doFilter(request,response);
        }catch(Exception e){
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.getWriter().write(e.getMessage());
        }
    }

    private boolean isByPassToken(@NonNull HttpServletRequest request){
        final List<Pair<String,String>> bypassTokens = Arrays.asList(
                Pair.of(String.format("%s/users/login",apiPrefix),"POST"),
                Pair.of(String.format("%s/users/register",apiPrefix),"POST"),
                Pair.of(String.format("%s/users/refreshToken*", apiPrefix), "POST"),
                Pair.of(String.format("%s/buildings/search",apiPrefix),"GET"),
                Pair.of(String.format("%s/buildings/relations**",apiPrefix),"GET"),
                Pair.of(String.format("%s/buildings/building-edit**", apiPrefix), "GET"),
                Pair.of(String.format("%s/payments/**",apiPrefix),"GET"),
                Pair.of(String.format("%s/swagger-ui.html",apiPrefix),"GET")


        );
        String requestPath = request.getServletPath();
        String requestMethod = request.getMethod();

        for(Pair<String,String> token : bypassTokens){
            String path = token.getFirst();
            String method = token.getSecond();
            if (requestPath.startsWith(path.replace("**", "/")) && requestMethod.equalsIgnoreCase(method)) {
                return true;
            }
        }
        return false;
    }
}
