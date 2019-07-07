package com.hgkj.model.dao;

import com.hgkj.model.entity.Train;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 21:19
 * @Version 1.8
 */
public interface TrainDao {
    public int getTotalPageDao(int pageSize);

    public List<Train> getAllTrainDao(int pageIndex, int pageSize);

    public boolean deleteTrainByIdDao(int tId);

    public boolean insertTrainDao(Train train);

    public Train getTrainByIdDao(int tId);
}
