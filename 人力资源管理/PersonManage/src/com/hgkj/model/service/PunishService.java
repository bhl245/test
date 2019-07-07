package com.hgkj.model.service;

import com.hgkj.model.entity.Punish;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 8:28
 * @Version 1.8
 */
public interface PunishService {
    public int getTotalPageService(int pageSize);

    public List<Punish> getAllPunishService(int pageIndex, int pageSize);

    public boolean deletePunishByIdService(int pId);

    public boolean insertPunishService(Punish punish);

    public Punish getPunishByIdService(int pId);
}
