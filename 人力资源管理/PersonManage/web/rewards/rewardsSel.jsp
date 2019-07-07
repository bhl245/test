<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>奖惩详细信息</title>
    <link href="../CSS/rewardsMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* ---返回到奖惩查询页面--- */
        function rewSelToMgr() {
            window.location = "../PunishServlet?action=all";
        }

        /* ------------------ */
        /* ---页面中上部3个按钮的跳转事件--- */
        function itop1clk() {
            window.location = "../admin/managerUpd.jsp";
        }

        function itop2clk() {
            window.location = "../mgrMainPage.jsp";
        }

        function itop3clk() {
            window.location = "../mgrLogin.jsp";
        }

        /* ------------------------ */
    </script>
</head>

<body>
<div id="father">
    <!-- 页面顶部菜单 -->
    <div id="menu">
        <ul>
            <li><a href="../AdminServlet?action=all">&nbsp;</a></li>
            <li><a href="../SalaryServlet?action=all">&nbsp;</a></li>
            <li><a href="../PunishServlet?action=all">&nbsp;</a></li>
            <li><a href="../TrainServlet?action=all">&nbsp;</a></li>
            <li><a href="../RecruitServlet?action=all">&nbsp;</a></li>
            <li><a href="../StaffServlet?action=all">&nbsp;</a></li>
            <li><a href="../DepartmentServlet?action=all">&nbsp;</a></li>
        </ul>
    </div>
    <!-- 页面顶部菜单结束 -->
    <!-- 中上部的logo和三个按钮 -->
    <img alt="img_logo" src="../Images/top2.jpg" width="801px" height="107px">
    <div id="useropt">
        <p id="systime">系统时间：${date }</p>
        <input type="button" value="" id="itop1" onclick="itop1clk()">
        <input type="button" value="" id="itop2" onclick="itop2clk()">
        <input type="button" value="" id="itop3" onclick="itop3clk()">
    </div>
    <!-- 中上部结束 -->
    <!-- 页面中部内容 -->
    <div id="center1">
        <!-- /当前页面指示/ -->
        <p><font size="1" color="#81644E"><b>奖惩管理</b></font><font size="1">﹥</font><font size="1" color="#F00">奖惩详情</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /奖惩信息显示表格/ -->
        <table id="ctr2jcdsel" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <th>奖惩编号：</th>
                <td>${punish.pId }</td>
            </tr>
            <tr>
                <th>奖惩题目：</th>
                <td>${punish.pTheme }</td>
            </tr>
            <tr>
                <th>奖惩类型：</th>
                <td>${punish.pType }</td>
            </tr>
            <tr>
                <th>奖惩金额：</th>
                <td>${punish.pMoney }</td>
            </tr>
            <tr>
                <th>奖惩时间：</th>
                <td>${punish.pTime }</td>
            </tr>
            <tr>
                <th>奖惩原因：</th>
                <td>${punish.pDesp }</td>
            </tr>
        </table>
        <br>
        <input type="button" value="返回" onclick="rewSelToMgr()">
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>

