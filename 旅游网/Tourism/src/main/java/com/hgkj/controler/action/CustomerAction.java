package com.hgkj.controler.action;

import com.hgkj.model.entity.Customer;
import com.hgkj.model.service.CustomerService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/23 10:16
 * @Version 1.8
 */
@Controller
@Namespace("/")
@ParentPackage("struts-default")
public class CustomerAction {
    @Autowired
    private CustomerService customerService;
    private Customer customer;
    private String message;

    public void setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }

    @Action(value = "customerLogin", results = {
            @Result(name = "gly", type = "redirect", location = "ht_index.jsp"),
            @Result(name = "yh", type = "redirect", location = "customer.jsp"),
            @Result(name = "error", type = "redirect", location = "login.jsp")})
    public String customerLogin() {
        Customer cust = customerService.customerLoginService(customer);
        if (cust.getCustId() > 0) {
            if (cust.getCustType() == 1) {
                ActionContext.getContext().getSession().put("cust", cust);
                return "gly";
            } else {
                ActionContext.getContext().getSession().put("cust", cust);
                return "yh";
            }
        }
        return "error";
    }

    @Action(value = "insertCustomer", results = @Result(name = "insert", type = "redirect", location = "login.jsp"))
    public String insertCustomer() {
        customerService.insertCustomerService(customer);
        return "insert";
    }

    @Action(value = "out", results = @Result(name = "out", type = "redirect", location = "index.jsp"))
    public String out() {
        ServletActionContext.getRequest().getSession().invalidate();
        return "out";
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
