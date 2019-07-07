<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>培训查询</title>
    <link href="../CSS/trainMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* ---判断是否删除培训信息--- */
        function isdel(deltitle) {
            if (!confirm("确认要删除标题为：" + deltitle + "的培训信息吗？")) {
                window.event.returnValue = false;
            }
        }

        /* -------------------- */
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
        <p><font size="1" color="#81644E"><b>培训管理</b></font><font size="1">﹥</font><font size="1" color="#F00">培训查询</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /显示培训信息的表格/ -->
        <table id="ctr2tnsel" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <th>编号</th>
                <th>培训人</th>
                <th>培训主题</th>
                <th>培训时间</th>
                <th>培训地点</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${trainList }" var="tnl">
                <tr>
                    <td>${tnl.tId }</td>
                    <td>${tnl.tPerson }</td>
                    <td>${tnl.tTheme }</td>
                    <td>${tnl.tTime }</td>
                    <td>${tnl.tPlace }</td>
                    <td>
                        <a href="../TrainServlet?action=find&tId=${tnl.tId }">详细查询</a>
                        <a href="../TrainServlet?action=delete&tId=${tnl.tId }" onclick="isdel('${tnl.tTheme }')">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <!-- /分页的按钮/ -->
        <div id="fenye">
            <a href="../TrainServlet?action=all&pageIndex=1">首页</a>
            <a href="../TrainServlet?action=all&pageIndex=${pageIndex-1}">上一页</a>
            ${pageIndex}/${totalPage}
            <a href="../TrainServlet?action=all&pageIndex=${pageIndex+1}">下一页</a>
            <a href="../TrainServlet?action=all&pageIndex=${totalPage}">尾页</a><br><br>
            <a href="trainAdd.jsp"><font size="1">添加培训信息</font></a>
        </div>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
