package org.example.listingservice.responses.user;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import org.example.listingservice.models.User;
import org.example.listingservice.responses.building.BuildingResponse;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Data
@EqualsAndHashCode(callSuper = false)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserResponse {
    private Long id;
    private String phone;
    private String email;
    @JsonProperty("fullname")
    private String fullName;
    private int status;
    @JsonProperty("role_code")
    private String roleCode;
    private String avatar;
    @JsonProperty("number_of_post")
    private int numberOfPost;

    public static UserResponse fromUser(User user){
        return UserResponse.builder()
                .id(user.getId())
                .phone(user.getPhone())
                .email(user.getEmail())
                .fullName(user.getFullName())
                .status(user.getStatus())
                .roleCode(user.getRole().getCode())
                .avatar(user.getAvatar())
                .numberOfPost(user.getBuildings().size())
                .build();
    }
}
