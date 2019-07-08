package com.hgkj.model.service;

import com.hgkj.model.entity.LineType;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/25 9:13
 * @Version 1.8
 */
public interface LineTypeService {
    /**
     * 查询所有线路类型
     *
     * @return
     */
    public List<LineType> getAllLineTypeService();

    /**
     * 添加线路类型
     *
     * @param lineType
     */
    public void insertLineTypeService(LineType lineType);

    /**
     * 根据Id删除线路类型
     *
     * @param lineTypeId
     */
    public void deleteLineTypeService(String lineTypeId);

    /**
     * 修改线路类型
     *
     * @param lineType
     */
    public void updateLineTypeService(LineType lineType);

    /**
     * 根据Id查询线路类型
     *
     * @param lineTypeId
     * @return
     */
    public LineType getLineTypeByIdService(String lineTypeId);
}
