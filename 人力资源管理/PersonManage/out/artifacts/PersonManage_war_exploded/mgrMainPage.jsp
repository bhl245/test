<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>用户主页</title>
    <link href="CSS/mgrMainPage.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* ---页面中部六个按钮的跳转事件--- */
        function btnAddPay() {
            window.location = "pay/payAdd.jsp";
        }

        function btnAddRew() {
            window.location = "rewards/rewardsAdd.jsp";
        }

        function btnAddTn() {
            window.location = "train/trainAdd.jsp";
        }

        function btnAddIvt() {
            window.location = "invitejob/invitejobAdd.jsp";
        }

        function btnAddEmp() {
            window.location = "employee/employeeAdd.jsp";
        }

        function btnAddDpt() {
            window.location = "department/departmentAdd.jsp";
        }

        /* ------------------------ */
        /* ---页面中上部3个按钮的跳转事件--- */
        function itop1clk() {
            window.location = "admin/managerUpd.jsp";
        }

        function itop2clk() {
            window.location = "mgrMainPage.jsp";
        }

        function itop3clk() {
            window.location = "mgrLogin.jsp";
        }

        /* ------------------------ */
    </script>
</head>

<body>
<div id="father">
    <!-- 页面顶部菜单 -->
    <div id="menu">
        <ul>
            <li><a href="AdminServlet?action=all">&nbsp;</a></li>
            <li><a href="SalaryServlet?action=all">&nbsp;</a></li>
            <li><a href="PunishServlet?action=all">&nbsp;</a></li>
            <li><a href="TrainServlet?action=all">&nbsp;</a></li>
            <li><a href="RecruitServlet?action=all">&nbsp;</a></li>
            <li><a href="StaffServlet?action=all">&nbsp;</a></li>
            <li><a href="DepartmentServlet?action=all">&nbsp;</a></li>
        </ul>
    </div>
    <!-- 页面顶部菜单结束 -->
    <!-- 中上部的logo和三个按钮 -->
    <img alt="img_logo" src="Images/top2.jpg" width="801px" height="107px">
    <div id="useropt">
        <p id="systime">系统时间：${date}</p>
        <input type="button" value="" id="itop1" onclick="itop1clk()">
        <input type="button" value="" id="itop2" onclick="itop2clk()">
        <input type="button" value="" id="itop3" onclick="itop3clk()">
    </div>
    <!-- 中上部结束 -->
    <!-- 页面中部6个按钮 -->
    <div id="center1">
        <!-- /当前页面指示/ -->
        <p><font size="1" color="#F00">首页面</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /六个按钮的表格/ -->
        <table width="640" height="350" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td><input type="image" src="Images/addEmployee.gif" value="imgAddEly" onclick="btnAddEmp()"></td>
                <td><input type="image" src="Images/constituteTrain.gif" value="imgCsTa" onclick="btnAddTn()"></td>
            </tr>
            <tr align="center">
                <td><input type="image" src="Images/addInvite.gif" value="imgAddIvt" onclick="btnAddIvt()"></td>
                <td><input type="image" src="Images/constituteDeal.gif" value="imgStDe" onclick="btnAddRew()"></td>
            </tr>
            <tr align="center">
                <td><input type="image" src="Images/addDepartment.gif" value="imgAddDpt" onclick="btnAddDpt()"></td>
                <td><input type="image" src="Images/constituteCompensation.gif" value="imgStCm" onclick="btnAddPay()"></td>
            </tr>
        </table>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
