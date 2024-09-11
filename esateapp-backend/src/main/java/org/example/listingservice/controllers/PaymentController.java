package org.example.listingservice.controllers;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.example.listingservice.dtos.PaymentDTO;
import org.example.listingservice.services.payments.PaymentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("${api.prefix}/payments")
@RequiredArgsConstructor
public class PaymentController {
    private final PaymentService paymentService;


    @GetMapping("/search")
    public ResponseEntity<?> searchPaymentByConditions(
            @RequestParam Map<String,Object> params,
            @RequestParam(defaultValue = "0")int page,
            @RequestParam(defaultValue = "10")int limit){
    try{
        return ResponseEntity.ok().body("");
    }catch(Exception e){
        return ResponseEntity.badRequest().body(e.getMessage());
    }
    }


    @GetMapping("/{user_id}")
    public ResponseEntity<?> getPaymentHistoryByUserID(
            @PathVariable("user_id")Long userId
    ){
        try{
        return ResponseEntity.ok().body("asdfasdf");
        }catch(Exception e){
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @PostMapping("")
    public ResponseEntity<?> buyPost(
            @RequestBody() PaymentDTO paymentDTO,
            HttpServletRequest request
            ){
        try{
        return ResponseEntity.ok().body("hehe");
        }catch(Exception e){
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping("/vnpay_return")
    public ResponseEntity<?> handleVNPayReturn(@RequestParam Map<String,String> params){
        try{
            return ResponseEntity.ok().body("asdfasf");
        }catch(Exception e){
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }


}
