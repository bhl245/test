<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>校园宿舍管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table width="900" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="60" bgcolor="#E6F5FF" style="color:#06F; font-size:19px; font-weight:bolder; padding-left:50px;">
                校园宿舍管理系统
            </td>
        </tr>
        <tr>
            <td height="30" background="Images/MenuBg.jpg">&nbsp;</td>
        </tr>
        <tr>
            <td height="500" align="center" valign="top">
                <table width="900" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="191" height="500" align="center" valign="top" background="Images/leftbg.jpg">
                            <%@ include file="Left.jsp" %>
                        </td>
                        <td width="709" align="center" valign="top" bgcolor="#F6F9FE">
                            <table width="709" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">我的缺寝记录</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr align="center" class="t1">
                                                <td height="25" bgcolor="#D5E4F4"><strong>寝室号</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>姓名</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>性别</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>日期</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>备注</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>登记人</strong></td>
                                            </tr>
                                            <c:forEach items="${logList}" var="log">
                                                <tr align="center">
                                                    <td height="25" align="center">${student1.domitory.domitoryName}</td>
                                                    <td>${student1.studentName}</td>
                                                    <td>${student1.studentSex}</td>
                                                    <td>${log.logDate}</td>
                                                    <td>${log.logRemark}</td>
                                                    <td>${log.teacher.teacherName}</td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="35" background="Images/bootBg.jpg">&nbsp;</td>
        </tr>
    </table>

</center>
</body>
</html>
