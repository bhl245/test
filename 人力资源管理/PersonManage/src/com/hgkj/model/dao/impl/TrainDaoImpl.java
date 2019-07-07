package com.hgkj.model.dao.impl;

import com.hgkj.model.dao.TrainDao;
import com.hgkj.model.entity.Train;

import java.sql.*;
import java.util.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 21:23
 * @Version 1.8
 */
public class TrainDaoImpl implements TrainDao {
    @Override
    public int getTotalPageDao(int pageSize) {
        int totalPage = 0;
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select count(*) from train";

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
    public List<Train> getAllTrainDao(int pageIndex, int pageSize) {
        List<Train> trainList = new ArrayList<>();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "select * from train limit ?,?";

        try {
            pst = conn.prepareStatement(sql);
            pst.setInt(1, (pageIndex - 1) * pageSize);
            pst.setInt(2, pageSize);
            rs = pst.executeQuery();

            while (rs.next()) {
                Train train = new Train();
                train.settId(rs.getInt("tId"));
                train.settPerson(rs.getString("tPerson"));
                train.settTheme(rs.getString("tTheme"));
                train.settTime(rs.getString("tTime"));
                train.settPlace(rs.getString("tPlace"));
                trainList.add(train);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }

        return trainList;
    }

    @Override
    public boolean deleteTrainByIdDao(int tId) {
        String sql = "delete from train where tId=?";
        Object[] objects = {tId};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public boolean insertTrainDao(Train train) {
        String sql = "insert into train(tPerson,tTheme,tPurpose,tTime,tPlace,tParticipant,tDesp) values (?,?,?,?,?,?,?)";
        Object[] objects = {train.gettPerson(), train.gettTheme(), train.gettPurpose(), train.gettTime(), train.gettPlace(),
                train.gettParticipant(), train.gettDesp()};
        return DBManager.executeUpdate(sql, objects);
    }

    @Override
    public Train getTrainByIdDao(int tId) {
        Train train = new Train();
        Connection conn = DBManager.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            pst = conn.prepareStatement("select * from train where tId=?");
            pst.setInt(1, tId);
            rs = pst.executeQuery();
            while (rs.next()) {
                train.settId(rs.getInt("tId"));
                train.settPerson(rs.getString("tPerson"));
                train.settTheme(rs.getString("tTheme"));
                train.settPurpose(rs.getString("tPurPose"));
                train.settTime(rs.getString("tTime"));
                train.settPlace(rs.getString("tPlace"));
                train.settParticipant(rs.getString("tParticipant"));
                train.settDesp(rs.getString("tDesp"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.closeAll(conn, pst, rs);
        }
        return train;
    }
}
