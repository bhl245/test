package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.StaffDao;
import com.hgkj.model.entity.Department;
import com.hgkj.model.entity.Staff;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/8 10:38
 * @Version 1.8
 */
public class StaffDaoImpl implements StaffDao {
    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from staff";

        try {
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            if (rs.next()) {
                totalPage = (rs.getInt(1) - 1) / pageSize + 1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return totalPage;
    }

    @Override
    public List<Staff> getAllStaffDao(int pageIndex, int pageSize) {
        List<Staff> staffList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from staff limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Staff staff = new Staff();
                staff.setStId(rs.getInt("stId"));
                staff.setStName(rs.getString("stName"));
                staff.setStSex(rs.getString("stSex"));
                staff.setDepartment(getDepartmentById(rs.getInt("dId")));
                staff.setStWork(rs.getString("stWork"));
                staff.setStEducation(rs.getString("stEducation"));
                staff.setStStartTime(rs.getString("stStartTime"));
                staffList.add(staff);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return staffList;
    }

    @Override
    public List<Staff> getAllStaffDao() {
        List<Staff> staffList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from staff";

        try {
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Staff staff = new Staff();
                staff.setStId(rs.getInt("stId"));
                staff.setStName(rs.getString("stName"));
                staffList.add(staff);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return staffList;
    }

    @Override
    public boolean deleteStaffByIdDao(int stId) {
        String sql = "delete from staff where stId=?";
        Object[] objects = {stId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertStaffDao(Staff staff) {
        String sql = "insert into staff(stName,stAge,stSex,stBirth,stIDCard,stNation,stMarriage,stPolitical,stNative," +
                "stTel,stAddress,stAfterSchool,stMajor,stEducation,stStartTime,dId,stWork,stRegister,stTime," +
                "stDesp) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Object[] objects = {staff.getStName(), staff.getStAge(), staff.getStSex(), staff.getStBirth(),
                staff.getStIDCard(), staff.getStNation(), staff.getStMarriage(), staff.getStPolitical(), staff.getStNative(),
                staff.getStTel(), staff.getStAddress(), staff.getStAfterSchool(), staff.getStMajor(), staff.getStEducation(),
                staff.getStStartTime(), staff.getDepartment().getdId(), staff.getStWork(), staff.getStRegister(), staff.getStTime(),
                staff.getStDesp()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean updateStaffDao(Staff staff) {
        String sql = "update staff set stName=?,stAge=?,stSex=?,stBirth=?,stIDCard=?,stNation=?,stMarriage=?," +
                "stPolitical=?,stNative=?,stTel=?,stAddress=?,stAfterSchool=?,stMajor=?,stEducation=?,stStartTime=?," +
                "dId=?,stWork=?,stRegister=?,stTime=?,stDesp=? where stId=?";
        Object[] objects = {staff.getStName(), staff.getStAge(), staff.getStSex(), staff.getStBirth(), staff.getStIDCard(),
                staff.getStNation(), staff.getStMarriage(), staff.getStPolitical(), staff.getStNative(), staff.getStTel(),
                staff.getStAddress(), staff.getStAfterSchool(), staff.getStMajor(), staff.getStEducation(),
                staff.getStStartTime(), staff.getDepartment().getdId(), staff.getStWork(), staff.getStRegister(),
                staff.getStTime(),
                staff.getStDesp(), staff.getStId()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Staff getStaffByIdDao(int stId) {
        Staff staff = new Staff();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            pst = conn.prepareStatement("select * from staff where stId=?");
            pst.setInt(1, stId);
            rs = pst.executeQuery();
            while (rs.next()) {
                staff.setStId(rs.getInt("stId"));
                staff.setStName(rs.getString("stName"));
                staff.setStAge(rs.getString("stAge"));
                staff.setStSex(rs.getString("stSex"));
                staff.setStBirth(rs.getString("stBirth"));
                staff.setStIDCard(rs.getString("stIDCard"));
                staff.setStNation(rs.getString("stNation"));
                staff.setStMarriage(rs.getString("stMarriage"));
                staff.setStPolitical(rs.getString("stPolitical"));
                staff.setStNative(rs.getString("stNative"));
                staff.setStTel(rs.getString("stTel"));
                staff.setStAddress(rs.getString("stAddress"));
                staff.setStAfterSchool(rs.getString("stAfterSchool"));
                staff.setStMajor(rs.getString("stMajor"));
                staff.setStEducation(rs.getString("stEducation"));
                staff.setStStartTime(rs.getString("stStartTime"));
                staff.setDepartment(getDepartmentById(rs.getInt("dId")));
                staff.setStWork(rs.getString("stWork"));
                staff.setStRegister(rs.getString("stRegister"));
                staff.setStTime(rs.getString("stTime"));
                staff.setStDesp(rs.getString("stDesp"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return staff;
    }

    public Department getDepartmentById(int dId) {
        Department department = new Department();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from department where dId=?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, dId);
            rs = pst.executeQuery();

            if (rs.next()) {
                department.setdId(dId);
                department.setdName(rs.getString("dName"));
                department.setdTime(rs.getString("dTime"));
                department.setdDesp(rs.getString("dDesp"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return department;
    }
}
