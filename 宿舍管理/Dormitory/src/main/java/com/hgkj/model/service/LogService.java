package com.hgkj.model.service;

import com.hgkj.model.entity.Log;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/17 22:41
 * @Version 1.8
 */
public interface LogService {
    /**
     * 查询所有缺勤记录
     *
     * @param studentId
     * @return
     */
    public List<Log> allLogService(int studentId);

    /**
     * 删除缺勤记录
     *
     * @param logId
     */
    public void deleteLogService(int logId);
}
