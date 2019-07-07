package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.PunishDao;
import com.hgkj.model.entity.Punish;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 22:45
 * @Version 1.8
 */
public class PunishDaoImpl implements PunishDao {
    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from punish";

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
    public List<Punish> getAllPunishDao(int pageIndex, int pageSize) {
        List<Punish> punishList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from punish limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Punish punish = new Punish();
                punish.setpId(rs.getInt("pId"));
                punish.setpTheme(rs.getString("pTheme"));
                punish.setpType(rs.getString("pType"));
                punish.setpMoney(rs.getInt("pMoney"));
                punish.setpTime(rs.getString("pTime"));
                punishList.add(punish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return punishList;
    }

    @Override
    public boolean deletePunishByIdDao(int pId) {
        String sql = "delete from punish where pId=?";
        Object[] objects = {pId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertPunishDao(Punish punish) {
        String sql = "insert into punish(pTheme,pType,pMoney,pTime,pDesp) values (?,?,?,?,?)";
        Object[] objects = {punish.getpTheme(), punish.getpType(), punish.getpMoney(), punish.getpTime(), punish.getpDesp()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Punish getPunishByIdDao(int pId) {
        Punish punish = new Punish();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            pst = conn.prepareStatement("select * from punish where pId=?");
            pst.setInt(1, pId);
            rs = pst.executeQuery();
            while (rs.next()) {
                punish.setpId(rs.getInt("pId"));
                punish.setpTheme(rs.getString("pTheme"));
                punish.setpType(rs.getString("pType"));
                punish.setpMoney(rs.getInt("pMoney"));
                punish.setpTime(rs.getString("pTime"));
                punish.setpDesp(rs.getString("pDesp"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return punish;
    }
}
