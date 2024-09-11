package org.example.listingservice.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper = false)
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDTO {
    private String orderType;
    private String amount;
    private String bankCode;
    private String orderInfo;
}
