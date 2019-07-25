package com.hgkj.model.service.impl;

import com.hgkj.model.dao.OutMapper;
import com.hgkj.model.entity.Out1;
import com.hgkj.model.service.OutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/23 9:16
 * @Version 1.8
 */
@Service
@Transactional
public class OutServiceImpl implements OutService {
    @Autowired
    private OutMapper outMapper;

    @Override
    public List<Out1> allOutService() {
        return outMapper.allOutDao();
    }
}
