<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>校园宿舍管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
</head>
<script language="JavaScript">
    function mycheck() {
        if (isNull(form1.Teacher_Username.value)) {
            alert("请输入用户名！");
            return false;
        }
        if (document.form1.Teacher_Password.value != document.form1.Teacher_Password2.value) {
            alert("您两次输入的新密码不一致！请重新输入！");
            return false;
        }
        if (isNull(form1.Teacher_Name.value)) {
            alert("请输入姓名！");
            return false;
        }
        if (isNull(form1.Teacher_Sex.value)) {
            alert("请选择性别！");
            return false;
        }
        if (isNull(form1.Teacher_Tel.value)) {
            alert("请输入联系电话！");
            return false;
        }
    }

    function isNull(str) {
        if (str == "") return true;
        var regu = "^[ ]+$";
        var re = new RegExp(regu);
        return re.test(str);
    }


</script>
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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">修改楼宇管理员</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="/updateTeacher.form"
                                              onSubmit="return mycheck()">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="33%" height="30" align="right">&nbsp;</td>
                                                    <td width="67%"><input name="teacherId" type="hidden" class="noshow"
                                                                           id="Teacher_ID" value="${teacher.teacherId}"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>用户名：</td>
                                                    <td><input name="teacherUsername" type="text" class="text2"
                                                               id="Teacher_Username" value="${teacher.teacherUsername}"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right">密码：</td>
                                                    <td><input name="teacherPassword" type="password" class="text2"
                                                               id="Teacher_Password" value="${teacher.teacherPassword}">
                                                        <%--<span style="color:#F60">不修改则不填写</span></td>--%>
                                                </tr>
                                                <%--<tr>--%>
                                                    <%--<td height="30" align="right">重复密码：</td>--%>
                                                    <%--<td><input name="Teacher_Password2" type="password" class="text2"--%>
                                                               <%--id="Teacher_Password2">--%>
                                                        <%--<span style="color:#F60">不修改则不填写</span></td>--%>
                                                <%--</tr>--%>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>姓名：</td>
                                                    <td><input name="teacherName" type="text" class="text2" id="Teacher_Name"
                                                               value="${teacher.teacherName}"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>性别：</td>
                                                    <td><select name="teacherSex" id="Teacher_Sex">
                                                        <option value="">请选择</option>
                                                        <option value="男"
                                                                <c:if test="${teacher.teacherSex eq '男'}">selected="selected"</c:if>>
                                                            男
                                                        </option>
                                                        <option value="女"
                                                                <c:if test="${teacher.teacherSex eq '女'}">selected="selected"</c:if>>
                                                            女
                                                        </option>
                                                    </select></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>联系电话：</td>
                                                    <td><input name="teacherTel" type="text" class="text2" id="Teacher_Tel"
                                                               value="${teacher.teacherTel}"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">&nbsp;</td>
                                                    <td><input type="submit" name="button" id="button" value="修改楼宇管理员">
                                                        &nbsp;&nbsp;
                                                        <input type="button" name="button2" id="button2" value="返回上页"
                                                               onClick="javascript:history.back(-1);"></td>
                                                </tr>
                                            </table>
                                        </form>
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
