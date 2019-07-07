<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>员工查询</title>
    <link href="../CSS/employeeMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* ---判断是否删除员工--- */
        function isdel(delSerialNumber, delName) {
            if (!confirm("确认要删除编号：" + delSerialNumber + "，姓名：" + delName + "的员工吗？")) {
                window.event.returnValue = false;
            }
        }

        /* ----------------- */
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
        <p id="systime">系统时间：${date}</p>
        <input type="button" value="" id="itop1" onclick="itop1clk()">
        <input type="button" value="" id="itop2" onclick="itop2clk()">
        <input type="button" value="" id="itop3" onclick="itop3clk()">
    </div>
    <!-- 中上部结束 -->
    <!-- 页面中部内容 -->
    <div id="center1">
        <!-- /当前页面指示/ -->
        <p><font size="1" color="#81644E"><b>员工管理</b></font><font size="1">﹥</font><font size="1" color="#F00">员工查询</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /部门名称链接/ -->
        <%--<p id="ctr2_top">--%>
            <%--<span>部门查询</span>--%>
            <%--<c:forEach items="${emp_a_list }" var="ealist">--%>
                <%--<a href="edSelect!empdptSelect?d_name=${ealist }">${ealist }</a>&nbsp;--%>
            <%--</c:forEach>--%>
            <%--<a href="edSelect!empdptSelect?d_name=empsall"><span>员工全部查询</span></a>--%>
        <%--</p>--%>
        <br>
        <!-- /显示员工的表格/ -->
        <table id="ctr2empsel" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <th>员工编号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>部门</th>
                <th>工种</th>
                <th>学历</th>
                <th>参加工作时间</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${staffList }" var="empl">
                <tr>
                    <td>${empl.stId }</td>
                    <td>${empl.stName }</td>
                    <td>${empl.stSex }</td>
                    <td>${empl.department.dName }</td>
                    <td>${empl.stWork }</td>
                    <td>${empl.stEducation }</td>
                    <td>${empl.stStartTime }</td>
                    <td>
                        <a href="../StaffServlet?action=find&stId=${empl.stId }">修改</a>
                        <a href="../StaffServlet?action=delete&stId=${empl.stId }"
                           onclick="isdel('${empl.stId}','${empl.stName }')">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <!-- /分页的按钮/ -->
        <div id="fenye">
            <a href="../StaffServlet?action=all&pageIndex=1">首页</a>
            <a href="../StaffServlet?action=all&pageIndex=${pageIndex-1}">上一页</a>
            ${pageIndex}/${totalPage}
            <a href="../StaffServlet?action=all&pageIndex=${pageIndex+1}">下一页</a>
            <a href="../StaffServlet?action=all&pageIndex=${totalPage}">尾页</a><br><br>
            <a href="employeeAdd.jsp"><font size="1">添加员工信息</font></a>
        </div>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
