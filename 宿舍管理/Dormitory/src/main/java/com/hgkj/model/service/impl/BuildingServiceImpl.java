package com.hgkj.model.service.impl;

import com.hgkj.model.dao.BuildingMapper;
import com.hgkj.model.entity.Building;
import com.hgkj.model.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/20 20:43
 * @Version 1.8
 */
@Service
@Transactional
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingMapper buildingMapper;

    @Override
    public List<Building> allBuildingService() {
        return buildingMapper.allBuildingDao();
    }

    @Override
    public void insertBuildingService(Building building) {
        buildingMapper.insertBuildingDao(building);
    }

    @Override
    public void deleteBuildingService(int buildingId) {
        buildingMapper.deleteBuildingDao(buildingId);
    }

    @Override
    public void updateBuildingService(Building building) {
        buildingMapper.updateBuildingDao(building);
    }

    @Override
    public Building getBuildingByIdService(int buildingId) {
        return buildingMapper.getBuildingByIdDao(buildingId);
    }

    @Override
    public List<Building> cascadeBuildingNameService(String buildingName) {
        return buildingMapper.cascadeBuildingNameDao(buildingName);
    }
}
