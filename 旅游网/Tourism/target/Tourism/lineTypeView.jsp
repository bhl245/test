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

        #lineType tr td {
            border: 1px solid #cccccc;
            text-align: center;
            width: 200px;
            height: 50px;
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
        <td width="16" valign="top" background="ht/images/mail_rightbg.gif">
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
                        <table align="center" border="1px solid" bordercolor="#cccccc" id="lineType" cellspacing="0"
                               cellpadding="0">
                            <tr bgcolor="#cccccc">
                                <td>类型编号</td>
                                <td>类型名称</td>
                                <td>操作</td>
                            </tr>
                            <c:forEach items="${lineTypeList}" var="lineType">
                                <tr>
                                    <td>${lineType.lineTypeId}</td>
                                    <td>${lineType.lineTypeName}</td>
                                    <td><a href="findLineType.action?lineType.lineTypeId=${lineType.lineTypeId}">修改</a>&nbsp;&nbsp;
                                        <a href="deleteLineType.action?lineType.lineTypeId=${lineType.lineTypeId}">删除</a></td>
                                </tr>
                            </c:forEach>
                        </table>
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
