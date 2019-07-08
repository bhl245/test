package com.hgkj.model.service.impl;

import com.hgkj.model.dao.LineDao;
import com.hgkj.model.entity.Line;
import com.hgkj.model.service.LineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/27 9:56
 * @Version 1.8
 */
@Service
public class LineServiceImpl implements LineService {
    @Autowired
    private LineDao lineDao;

    public void setLineDao(LineDao lineDao) {
        this.lineDao = lineDao;
    }

    @Override
    public List<Line> getAllLineService() {
        return lineDao.getAllLineDao();
    }

    @Override
    public void insertLineService(Line line) {
        lineDao.insertLineDao(line);
    }

    @Override
    public void deleteLineService(String lineId) {
        lineDao.deleteLineDao(lineId);
    }

    @Override
    public void updateLineService(Line line) {
        lineDao.updateLineDao(line);
    }

    @Override
    public Line getLineByIdService(String lineId) {
        return lineDao.getLineByIdDao(lineId);
    }
}
