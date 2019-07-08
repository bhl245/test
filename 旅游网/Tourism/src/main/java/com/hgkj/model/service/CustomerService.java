package com.hgkj.model.service;

import com.hgkj.model.entity.Customer;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/23 10:11
 * @Version 1.8
 */
public interface CustomerService {
    /**
     * 客户登录
     * @param customer
     * @return
     */
    public Customer customerLoginService(Customer customer);
    /**
     * 客户注册
     *
     * @param customer
     */
    public void insertCustomerService(Customer customer);
}
