package org.example.listingservice;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/api/listing/")
public class ListingController {

    @GetMapping("doc")
    public ResponseEntity<String> getDoc() {
        return ResponseEntity.ok().body("Return doc here");
    }
}
