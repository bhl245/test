package com.hgkj.model.dao;

import com.hgkj.model.entity.Out1;

import java.util.List;

public interface OutMapper {
    /**
     * 查询所有迁出记录
     *
     * @return
     */
    public List<Out1> allOutDao();
}