package com.hgkj.model.service;

import com.hgkj.model.entity.Recruit;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 11:19
 * @Version 1.8
 */
public interface RecruitService {
    public int getTotalPageService(int pageSize);

    public List<Recruit> getAllRecruitService(int pageIndex, int pageSize);

    public boolean deleteRecruitByIdService(int rId);

    public boolean insertRecruitService(Recruit recruit);

    public Recruit getRecruitByIdService(int rId);
}
