package com.hgkj.model.service;

import com.hgkj.model.entity.Building;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/20 20:42
 * @Version 1.8
 */
public interface BuildingService {
    /**
     * 查询所有楼宇
     *
     * @return
     */
    public List<Building> allBuildingService();

    /**
     * 添加楼宇信息
     *
     * @param building
     */
    public void insertBuildingService(Building building);

    /**
     * 删除楼宇信息
     *
     * @param buildingId
     */
    public void deleteBuildingService(int buildingId);

    /**
     * 修改楼宇信息
     *
     * @param building
     */
    public void updateBuildingService(Building building);

    /**
     * 根据Id查询楼宇信息
     *
     * @param buildingId
     * @return
     */
    public Building getBuildingByIdService(int buildingId);

    /**
     * 根据名称模糊查询
     *
     * @param buildingName
     * @return
     */
    public List<Building> cascadeBuildingNameService(String buildingName);
}
