package org.example.listingservice.responses.user;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = false)
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserListResponse {
    List<UserResponse> userResponses = new ArrayList<>();
    int totalPages;
}
