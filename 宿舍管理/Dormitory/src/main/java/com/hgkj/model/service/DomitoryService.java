package com.hgkj.model.service;

import com.hgkj.model.entity.Domitory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/22 9:01
 * @Version 1.8
 */
public interface DomitoryService {
    /**
     * 查询所有宿舍信息
     *
     * @return
     */
    public List<Domitory> allDomitoryService();

    /**
     * 添加宿舍信息
     *
     * @param domitory
     */
    public void insertDomitoryService(Domitory domitory);

    /**
     * 删除宿舍
     *
     * @param domitoryId
     */
    public void deleteDomitoryService(int domitoryId);

    /**
     * 修改宿舍信息
     *
     * @param domitory
     */
    public void updateDomitoryService(Domitory domitory);

    /**
     * 根据Id查询宿舍信息
     *
     * @param domitoryId
     * @return
     */
    public Domitory getDomitroyByIdService(int domitoryId);

    /**
     * 根据学生Id查询宿舍信息
     *
     * @param studentId
     * @return
     */
    public Domitory getDomitoryByStudentIdService(int studentId);

    /**
     * 根据楼宇Id查询宿舍
     *
     * @param buildingId
     * @return
     */
    public List<Domitory> getDomitoryByBuildingIdService(int buildingId);
}
