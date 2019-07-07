<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>用户查询</title>
    <link href="../CSS/managerMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* ---判断是否删除用户--- */
        function isdel(delname) {
            if (!confirm("确认要删除账号名为'" + delname + "'的账号吗？")) {
                window.event.returnValue = false;
            }
        }

        /* ----------------- */
        /* ---页面中上部3个按钮的跳转事件--- */
        function itop1clk() {
            window.location = "managerUpd.jsp";
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
        <p><font size="1" color="#81644E"><b>系统管理</b></font><font size="1">﹥</font><font size="1" color="#F00">用户查询</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /显示用户的表格/ -->
        <table id="ctr2mgrsel" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <th>序号</th>
                <th style="width: 200px;">账号</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${adminList }" var="mgrl">
                <tr>
                    <td>${mgrl.aId }</td>
                    <td>${mgrl.aName }</td>
                    <td><a href="../AdminServlet?action=delete&aId=${mgrl.aId }" onclick="isdel('${mgrl.aName }')">删除</a></td>
                </tr>
            </c:forEach>
        </table>
        <!-- /分页的按钮/ -->
        <div id="fenye">
            <a href="../AdminServlet?action=all&pageIndex=1">首页</a>
            <a href="../AdminServlet?action=all&pageIndex=${pageIndex-1}">上一页</a>
            ${pageIndex}/${totalPage}
            <a href="../AdminServlet?action=all&pageIndex=${pageIndex+1}">下一页</a>
            <a href="../AdminServlet?action=all&pageIndex=${totalPage}">尾页</a><br><br>
            <a href="managerAdd.jsp"><font size="1">添加管理员</font></a>
        </div>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
