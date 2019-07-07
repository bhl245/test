package com.hgkj.model.dao;

import com.hgkj.model.entity.Punish;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 22:40
 * @Version 1.8
 */
public interface PunishDao {
    public int getTotalPageDao(int pageSize);

    public List<Punish> getAllPunishDao(int pageIndex, int pageSize);

    public boolean deletePunishByIdDao(int pId);

    public boolean insertPunishDao(Punish punish);

    public Punish getPunishByIdDao(int pId);
}
