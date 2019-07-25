package com.hgkj.model.dao;

import com.hgkj.model.entity.Log;

import java.util.List;

public interface LogMapper {
    /**
     * 查询所有缺勤记录
     *
     * @param studentId
     * @return
     */
    public List<Log> allLogDao(int studentId);

    /**
     * 删除缺勤记录
     *
     * @param studentId
     */
    public void deleteLogDao(int studentId);
}