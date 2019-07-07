<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>部门添加</title>
    <link href="../CSS/departmentMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        // /* ---添加部门表单的验证，ajax无刷新添加部门--- */
        function dptaddck() {
            var dName = $("#dName").val();
            var dDesp = $("#dDesp").val();
            if (dName.length == 0) {
                alert("部门名称不能为空");
            } else {
                if (dDesp == "") {
                    dDesp = "无";
                }
            }
        }

        /* --------------------------------- */
        /* ---重置按钮事件--- */
        function resetAll() {
            document.getElementById("dName").value = "";
            document.getElementById("dDesp").value = "无";
        }

        /* -------------- */
        /* ---返回到部门查询页面--- */
        function dptAddToMgr() {
            window.location = "../DepartmentServlet?action=all";
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
        <p><font size="1" color="#81644E"><b>部门管理</b></font><font size="1">﹥</font><font size="1" color="#F00">部门添加</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /部门添加表单以及按钮/ -->
        <form action="../DepartmentServlet?action=insert" method="post">
            <table id="ctr2dptadd" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <th>部门名称：</th>
                    <td><input type="text" name="dName" id="dName"></td>
                </tr>
                <tr>
                    <th>创建时间：</th>
                    <td><input type="text" name="dTime" id="dTime" value="${date}"></td>
                </tr>
                <tr>
                    <th>备注信息：</th>
                    <td><input type="text" name="dDesp" id="dDesp" value="无"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="保存">&nbsp;&nbsp;
            <input type="button" value="重置" onclick="resetAll()">&nbsp;&nbsp;
            <input type="button" value="返回" onclick="dptAddToMgr()">
        </form>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
