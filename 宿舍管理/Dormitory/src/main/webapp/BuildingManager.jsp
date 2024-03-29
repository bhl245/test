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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">楼宇管理</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="/cascadeBuilding.form">
                                            <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="28%" height="30" style="padding-left:20px;"> 功能导航： <a
                                                            href="BuildingAdd.jsp">添加楼宇</a></td>
                                                    <td width="72%">名称：
                                                        <input name="SearchKey" type="text" class="text1" id="SearchKey">
                                                        <input type="submit" name="button" id="button" value="点击查询"></td>
                                                </tr>
                                            </table>
                                        </form>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr align="center" class="t1">
                                                <td height="25" bgcolor="#D5E4F4"><strong>名称</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>简介</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                                            </tr>
                                            <c:forEach items="${buildingList}" var="building">
                                                <tr align="center">
                                                    <td height="25" align="center">${building.buildingName}</td>
                                                    <td>${building.buildingIntroduction}</td>
                                                    <td align="center">
                                                        <a href="TBManager.action?Building_ID=${Building_ID}">管理员</a>
                                                        <a href="/findBuilding.form?buildingId=${building.buildingId}">修改</a>
                                                        <a href="/deleteBuilding.form?buildingId=${building.buildingId}"
                                                           onClick="return confirm('确定要删除该楼宇吗？')">删除</a>
                                                    </td>
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
