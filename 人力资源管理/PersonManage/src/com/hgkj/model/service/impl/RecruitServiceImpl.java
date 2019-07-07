package com.hgkj.model.service.impl;

import com.hgkj.model.dao.RecruitDao;
import com.hgkj.model.dao.impl.RecruitDaoImpl;
import com.hgkj.model.entity.Recruit;
import com.hgkj.model.service.RecruitService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 11:20
 * @Version 1.8
 */
public class RecruitServiceImpl implements RecruitService {
    private RecruitDao recruitDao = new RecruitDaoImpl();

    @Override
    public int getTotalPageService(int pageSize) {
        return recruitDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Recruit> getAllRecruitService(int pageIndex, int pageSize) {
        return recruitDao.getAllRecruitDao(pageIndex, pageSize);
    }

    @Override
    public boolean deleteRecruitByIdService(int rId) {
        return recruitDao.deleteRecruitByIdDao(rId);
    }

    @Override
    public boolean insertRecruitService(Recruit recruit) {
        return recruitDao.insertRecruitDao(recruit);
    }

    @Override
    public Recruit getRecruitByIdService(int rId) {
        return recruitDao.getRecruitByIdDao(rId);
    }
}
