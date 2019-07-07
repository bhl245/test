package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.AdminDao;
import com.hgkj.model.entity.Admin;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 22:01
 * @Version 1.8
 */
public class AdminDaoImpl implements AdminDao {
    @Override
    public boolean AdminLoginDao(Admin admin) {
        boolean result = false;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from admin where aName=? and aPwd=?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, admin.getaName());
            pst.setString(2, admin.getaPwd());
            rs = pst.executeQuery();

            if (rs.next()) {
                if (rs.getInt(1) > 0) {
                    result = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return result;
    }

    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from admin";

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
    public List<Admin> getAllAdminDao(int pageIndex, int pageSize) {
        List<Admin> adminList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from admin limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Admin admin = new Admin();
                admin.setaId(rs.getInt("aId"));
                admin.setaName(rs.getString("aName"));
                admin.setaPwd(rs.getString("aPwd"));
                adminList.add(admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return adminList;
    }

    @Override
    public boolean deleteAdminByIdDao(int aId) {
        String sql = "delete from admin where aId=?";
        Object[] objects = {aId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertAdminDao(Admin admin) {
        String sql = "insert into admin(aName,aPwd) value (?,?)";
        Object[] objects = {admin.getaName(), admin.getaPwd()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean updateAdminDao(Admin admin) {
        String sql = "update admin set aPwd=? where aId=?";
        Object[] objects = {admin.getaPwd(), admin.getaId()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Admin getAdminByIdDao(int aId) {
        Admin admin = new Admin();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from admin where aId=?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, aId);
            rs = pst.executeQuery();

            while (rs.next()) {
                admin.setaId(rs.getInt("aId"));
                admin.setaName(rs.getString("aName"));
                admin.setaPwd(rs.getString("aPwd"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return admin;
    }

    @Override
    public Admin getAdminByNameDao(String aName) {
        Admin admin = new Admin();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from admin where aName=?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, aName);
            rs = pst.executeQuery();

            while (rs.next()) {
                admin.setaId(rs.getInt("aId"));
                admin.setaName(rs.getString("aName"));
                admin.setaPwd(rs.getString("aPwd"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return admin;
    }
}
