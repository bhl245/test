<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>校园宿舍管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
</head>
<script language="JavaScript">
    function mycheck() {
        if (isNull(form1.Building_Name.value)) {
            alert("请输入名称！");
            return false;
        }
        if (isNull(form1.Building_Introduction.value)) {
            alert("请输入简介！");
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
                                    <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">修改楼宇</td>
                                </tr>
                                <tr>
                                    <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                                        <form name="form1" method="post" action="/updateBuilding.form"
                                              onSubmit="return mycheck()">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="33%" height="30" align="right">&nbsp;</td>
                                                    <td width="67%"><input name="buildingId" type="hidden" class="noshow"
                                                                           id="Building_ID" value="${building.buildingId}"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>名称：</td>
                                                    <td><input name="buildingName" type="text" class="text2" id="Building_Name"
                                                               value="${building.buildingName}"></td>
                                                </tr>
                                                <tr>
                                                    <td height="30" align="right"><span style="color:red;">*</span>简介：</td>
                                                    <td><textarea name="buildingIntroduction" id="Building_Introduction"
                                                                  cols="45" rows="5">${building.buildingIntroduction}</textarea></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">&nbsp;</td>
                                                    <td><input type="submit" name="button" id="button" value="修改楼宇">
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
