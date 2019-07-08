package com.hgkj.model.service.impl;

import com.hgkj.model.dao.LineTypeDao;
import com.hgkj.model.entity.LineType;
import com.hgkj.model.service.LineTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/25 11:55
 * @Version 1.8
 */
@Service
public class LineTypeServiceImpl implements LineTypeService {
    @Autowired
    private LineTypeDao lineTypeDao;

    public void setLineTypeDao(LineTypeDao lineTypeDao) {
        this.lineTypeDao = lineTypeDao;
    }

    @Override
    public List<LineType> getAllLineTypeService() {
        return lineTypeDao.getAllLineTypeDao();
    }

    @Override
    public void insertLineTypeService(LineType lineType) {
        lineTypeDao.insertLineTypeDao(lineType);
    }

    @Override
    public void deleteLineTypeService(String lineTypeId) {
        lineTypeDao.deleteLineTypeDao(lineTypeId);
    }

    @Override
    public void updateLineTypeService(LineType lineType) {
        lineTypeDao.updateLineTypeDao(lineType);
    }

    @Override
    public LineType getLineTypeByIdService(String lineTypeId) {
        return lineTypeDao.getLineTypeByIdDao(lineTypeId);
    }
}
