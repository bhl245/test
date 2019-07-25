package com.hgkj.model.dao;

import com.hgkj.model.entity.Domitory;

import java.util.List;

public interface DomitoryMapper {
    /**
     * 查询所有宿舍信息
     *
     * @return
     */
    public List<Domitory> allDomitoryDao();

    /**
     * 添加宿舍信息
     *
     * @param domitory
     */
    public void insertDomitoryDao(Domitory domitory);

    /**
     * 删除宿舍
     *
     * @param domitoryId
     */
    public void deleteDomitoryDao(int domitoryId);

    /**
     * 修改宿舍信息
     *
     * @param domitory
     */
    public void updateDomitoryDao(Domitory domitory);

    /**
     * 根据Id查询宿舍信息
     *
     * @param domitoryId
     * @return
     */
    public Domitory getDomitroyByIdDao(int domitoryId);

    /**
     * 根据学生Id查询宿舍信息
     *
     * @param studentId
     * @return
     */
    public Domitory getDomitoryByStudentIdDao(int studentId);

    /**
     * 根据楼宇Id查询宿舍
     *
     * @param buildingId
     * @return
     */
    public List<Domitory> getDomitoryByBuildingIdDao(int buildingId);
}