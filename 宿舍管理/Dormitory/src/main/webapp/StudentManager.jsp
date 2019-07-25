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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生管理</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="/cascadeStudent.form">
                                            <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="28%" height="30" style="padding-left:20px;"> 功能导航： <a
                                                            href="StudentAdd.jsp">添加学生</a></td>
                                                    <td width="72%">查询：
                                                        <select name="State" id="State">
                                                            <option value="入住">入住</option>
                                                            <option value="未入住">未入住</option>
                                                            <option value="迁出">迁出</option>
                                                        </select>
                                                        <select name="SearchRow" id="SearchRow">
                                                            <option value="studentName">姓名</option>
                                                            <option value="studentUsername">用户名</option>
                                                            <option value="studentClass">班级</option>
                                                        </select>
                                                        <input name="SearchKey" type="text" class="text1" id="SearchKey">
                                                        <input type="submit" name="button" id="button" value="点击查询"></td>
                                                </tr>
                                            </table>
                                        </form>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr align="center" class="t1">
                                                <td height="25" bgcolor="#D5E4F4"><strong>用户名</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>姓名</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>性别</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>班级</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>状态</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                                            </tr>
                                            <c:forEach items="${studentList}" var="student">
                                                <tr align="center">
                                                    <td height="25" align="center">${student.studentUsername}</td>
                                                    <td>${student.studentName}</td>
                                                    <td>${student.studentSex}</td>
                                                    <td>${student.studentClass}</td>
                                                    <td align="center">${student.studentState}</td>
                                                    <td align="center">
                                                        <a href="/findStudent.form?studentId=${student.studentId}">修改</a>
                                                        <a href="/deleteStudent.form?studentId=${student.studentId}"
                                                            onClick="return confirm('确定要删除该学生吗？')">删除</a></td>
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
