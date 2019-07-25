package com.hgkj.model.service.impl;

import com.hgkj.model.dao.LogMapper;
import com.hgkj.model.entity.Log;
import com.hgkj.model.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/17 22:41
 * @Version 1.8
 */
@Service
@Transactional
public class LogServiceImpl implements LogService {
    @Autowired
    private LogMapper logMapper;

    @Override
    public List<Log> allLogService(int studentId) {
        return logMapper.allLogDao(studentId);
    }

    @Override
    public void deleteLogService(int logId) {
        logMapper.deleteLogDao(logId);
    }
}
