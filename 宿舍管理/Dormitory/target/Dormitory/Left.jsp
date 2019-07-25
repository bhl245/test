<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="Style/Style.css" rel="stylesheet" type="text/css"/>
<table width="155" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="31" align="center" background="Images/left1.jpg"><strong>系统选项</strong></td>
    </tr>
    <tr>
        <td height="50" align="center" valign="top">
            <table width="150" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                </tr>
                <tr>
                    <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                        <a href="Index.jsp">后台首页</a></td>
                </tr>
                <tr>
                    <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                </tr>
                <%--<%if (session.getAttribute("Type").toString().equals("1")) {%>--%>
                <c:if test="${Type==1}">
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="/allTeacher.form">楼宇管理员管理</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="/allStudent.form">学生管理</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="/allBuilding.form">楼宇管理</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="/allDomitory.form">宿舍管理</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="#">学生入住登记</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="StudentTH.jsp">学生寝室调换</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="StudentQC.jsp">学生迁出登记</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="AdminLog.action">学生缺寝记录</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="/allOut.form">迁出记录</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                </c:if>
                <%--<%}%>--%>
                <%--<%if (session.getAttribute("Type").toString().equals("2")) {%>--%>
                <c:if test="${Type==2}">
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="MyStudent.action">学生管理</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="MyLog.action">学生缺寝记录</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                </c:if>
                <%--<%}%>--%>
                <%--<%if (session.getAttribute("Type").toString().equals("3")) {%>--%>
                <c:if test="${Type==3}">
                    <tr>
                        <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                            <a href="/logGetById.form">我的缺寝记录</a></td>
                    </tr>
                    <tr>
                        <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                    </tr>
                </c:if>
                <%--<%}%>--%>
                <tr>
                    <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                        <a href="PasswordUpdate.jsp">修改密码</a></td>
                </tr>
                <tr>
                    <td height="5" align="center"><img src="Images/ic.gif" width="1" height="1"></td>
                </tr>
                <tr>
                    <td height="30" align="center" background="Images/left2.jpg" style="text-align:left; padding-left:40px;">
                        <a href="/outAction.form" onclick="return confirm('确定要退出系统吗？')">退出系统</a></td>
                </tr>
            </table>
        </td>
    </tr>
</table>