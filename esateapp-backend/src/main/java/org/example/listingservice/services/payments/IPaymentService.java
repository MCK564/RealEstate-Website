package org.example.listingservice.services.payments;

import org.example.listingservice.dtos.PaymentDTO;
import org.example.listingservice.responses.payment.PaymentListResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public interface IPaymentService {
    String getVNPayURL(PaymentDTO dto);
    ResponseEntity<?> handleVNPayReturnURL(Map<String, String> params);
    PaymentListResponse adminGetPayments(Map<String, Object> params);
    PaymentListResponse getAllByUserId(Long userId);
}
