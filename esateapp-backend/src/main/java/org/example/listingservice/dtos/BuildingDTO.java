package org.example.listingservice.dtos;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BuildingDTO {
    private Long id;
    @JsonProperty("name")
    private String name;
    @JsonProperty("street")
    private String street;
    @JsonProperty("ward")
    private String ward;
    @JsonProperty("district")
    private String district;
    @JsonProperty("structure")
    private String structure;
    @JsonProperty("numberofbasement")
    private Integer numberOfBasement;
    @JsonProperty("floorarea")
    private Integer floorArea;
    @JsonProperty("direction")
    private String direction;
    @JsonProperty("level")
    private String level;
    @JsonProperty("rentprice")
    private Integer rentPrice;
    @JsonProperty("rentpricedescription")
    private String rentPriceDescription;
    @JsonProperty("servicefee")
    private String serviceFee;
    @JsonProperty("carfee")
    private String carFee;
    private List<Integer> rentAreas;
    @JsonProperty("motorbikefee")
    private String motorbikeFee;
    @JsonProperty("overtimefee")
    private String overtimeFee;
    @JsonProperty("waterfee")
    private String waterFee;
    @JsonProperty("electricityfee")
    private String electricityFee;
    @JsonProperty("deposit")
    private String deposit;
    @JsonProperty("payment")
    private String payment;
    @JsonProperty("renttime")
    private String rentTime;
    @JsonProperty("decorationtime")
    private String decorationTime;
    @JsonProperty("brokeragefee")
    private BigDecimal brokerageFee;
    @JsonProperty("note")
    private String note;
    @JsonProperty("linkofbuilding")
    private String linkOfBuilding;
    @JsonProperty("map")
    private String map;
    @JsonProperty("managername")
    private String managerName;
    @JsonProperty("managerphonenumber")
    private String managerPhoneNumber;
    @JsonProperty("status")
    private Integer status;
    @JsonProperty("type")
    private String type;
    @JsonProperty("owner_id")
    private Long ownerId;
}
