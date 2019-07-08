package com.hgkj.model.service.impl;

import com.hgkj.model.dao.CustomerDao;
import com.hgkj.model.entity.Customer;
import com.hgkj.model.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/23 10:11
 * @Version 1.8
 */
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerDao customerDao;

    public void setCustomerDao(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    @Override
    public Customer customerLoginService(Customer customer) {
        return customerDao.customerLoginDao(customer);
    }

    @Override
    public void insertCustomerService(Customer customer) {
        customerDao.insertCustomerDao(customer);
    }
}
