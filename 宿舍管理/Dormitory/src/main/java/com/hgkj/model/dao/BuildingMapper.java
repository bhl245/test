package com.hgkj.model.dao;

import com.hgkj.model.entity.Building;

import java.util.List;

public interface BuildingMapper {
    /**
     * 查询所有楼宇
     *
     * @return
     */
    public List<Building> allBuildingDao();

    /**
     * 添加楼宇信息
     *
     * @param building
     */
    public void insertBuildingDao(Building building);

    /**
     * 删除楼宇信息
     *
     * @param buildingId
     */
    public void deleteBuildingDao(int buildingId);

    /**
     * 修改楼宇信息
     *
     * @param building
     */
    public void updateBuildingDao(Building building);

    /**
     * 根据Id查询楼宇信息
     *
     * @param buildingId
     * @return
     */
    public Building getBuildingByIdDao(int buildingId);

    /**
     * 根据名称模糊查询
     *
     * @param buildingName
     * @return
     */
    public List<Building> cascadeBuildingNameDao(String buildingName);
}