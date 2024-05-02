package org.example.listingservice.services.buildings;

import lombok.RequiredArgsConstructor;
import org.example.listingservice.builders.BuildingSearchBuilder;
import org.example.listingservice.constant.MessageKeys;
import org.example.listingservice.converter.Converter;
import org.example.listingservice.dtos.BuildingDTO;
import org.example.listingservice.exceptions.DataNotFoundException;
import org.example.listingservice.models.Building;
import org.example.listingservice.responses.building.BuildingEditResponse;
import org.example.listingservice.models.RentArea;
import org.example.listingservice.models.User;
import org.example.listingservice.repositories.BuildingRepository;
import org.example.listingservice.repositories.RentAreaRepository;
import org.example.listingservice.repositories.Specifications;
import org.example.listingservice.repositories.UserRepository;
import org.example.listingservice.responses.building.BuildingListResponse;
import org.example.listingservice.responses.building.BuildingResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class BuildingService  implements  IbuildingService{
    private final BuildingRepository buildingRepository;
    private final Converter converter;
    private final RentAreaRepository rentAreaRepository;
    private final UserRepository userRepository;

    @Override
    public BuildingListResponse findByCondition(Map<String, Object> conditions, int page, int limit, List<String> type) {
        int totalPages = 0;
//        Sort.Direction direction = Sort.Direction.ASC;
//        Sort sort;
//        sort = Sort.by(direction);
        PageRequest pageRequest = PageRequest.of(page,limit);
        BuildingSearchBuilder builder = converter.toBuildingSearchBuilder(conditions,type);
        Specification<Building> spec = Specifications.searchProductByConditions(builder,type);
        Page<Building> pages = buildingRepository.findAll(spec,pageRequest);
        totalPages = pages.getTotalPages();
        List<Building> buildings = pages.getContent();
        List<BuildingResponse> buildingResponses = buildings
                .stream().map(BuildingResponse::fromBuilding).toList();
        return BuildingListResponse.builder()
                .buildings(buildingResponses)
                .totalPages(totalPages)
                .build();
    }

    @Override
    @Transactional
    public void deleteById(Long id) {
        if(buildingRepository.existsById(id)){
            buildingRepository.deleteById(id);
        }
    }

    @Override
    public ResponseEntity<?> createOrUpdate(BuildingDTO dto) throws DataNotFoundException {
        Building newBuilding = converter.toBuildingFromBuildingDTO(dto);
        if(dto.getId()!=null){
            Building existingBuilding = buildingRepository.findById(dto.getId()).orElseThrow(()
                    ->new DataNotFoundException(MessageKeys.DATA_NOT_FOUND));
            rentAreaRepository.deleteAllByBuilding_Id(existingBuilding.getId());
        }

        User owner = userRepository.findById(dto.getOwnerId()).orElseThrow(()
                ->new DataNotFoundException(MessageKeys.DATA_NOT_FOUND));
        newBuilding.setUser(owner);
        Building savedBuilding = buildingRepository.saveAndFlush(newBuilding);
        List<RentArea> rentAreas =new ArrayList<>();
        for(Integer value:dto.getRentAreas()){
            RentArea newRentArea = RentArea.builder()
                    .building(savedBuilding)
                    .value(Long.valueOf(value.toString()))
                    .build();
            RentArea savedRentArea = rentAreaRepository.saveAndFlush(newRentArea);
            rentAreas.add(savedRentArea);
        }
        savedBuilding.setRentAreas(rentAreas);
        Building savedBuilding2 = buildingRepository.saveAndFlush(savedBuilding);
        return ResponseEntity.ok().body(BuildingResponse.fromBuilding(savedBuilding2));
    }

    @Override
    public BuildingListResponse findByOwnerId(Long id) {
        List<Building> buildings = buildingRepository.findByUser_Id(id);
        List<BuildingResponse> buildingResponses = buildings
                .stream().map(BuildingResponse::fromBuilding).toList();
        return BuildingListResponse.builder().buildings(buildingResponses).build();
    }

    @Override
    public BuildingListResponse getRelativeBuildingsByBuildingId(Long id) throws DataNotFoundException {
        Building existingBuilding = buildingRepository.findById(id)
                .orElseThrow(()-> new DataNotFoundException("Can not find building with id = "+id));

        int totalPages = 0;
        Sort.Direction sort = Sort.Direction.ASC;
//        PageRequest pageRequest = PageRequest.of(0,30,sort);
//        Specification<Building> spec = Specifications.getSomeRelateWithBuilding(existingBuilding);
//        Page<Building> pages = buildingRepository.findAll(spec,pageRequest);
//        totalPages = pages.getTotalPages();
//        List<Building> buildings = pages.getContent();
        List<Building> buildings = buildingRepository.findAllByDistrictOrWardLikeOrStreetLikeOrderByCreatedDateDesc(existingBuilding.getDistrict(),existingBuilding.getWard(),existingBuilding.getStreet());
        List<BuildingResponse> buildingResponses = buildings
                .stream().map(BuildingResponse::fromBuilding).toList();
        return BuildingListResponse.builder()
                .buildings(buildingResponses)
                .totalPages(totalPages)
                .build();

    }

    @Override
    public BuildingListResponse getSomePopularBuilding() {
        List<Building> buildings = buildingRepository.findTop30BuildingsWithMostLikes();
        List<BuildingResponse> buildingResponses = buildings
                .stream().map(BuildingResponse::fromBuilding).toList();
        return BuildingListResponse.builder().buildings(buildingResponses).build();
    }

    @Override
    public BuildingResponse getById(Long id) throws DataNotFoundException {
        Building existingBuilding = buildingRepository.findById(id)
                .orElseThrow(()-> new DataNotFoundException("Can not find building with id = "+id));
        return BuildingResponse.fromBuilding(existingBuilding);
    }

    @Override
    public BuildingEditResponse getBuildingEditById(Long id) throws DataNotFoundException {
        Building existingBuilding = buildingRepository.findById(id)
                .orElseThrow(()-> new DataNotFoundException("Can not find building with id = "+id));
        return BuildingEditResponse.fromBuilding(existingBuilding);
    }


}
