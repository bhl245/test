package com.hgkj.model.service.impl;

import com.hgkj.model.dao.PunishDao;
import com.hgkj.model.dao.impl.PunishDaoImpl;
import com.hgkj.model.entity.Punish;
import com.hgkj.model.service.PunishService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 8:30
 * @Version 1.8
 */
public class PunishServiceImpl implements PunishService {
    private PunishDao punishDao = new PunishDaoImpl();

    @Override
    public int getTotalPageService(int pageSize) {
        return punishDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Punish> getAllPunishService(int pageIndex, int pageSize) {
        return punishDao.getAllPunishDao(pageIndex, pageSize);
    }

    @Override
    public boolean deletePunishByIdService(int pId) {
        return punishDao.deletePunishByIdDao(pId);
    }

    @Override
    public boolean insertPunishService(Punish punish) {
        return punishDao.insertPunishDao(punish);
    }

    @Override
    public Punish getPunishByIdService(int pId) {
        return punishDao.getPunishByIdDao(pId);
    }
}
