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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生缺寝记录</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="AdminLogList.action" onSubmit="return mycheck()">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="33%" height="30" align="right">&nbsp;</td>
                                                    <td width="67%">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right">楼宇：</td>
                                                    <td><select name="Building_ID" id="Building_ID"
                                                                onChange="javascript:window.location='AdminLog.action?BuildingID='+this.value;">
                                                        <option value="">请选择</option>
                                                        <s:iterator value="buildinglist">
                                                            <option value="${Building_ID}"
                                                                    <s:if test="BuildingID==Building_ID">selected</s:if>>${Building_Name}</option>
                                                        </s:iterator>
                                                    </select></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right">寝室：</td>
                                                    <td><select name="Domitory_ID" id="Domitory_ID">
                                                        <option value="">请选择</option>
                                                        <s:iterator value="domitorylist">
                                                            <option value="${Domitory_ID}">${Domitory_Name}</option>
                                                        </s:iterator>
                                                    </select></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right">学生学号：</td>
                                                    <td><label for="Student_ID"></label>
                                                        <input type="text" name="Student_Username" id="Student_Username"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">&nbsp;</td>
                                                    <td><input type="submit" name="button" id="button" value="开始查询"></td>
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
