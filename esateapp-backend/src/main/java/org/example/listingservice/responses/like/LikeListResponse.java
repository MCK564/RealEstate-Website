package org.example.listingservice.responses.like;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@Setter
@Getter
public class LikeListResponse {
    private List<LikeResponse> likes = new ArrayList<>();
    int totalLikes;
}
