package com.hgkj.model.dao;

import com.hgkj.model.entity.Recruit;
import com.hgkj.model.entity.Staff;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 10:26
 * @Version 1.8
 */
public interface RecruitDao {
    public int getTotalPageDao(int pageSize);

    public List<Recruit> getAllRecruitDao(int pageIndex, int pageSize);

    public boolean deleteRecruitByIdDao(int rId);

    public boolean insertRecruitDao(Recruit recruit);

    public Recruit getRecruitByIdDao(int rId);
}
