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
    <%--<%--%>
    <%--String path = request.getContextPath();--%>
    <%--String localPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServletPath() + path + "/";--%>
    <%--%>--%>
    <%--<base target="<%=localPath%>">--%>
    <title></title>
    <link href="ht/images/admin/images/skin.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk"/>
    <style type="text/css">
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #EEF2FB;
        }

        #line1 tr td {
            width: 450px;
            height: 25px;
        }

        #line2 {
            text-align: center;
        }

        textarea {
            width: 300px;
            height: 150px;
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
                        <form action="updateLine.action" method="post" enctype="multipart/form-data">
                            <table align="center" id="line1">
                                <input type="hidden" name="line.lineId" value="${line1.lineId}">
                                <input type="hidden" name="line.lineName" value="${line1.lineName}">
                                <input type="hidden" name="line.days" value="${line1.days}">
                                <input type="hidden" name="line.price" value="${line1.price}">
                                <input type="hidden" name="line.teamBuy" value="${line1.teamBuy}">
                                <input type="hidden" name="line.teamBuyPrice" value="${line1.teamBuyPrice}">
                                <input type="hidden" name="line.beginTime" value="${line1.beginTime}">
                                <input type="hidden" name="line.endTime" value="${line1.endTime}">
                                <tr>
                                    <td>交通工具&nbsp;&nbsp;
                                        <select name="line.vehicle">
                                            <option value="${line1.vehicle}">${line1.vehicle}</option>
                                            <option value="汽车">汽车</option>
                                            <option value="火车">火车</option>
                                            <option value="飞机">飞机</option>
                                            <option value="轮船">轮船</option>
                                        </select></td>
                                    <td>线路类型&nbsp;&nbsp;
                                        <select name="line.lineType.lineTypeId">
                                            <c:forEach items="${lineTypes}" var="lineTypes">
                                                <option value="${lineTypes.lineTypeId}"
                                                        <c:if test="${line1.lineType.lineTypeId eq lineTypes.lineTypeId}">selected="selected"</c:if>>${lineTypes.lineTypeName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table id="line2">
                                            <tr>
                                                <td>推荐理由</td>
                                                <td>行程安排</td>
                                                <td>线路简介</td>
                                            </tr>
                                            <tr>
                                                <td><textarea name="line.reason">${line1.reason}</textarea></td>
                                                <td><textarea name="line.arrange">${line1.arrange}</textarea></td>
                                                <td><textarea name="line.introduction">${line1.introduction}</textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>简介图片</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table>
                                            <tr>
                                                <c:forEach items="${line1.pictureSet}" var="pt">
                                                    <input type="hidden" value="${pt.pictureId}" name="pictureId">
                                                    <td><img src="${pt.name}" width="297" height="158"></td>
                                                </c:forEach>
                                            </tr>
                                            <tr>
                                                <c:forEach items="${line1.pictureSet}" var="pt">
                                                    <td>图片介绍&nbsp;&nbsp;<input type="text" name="introduction"
                                                                               value="${pt.introduction}"></td>
                                                </c:forEach>
                                            </tr>
                                            <tr>
                                                <td><input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                                <td><input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                                <td><input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                                <td><input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><input type="submit" value="修改"></td>
                                </tr>
                            </table>
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
        <td background="ht/images/admin/images/buttom_bgs.gif"><img src="ht/images/admin/images/buttom_bgs.gif" width="17"
                                                                    height="17">
        </td>
        <td valign="bottom" background="ht/images/admin/images/mail_rightbg.gif"><img
                src="ht/images/admin/images/buttom_right2.gif"
                width="16" height="17"/></td>
    </tr>
</table>
</body>
</html>
