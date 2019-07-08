package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.CustomerDao;
import com.hgkj.model.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/23 9:55
 * @Version 1.8
 */
@Transactional
@Repository
public class CustomerDaoImpl implements CustomerDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public Customer customerLoginDao(Customer customer) {
        customer = (Customer) getSession().createQuery("from Customer where custAccount=:account and custPassword=:password").setParameter("account",
                customer.getCustAccount()).setParameter("password", customer.getCustPassword()).uniqueResult();
        return customer;
    }

    @Override
    public void insertCustomerDao(Customer customer) {
        getSession().save(customer);
    }
}
