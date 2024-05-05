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
@Builder
@Table(name = "rentarea")
public class RentArea extends BaseEntity {
	@Column(name = "value")
	private Long value;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="buildingid")
	private Building building;
}
