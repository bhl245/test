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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">宿舍管理</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="">
                                            <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="22%" height="30" style="padding-left:20px;"> 功能导航： <a
                                                            href="DomitoryAdd.jsp">添加宿舍</a></td>
                                                    <td width="78%">查询：
                                                        <select name="building.buildingId" id="Domitory_BuildingID">
                                                            <option value="">全部楼宇</option>
                                                            <c:forEach items="${buildingList}" var="building">
                                                                <option value="${building.buildingId}">${building.buildingName}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <select name="SearchRow" id="SearchRow">
                                                            <option value="domitoryName">寝室号</option>
                                                            <option value="domitoryTel">电话</option>
                                                        </select>
                                                        <input name="SearchKey" type="text" class="text1" id="SearchKey">
                                                        <input type="submit" name="button" id="button" value="点击查询"></td>
                                                </tr>
                                            </table>
                                        </form>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr align="center" class="t1">
                                                <td height="25" bgcolor="#D5E4F4"><strong>楼宇</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>寝室号</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>寝室类型</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>人数</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>电话</strong></td>
                                                <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                                            </tr>
                                            <c:forEach items="${domitoryList}" var="domitory">
                                                <tr align="center">
                                                    <td height="25" align="center">${domitory.building.buildingName}</td>
                                                    <td>${domitory.domitoryName}</td>
                                                    <td>${domitory.domitoryType}</td>
                                                    <td align="center">${domitory.domitoryNumber}</td>
                                                    <td align="center">${domitory.domitoryTel}</td>
                                                    <td align="center">
                                                        <a href="/findDomitory.form?domitoryId=${domitory.domitoryId}">修改</a>
                                                        <a href="/deleteDomitory.form?domitoryId=${domitory.domitoryId}"
                                                           onClick="return confirm('确定要删除该宿舍吗？')">删除</a></td>
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
