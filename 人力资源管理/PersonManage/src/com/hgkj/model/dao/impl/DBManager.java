package com.hgkj.model.dao.impl;

import java.sql.*;

/**
 * @Author: 卞虹霖
 * @Date: 2019/4/10 15:21
 * @Version 1.8
 */
public class DBManager {
    private static String driverName = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/personmanage?characterEncoding=utf-8";
    private static String userName = "root";
    private static String userPwd = "root";

    //连接数据库
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(driverName);
            conn = DriverManager.getConnection(url, userName, userPwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    //释放资源
    public static void closeAll(Connection conn, Statement state, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (state != null) {
                state.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeAll(Connection conn, Statement state) {
        try {
            if (state != null) {
                state.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //增删改
    public static boolean executeUpdate(String sql, Object[] objects) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pst = null;
        try {
            conn = getConnection();
            pst = conn.prepareStatement(sql);

            for (int i = 0; i < objects.length; i++) {
                pst.setObject(i + 1, objects[i]);
            }
            int count = pst.executeUpdate();

            if (count > 0) {
                result = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, pst);
        }

        return result;
    }
}
