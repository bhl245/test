package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/24 9:09
 * @Version 1.8
 */
public class Customer {
    private int custId;
    private String custAccount;
    private String custName;
    private String custPassword;
    private String custSex;
    private String custIdCard;
    private String custTel;
    private Integer custType;

    public int getCustId() {
        return custId;
    }

    public void setCustId(int custId) {
        this.custId = custId;
    }

    public String getCustAccount() {
        return custAccount;
    }

    public void setCustAccount(String custAccount) {
        this.custAccount = custAccount;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustPassword() {
        return custPassword;
    }

    public void setCustPassword(String custPassword) {
        this.custPassword = custPassword;
    }

    public String getCustSex() {
        return custSex;
    }

    public void setCustSex(String custSex) {
        this.custSex = custSex;
    }

    public String getCustIdCard() {
        return custIdCard;
    }

    public void setCustIdCard(String custIdCard) {
        this.custIdCard = custIdCard;
    }

    public String getCustTel() {
        return custTel;
    }

    public void setCustTel(String custTel) {
        this.custTel = custTel;
    }

    public Integer getCustType() {
        return custType;
    }

    public void setCustType(Integer custType) {
        this.custType = custType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Customer customer = (Customer) o;

        if (custId != customer.custId) return false;
        if (custAccount != null ? !custAccount.equals(customer.custAccount) : customer.custAccount != null) return false;
        if (custName != null ? !custName.equals(customer.custName) : customer.custName != null) return false;
        if (custPassword != null ? !custPassword.equals(customer.custPassword) : customer.custPassword != null) return false;
        if (custSex != null ? !custSex.equals(customer.custSex) : customer.custSex != null) return false;
        if (custIdCard != null ? !custIdCard.equals(customer.custIdCard) : customer.custIdCard != null) return false;
        if (custTel != null ? !custTel.equals(customer.custTel) : customer.custTel != null) return false;
        if (custType != null ? !custType.equals(customer.custType) : customer.custType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = custId;
        result = 31 * result + (custAccount != null ? custAccount.hashCode() : 0);
        result = 31 * result + (custName != null ? custName.hashCode() : 0);
        result = 31 * result + (custPassword != null ? custPassword.hashCode() : 0);
        result = 31 * result + (custSex != null ? custSex.hashCode() : 0);
        result = 31 * result + (custIdCard != null ? custIdCard.hashCode() : 0);
        result = 31 * result + (custTel != null ? custTel.hashCode() : 0);
        result = 31 * result + (custType != null ? custType.hashCode() : 0);
        return result;
    }
}
