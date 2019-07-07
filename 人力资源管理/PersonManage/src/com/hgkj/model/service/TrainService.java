package com.hgkj.model.service;

import com.hgkj.model.entity.Train;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 21:40
 * @Version 1.8
 */
public interface TrainService {
    public int getTotalPageService(int pageSize);

    public List<Train> getAllTrainService(int pageIndex, int pageSize);

    public boolean deleteTrainByIdService(int tId);

    public boolean insertTrainService(Train train);

    public Train getTrainByIdService(int tId);
}
