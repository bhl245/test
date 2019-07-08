package com.hgkj.model.dao;

import com.hgkj.model.entity.LineType;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/25 9:13
 * @Version 1.8
 */
public interface LineTypeDao {
    /**
     * 查询所有线路类型
     *
     * @return
     */
    public List<LineType> getAllLineTypeDao();

    /**
     * 添加线路类型
     *
     * @param lineType
     */
    public void insertLineTypeDao(LineType lineType);

    /**
     * 根据Id删除线路类型
     *
     * @param lineTypeId
     */
    public void deleteLineTypeDao(String lineTypeId);

    /**
     * 修改线路类型
     *
     * @param lineType
     */
    public void updateLineTypeDao(LineType lineType);

    /**
     * 根据Id查询线路类型
     *
     * @param lineTypeId
     * @return
     */
    public LineType getLineTypeByIdDao(String lineTypeId);
}
