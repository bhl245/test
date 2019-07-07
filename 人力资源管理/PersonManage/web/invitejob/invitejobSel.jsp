<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>应聘人信息详细查询</title>
    <link href="../CSS/invitejobMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* ---返回到招聘查询页面--- */
        function ivtSelToMgr() {
            window.location = "../RecruitServlet?action=all";
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
        <p><font size="1" color="#81644E"><b>招聘管理</b></font><font size="1">﹥</font><font size="1" color="#F00">应聘人详细信息</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /应聘者信息显示表格/ -->
        <table id="ctr2ivtdsel" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <th>姓名：</th>
                <td>${recruit.rName }</td>
                <th>性别：</th>
                <td>${recruit.rSex }</td>
            </tr>
            <tr>
                <th>年龄：</th>
                <td>${recruit.rAge }</td>
                <th>出生日期：</th>
                <td>${recruit.rBirth }</td>
            </tr>
            <tr>
                <th>应聘职位：</th>
                <td>${recruit.rJob }</td>
                <th>所学专业：</th>
                <td>${recruit.rMajor }</td>
            </tr>
            <tr>
                <th>工作经验：</th>
                <td>${recruit.rExperience }</td>
                <th>文化程度：</th>
                <td>${recruit.rEducation }</td>
            </tr>
            <tr>
                <th>联系电话：</th>
                <td>${recruit.rTel }</td>
                <th>毕业学校：</th>
                <td>${recruit.rAfterSchool }</td>
            </tr>
            <tr>
                <th>家庭住址：</th>
                <td>${recruit.rAddress }</td>
                <th>登记时间：</th>
                <td>${recruit.rTime }</td>
            </tr>
            <tr>
                <th>个人简介：</th>
                <td colspan="3">${recruit.rDesp }</td>
            </tr>
        </table>
        <br>
        <input type="button" value="返回" onclick="ivtSelToMgr()">
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
