package org.example.listingservice.responses.building;

import lombok.*;
import java.util.List;

@Data
@AllArgsConstructor
@Builder
@NoArgsConstructor
@Getter
@Setter
public class BuildingListResponse {
    private int totalPages;
    private List<BuildingResponse> buildings;
}

