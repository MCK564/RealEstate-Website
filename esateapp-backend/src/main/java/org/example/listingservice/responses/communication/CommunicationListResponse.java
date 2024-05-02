package org.example.listingservice.responses.communication;

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
public class CommunicationListResponse {
    private List<CommunicationResponse> communicationResponseList = new ArrayList<>();
    int totalPages;
}
