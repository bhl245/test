package com.hgkj.model.service;

import com.hgkj.model.entity.Line;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/27 9:54
 * @Version 1.8
 */
public interface LineService {
    /**
     * 查询所有线路信息
     *
     * @return
     */
    public List<Line> getAllLineService();

    /**
     * 添加线路信息
     *
     * @param line
     */
    public void insertLineService(Line line);

    /**
     * 根据线路Id删除线路信息
     *
     * @param lineId
     */
    public void deleteLineService(String lineId);

    /**
     * 修改新路信息
     *
     * @param line
     */
    public void updateLineService(Line line);

    /**
     * 根据线路Id查询详细信息
     *
     * @param lineId
     * @return
     */
    public Line getLineByIdService(String lineId);
}
