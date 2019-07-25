<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>校园宿舍管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
</head>
<script language="JavaScript">
    function mycheck() {

        if (isNull(form1.Building_ID.value)) {
            alert("请选择楼宇！");
            return false;
        }
        if (isNull(form1.Domitory_ID.value)) {
            alert("请选择寝室！");
            return false;
        }
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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生入住登记</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="StudentRZSave.action"
                                              onSubmit="return mycheck()">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="33%" height="30" align="right">&nbsp;</td>
                                                    <td width="67%">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>楼宇：</td>
                                                    <td><select name="buildingId" id="Building_ID"
                                                                onChange="javascript:window.location='/allDomitoryByBuilding.form?buildingId='+this.value;">
                                                        <option value="">请选择</option>
                                                        <c:forEach items="${buildingList}" var="building">
                                                            <option value="${building.buildingId}" <c:if
                                                                    test="${buildingId==building.buildingId}">selected="selected"</c:if>
                                                            >${building.buildingName}</option>
                                                        </c:forEach>
                                                    </select></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>寝室：</td>
                                                    <td><select name="domitoryId" id="Domitory_ID">
                                                        <option value="">请选择</option>
                                                        <c:forEach items="${domitoryList}" var="domitory">
                                                            <option value="${domitory.domitoryId}">${domitory.domitoryName}</option>
                                                        </c:forEach>
                                                    </select></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>学生学号：</td>
                                                    <td><label for="Student_Username"></label>
                                                        <input type="text" name="Student_Username" id="Student_Username"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">&nbsp;</td>
                                                    <td><input type="submit" name="button" id="button" value="确定入住"></td>
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
