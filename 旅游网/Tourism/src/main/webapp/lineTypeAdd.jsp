<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/6/25
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="ht/images/admin/images/skin.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK"/>
    <style type="text/css">
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #EEF2FB;
        }
    </style>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="17" valign="top" background="ht/images/admin/images/mail_leftbg.gif"><img
                src="ht/images/admin/images/left-top-right.gif" width="17" height="29"/></td>
        <td valign="top" background="ht/images/admin/images/content-bg.gif">
            <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
                <tr>
                    <td height="31">
                        <div class="titlebt">查看类型</div>
                    </td>
                </tr>
            </table>
        </td>
        <td width="16" valign="top" background="images/mail_rightbg.gif">
            <img src="ht/images/admin/images/nav-right-bg.gif" width="16" height="29"/></td>
    </tr>
    <tr>
        <td valign="middle" background="ht/images/admin/images/mail_leftbg.gif">&nbsp;</td>
        <td valign="top" bgcolor="#F7F8F9">
            <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2" valign="top">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td valign="top">&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <form action="insertLineType.action" method="post" enctype="multipart/form-data">
                            <p>线路类型编号&nbsp;&nbsp;<input type="text" name="lineType.lineTypeId"></p>
                            <p>线路类型名称&nbsp;&nbsp;<input type="text" name="lineType.lineTypeName"></p>
                            <p>添加线路类型图标&nbsp;&nbsp;<input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></p>
                            <p><input type="submit" value="添加"></p>
                        </form>
                    </td>
                </tr>

                <tr>
                    <td height="40" colspan="4">
                        <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td background="ht/images/admin/images/mail_rightbg.gif">&nbsp;</td>
    </tr>
    <tr>
        <td valign="bottom" background="ht/images/admin/images/mail_leftbg.gif"><img src="ht/images/admin/images/buttom_left2.gif"
                                                                                     width="17" height="17"/></td>
        <td background="ht/images/admin/images/buttom_bgs.gif"><img src="ht/images/admin/images/buttom_bgs.gif" width="17" height="17">
        </td>
        <td valign="bottom" background="ht/images/admin/images/mail_rightbg.gif"><img src="ht/images/admin/images/buttom_right2.gif"
                                                                                      width="16" height="17"/></td>
    </tr>
</table>
</body>
</html>
