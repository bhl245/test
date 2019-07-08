package com.hgkj.model.dao;

import com.hgkj.model.entity.Customer;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/23 9:53
 * @Version 1.8
 */
public interface CustomerDao {
    /**
     * 客户登录
     *
     * @param customer
     * @return
     */
    public Customer customerLoginDao(Customer customer);

    /**
     * 客户注册
     *
     * @param customer
     */
    public void insertCustomerDao(Customer customer);
}
