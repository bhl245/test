package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.RecruitDao;
import com.hgkj.model.entity.Recruit;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 10:35
 * @Version 1.8
 */
public class RecruitDaoImpl implements RecruitDao {
    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from recruit";

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
    public List<Recruit> getAllRecruitDao(int pageIndex, int pageSize) {
        List<Recruit> recruitList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from recruit limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Recruit recruit = new Recruit();
                recruit.setrId(rs.getInt("rId"));
                recruit.setrName(rs.getString("rName"));
                recruit.setrSex(rs.getString("rSex"));
                recruit.setrJob(rs.getString("rJob"));
                recruit.setrEducation(rs.getString("rEducation"));
                recruit.setrExperience(rs.getString("rExperience"));
                recruitList.add(recruit);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return recruitList;
    }

    @Override
    public boolean deleteRecruitByIdDao(int rId) {
        String sql = "delete from recruit where rId=?";
        Object[] objects = {rId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertRecruitDao(Recruit recruit) {
        String sql = "insert into recruit(rName,rSex,rAge,rBirth,rJob,rMajor,rExperience,rEducation,rTel,rAfterSchool,rAddress," +
                "rTime,rDesp) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Object[] objects = {recruit.getrName(), recruit.getrSex(), recruit.getrAge(), recruit.getrBirth(), recruit.getrJob(),
                recruit.getrMajor(), recruit.getrExperience(), recruit.getrEducation(), recruit.getrTel(),
                recruit.getrAfterSchool(), recruit.getrAddress(), recruit.getrTime(), recruit.getrDesp()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Recruit getRecruitByIdDao(int rId) {
        Recruit recruit = new Recruit();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            pst = conn.prepareStatement("select * from recruit where rId=?");
            pst.setInt(1, rId);
            rs = pst.executeQuery();
            while (rs.next()) {
                recruit.setrName(rs.getString("rName"));
                recruit.setrSex(rs.getString("rSex"));
                recruit.setrAge(rs.getString("rAge"));
                recruit.setrBirth(rs.getString("rBirth"));
                recruit.setrJob(rs.getString("rJob"));
                recruit.setrMajor(rs.getString("rMajor"));
                recruit.setrExperience(rs.getString("rExperience"));
                recruit.setrEducation(rs.getString("rEducation"));
                recruit.setrTel(rs.getString("rTel"));
                recruit.setrAfterSchool(rs.getString("rAfterSchool"));
                recruit.setrAddress(rs.getString("rAddress"));
                recruit.setrTime(rs.getString("rTime"));
                recruit.setrDesp(rs.getString("rDesp"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return recruit;
    }
}
