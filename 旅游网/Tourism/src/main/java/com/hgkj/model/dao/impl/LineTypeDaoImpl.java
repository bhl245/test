package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.LineTypeDao;
import com.hgkj.model.entity.LineType;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/25 11:28
 * @Version 1.8
 */
@Transactional
@Repository
public class LineTypeDaoImpl implements LineTypeDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<LineType> getAllLineTypeDao() {
        return getSession().createQuery("from LineType").list();
    }

    @Override
    public void insertLineTypeDao(LineType lineType) {
        getSession().save(lineType);
    }

    @Override
    public void deleteLineTypeDao(String lineTypeId) {
        getSession().delete(getSession().get(LineType.class, lineTypeId));
    }

    @Override
    public void updateLineTypeDao(LineType lineType) {
        getSession().update(lineType);
    }

    @Override
    public LineType getLineTypeByIdDao(String lineTypeId) {
        return getSession().get(LineType.class, lineTypeId);
    }
}
