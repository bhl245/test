package com.hgkj.model.dao;

import com.hgkj.model.entity.Line;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/26 22:06
 * @Version 1.8
 */
public interface LineDao {
    /**
     * 查询所有线路信息
     *
     * @return
     */
    public List<Line> getAllLineDao();

    /**
     * 添加线路信息
     *
     * @param line
     */
    public void insertLineDao(Line line);

    /**
     * 根据线路Id删除线路信息
     *
     * @param lineId
     */
    public void deleteLineDao(String lineId);

    /**
     * 修改新路信息
     *
     * @param line
     */
    public void updateLineDao(Line line);

    /**
     * 根据线路Id查询详细信息
     *
     * @param lineId
     * @return
     */
    public Line getLineByIdDao(String lineId);
}
