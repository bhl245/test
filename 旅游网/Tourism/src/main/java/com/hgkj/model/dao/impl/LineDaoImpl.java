package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.LineDao;
import com.hgkj.model.entity.Line;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/27 9:48
 * @Version 1.8
 */
@Transactional
@Repository
public class LineDaoImpl implements LineDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Line> getAllLineDao() {
        return getSession().createQuery("from Line").list();
    }

    @Override
    public void insertLineDao(Line line) {
        getSession().save(line);
    }

    @Override
    public void deleteLineDao(String lineId) {
        getSession().delete(getSession().get(Line.class, lineId));
    }

    @Override
    public void updateLineDao(Line line) {
        getSession().update(line);
    }

    @Override
    public Line getLineByIdDao(String lineId) {
        return getSession().get(Line.class, lineId);
    }
}
