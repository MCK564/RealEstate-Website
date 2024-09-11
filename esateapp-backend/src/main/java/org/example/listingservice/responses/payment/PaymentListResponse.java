package org.example.listingservice.responses.payment;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentListResponse {
    @JsonProperty("total_pages") // snake_case
    private int totalPages; // camelCase

    @JsonProperty("payment_responses")
    private List<PaymentDetailResponse> paymentResponses = new ArrayList<>();
}
