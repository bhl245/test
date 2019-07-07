package com.hgkj.model.service.impl;

import com.hgkj.model.dao.TrainDao;
import com.hgkj.model.dao.impl.TrainDaoImpl;
import com.hgkj.model.entity.Train;
import com.hgkj.model.service.TrainService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 21:41
 * @Version 1.8
 */
public class TrainServiceImpl implements TrainService {
    private TrainDao trainDao = new TrainDaoImpl();

    @Override
    public int getTotalPageService(int pageSize) {
        return trainDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Train> getAllTrainService(int pageIndex, int pageSize) {
        return trainDao.getAllTrainDao(pageIndex, pageSize);
    }

    @Override
    public boolean deleteTrainByIdService(int tId) {
        return trainDao.deleteTrainByIdDao(tId);
    }

    @Override
    public boolean insertTrainService(Train train) {
        return trainDao.insertTrainDao(train);
    }

    @Override
    public Train getTrainByIdService(int tId) {
        return trainDao.getTrainByIdDao(tId);
    }
}
