package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.DepartmentDao;
import com.hgkj.model.entity.Department;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/7 14:42
 * @Version 1.8
 */
public class DepartmentDaoImpl implements DepartmentDao {
    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from department";

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
    public List<Department> getAllDepartmentDao(int pageIndex, int pageSize) {
        List<Department> departmentList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from department limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Department department = new Department();
                department.setdId(rs.getInt("dId"));
                department.setdName(rs.getString("dName"));
                department.setdTime(rs.getString("dTime"));
                department.setdDesp(rs.getString("dDesp"));
                departmentList.add(department);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return departmentList;
    }

    @Override
    public List<Department> getAllDepartmentDao() {
        List<Department> departmentList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from department";

        try {
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Department department = new Department();
                department.setdId(rs.getInt("dId"));
                department.setdName(rs.getString("dName"));
                department.setdTime(rs.getString("dTime"));
                department.setdDesp(rs.getString("dDesp"));
                departmentList.add(department);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return departmentList;
    }

    @Override
    public boolean deleteDepartmentByIdDao(int dId) {
        String sql = "delete from department where dId=?";
        Object[] objects = {dId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertDepartmentDao(Department department) {
        String sql = "insert into department(dName,dTime,dDesp) values (?,?,?)";
        Object[] objects = {department.getdName(), department.getdTime(), department.getdDesp()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Department getDepartmentByIdDao(int dId) {
        Department department = new Department();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            pst = conn.prepareStatement("select * from department where dId=?");
            pst.setInt(1, dId);
            rs = pst.executeQuery();
            while (rs.next()) {
                department.setdId(rs.getInt("dId"));
                department.setdName(rs.getString("dName"));
                department.setdTime(rs.getString("dTime"));
                department.setdDesp(rs.getString("dDesp"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return department;
    }

    @Override
    public int getDepartmentNumDao(int dId) {
        int count = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from staff where dId=?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, dId);
            rs = pst.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return count;
    }
}
