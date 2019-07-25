package com.hgkj.model.service.impl;

import com.hgkj.model.dao.DomitoryMapper;
import com.hgkj.model.entity.Domitory;
import com.hgkj.model.service.DomitoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/22 9:02
 * @Version 1.8
 */
@Service
@Transactional
public class DomitoryServiceImpl implements DomitoryService {
    @Autowired
    private DomitoryMapper domitoryMapper;

    @Override
    public List<Domitory> allDomitoryService() {
        return domitoryMapper.allDomitoryDao();
    }

    @Override
    public void insertDomitoryService(Domitory domitory) {
        domitoryMapper.insertDomitoryDao(domitory);
    }

    @Override
    public void deleteDomitoryService(int domitoryId) {
        domitoryMapper.deleteDomitoryDao(domitoryId);
    }

    @Override
    public void updateDomitoryService(Domitory domitory) {
        domitoryMapper.updateDomitoryDao(domitory);
    }

    @Override
    public Domitory getDomitroyByIdService(int domitoryId) {
        return domitoryMapper.getDomitroyByIdDao(domitoryId);
    }

    @Override
    public Domitory getDomitoryByStudentIdService(int studentId) {
        return domitoryMapper.getDomitoryByStudentIdDao(studentId);
    }

    @Override
    public List<Domitory> getDomitoryByBuildingIdService(int buildingId) {
        return domitoryMapper.getDomitoryByBuildingIdDao(buildingId);
    }
}
