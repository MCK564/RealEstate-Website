package org.example.listingservice.models;

import jakarta.persistence.*;
import lombok.*;

@Data
@EqualsAndHashCode(callSuper = false)
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "love")
@Builder
public class Love  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne()
    @JoinColumn(name="building_id")
    private Building building;

    @ManyToOne()
    @JoinColumn(name="user_id")
    private User user;


}
