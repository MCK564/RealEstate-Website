package org.example.listingservice.converter;

import lombok.RequiredArgsConstructor;
import org.example.listingservice.builders.BuildingSearchBuilder;
import org.example.listingservice.dtos.BuildingDTO;
import org.example.listingservice.dtos.CommunicationDTO;
import org.example.listingservice.dtos.RegisterDTO;
import org.example.listingservice.dtos.UserDTO;
import org.example.listingservice.models.Building;
import org.example.listingservice.models.Communication;
import org.example.listingservice.models.User;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

import static org.example.listingservice.utils.MapUtils.getObject;

@Component
@RequiredArgsConstructor
public class Converter {
    private final ModelMapper modelMapper;
    public Communication fromCommunicationDTO (CommunicationDTO dto){
        return modelMapper.map(dto, Communication.class);
    }

    public User fromUserDTO(UserDTO dto){
        return modelMapper.map(dto, User.class);
    }

    public BuildingSearchBuilder toBuildingSearchBuilder(Map<String,Object> conditions, List<String> type){
        return  BuildingSearchBuilder.builder()
                .name(getObject(conditions,"name",String.class))
                .district(getObject(conditions,"district",String.class))
                .street(getObject(conditions,"street",String.class))
                .ward(getObject(conditions,"ward",String.class))
                .numberOfBasement(getObject(conditions,"numberOfBasement",Integer.class))
                .floorArea(getObject(conditions,"floorArea",Double.class))
                .rentPriceFrom(getObject(conditions,"rentPriceFrom",Integer.class))
                .rentPriceTo(getObject(conditions,"rentPriceTo",Integer.class))
                .rentAreaFrom(getObject(conditions,"rentAreaFrom",Integer.class))
                .rentAreaTo(getObject(conditions,"rentAreaTo",Integer.class))
                .ownerName(getObject(conditions,"owner",String.class))
                .type(type!= null ?type:null)
                .managerName(getObject(conditions,"managerName",String.class))
                .managerPhoneNumber(getObject(conditions,"managerPhoneNumber",String.class)).build();
    }

    public Building toBuildingFromBuildingDTO(BuildingDTO buildingDTO){
        return modelMapper.map(buildingDTO,Building.class);
    }

    public User fromRegisterDTO(RegisterDTO dto){
        return modelMapper.map(dto,User.class);
    }



}
