<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>校园宿舍管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
</head>
<script language="JavaScript">
    function mycheck() {
        if (isNull(form1.Student_Username.value)) {
            alert("请输入学生学号！");
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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生寝室调换</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="/THbyStudentUsername.form" onSubmit="return mycheck()">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="38%" height="30" align="right">&nbsp;</td>
                                                    <td width="62%">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>请输入要调换寝室学生的学号：
                                                    </td>
                                                    <td><label for="Student_Username"></label>
                                                        <input type="text" name="studentUsername" id="Student_Username"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">&nbsp;</td>
                                                    <td><input type="submit" name="button" id="button" value="确定"></td>
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
