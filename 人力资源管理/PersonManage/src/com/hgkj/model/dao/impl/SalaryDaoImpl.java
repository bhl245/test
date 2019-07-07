package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.SalaryDao;
import com.hgkj.model.entity.Salary;
import com.hgkj.model.entity.Staff;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 14:44
 * @Version 1.8
 */
public class SalaryDaoImpl implements SalaryDao {
    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from salary";

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
    public List<Salary> getAllSalaryDao(int pageIndex, int pageSize) {
        List<Salary> salaryList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from salary limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Salary salary = new Salary();
                salary.setSaId(rs.getInt("saId"));
                salary.setStaff(getStaffById(rs.getInt("stId")));
                salary.setSaMonth(rs.getString("saMonth"));
                salary.setSaBasic(rs.getInt("saBasic"));
                salary.setSaOvertime(rs.getInt("saOvertime"));
                salary.setSaWorking(rs.getInt("saWorking"));
                salary.setSaAttendance(rs.getInt("saAttendance"));
                salary.setSaAbsenteeism(rs.getInt("saAbsenteeism"));
                salary.setSaInsurance(rs.getInt("saInsurance"));
                salaryList.add(salary);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return salaryList;
    }

    @Override
    public boolean deleteSalaryByIdDao(int saId) {
        String sql = "delete from salary where saId=?";
        Object[] objects = {saId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertSalaryDao(Salary salary) {
        String sql = "insert into salary(stId,saMonth,saBasic,saOvertime,saWorking,saAttendance,saAbsenteeism," +
                "saInsurance) values (?,?,?,?,?,?,?,?)";
        Object[] objects = {salary.getStaff().getStId(), salary.getSaMonth(), salary.getSaBasic(), salary.getSaOvertime(),
                salary.getSaWorking(), salary.getSaAttendance(), salary.getSaAbsenteeism(), salary.getSaInsurance()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Salary getSalaryByIdDao(int saId) {
        Salary salary = new Salary();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            pst = conn.prepareStatement("select * from salary where saId=?");
            pst.setInt(1, saId);
            rs = pst.executeQuery();
            while (rs.next()) {
                salary.setSaId(rs.getInt("saId"));
                salary.setStaff(getStaffById(rs.getInt("stId")));
                salary.setSaMonth(rs.getString("saMonth"));
                salary.setSaBasic(rs.getInt("saBasic"));
                salary.setSaOvertime(rs.getInt("saOvertime"));
                salary.setSaWorking(rs.getInt("saWorking"));
                salary.setSaAttendance(rs.getInt("saAttendance"));
                salary.setSaAbsenteeism(rs.getInt("saAbsenteeism"));
                salary.setSaInsurance(rs.getInt("saInsurance"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return salary;
    }

    public Staff getStaffById(int stId) {
        Staff staff = new Staff();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from staff where stId=?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, stId);
            rs = pst.executeQuery();

            if (rs.next()) {
                staff.setStId(stId);
                staff.setStName(rs.getString("stName"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return staff;
    }
}
