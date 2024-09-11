package org.example.listingservice.responses.payment;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.example.listingservice.models.Payment;
import org.example.listingservice.repositories.UserRepository;
import org.example.listingservice.responses.user.UserResponse;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentDetailResponse {
    private Long id;
    private Integer status;
    private Double money;
    private Long posts;

    @JsonProperty("created_at")
    private LocalDateTime createdAt;

    private UserResponse owner;

    public static PaymentDetailResponse fromPayment(Payment payment){
        return  PaymentDetailResponse.builder()
                .id(payment.getId())
                .status(payment.getStatus())
                .createdAt(payment.getCreatedAt())
                .owner(UserResponse.fromUser(payment.getUser()))
                .money(payment.getMoney())
                .posts(payment.getPosts())
                .build();
    }

}
