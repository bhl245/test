<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
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

    <script src="webjars/jquery/3.4.0/dist/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                type: "post",
                url: "allLT.action",
                dataType: "json",
                success: function (data) {
                    $(data).each(function () {
                        $("#typeId").append("<option value='" + this.lineTypeId + "'>" + this.lineTypeName + "</option>")
                    });
                }
            });
        });
    </script>
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
                        <form action="insertLine.action" method="post" enctype="multipart/form-data">
                            <table align="center" id="line1">
                                <tr>
                                    <td>线路编号&nbsp;&nbsp;<input type="text" name="line.lineId"></td>
                                    <td>线路名称&nbsp;&nbsp;<input type="text" name="line.lineName"></td>
                                </tr>
                                <tr>
                                    <td>出游天数&nbsp;&nbsp;
                                        <select name="line.days">
                                            <option value="1天">1天</option>
                                            <option value="2天">2天</option>
                                            <option value="3天">3天</option>
                                            <option value="4天">4天</option>
                                            <option value="5天">5天</option>
                                            <option value="6天">6天</option>
                                        </select></td>
                                    <td>线路价格&nbsp;&nbsp;<input type="text" name="line.price"></td>
                                </tr>
                                <tr>
                                    <td>交通工具&nbsp;&nbsp;
                                        <select name="line.vehicle">
                                            <option>==请选择交通工具==</option>
                                            <option value="汽车">汽车</option>
                                            <option value="火车">火车</option>
                                            <option value="飞机">飞机</option>
                                            <option value="轮船">轮船</option>
                                        </select></td>
                                    <td>线路类型&nbsp;&nbsp;
                                        <select id="typeId" name="line.lineType.lineTypeId">
                                            <option>==请选择线路类型==</option>
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
                                                <td><textarea name="line.reason"></textarea></td>
                                                <td><textarea name="line.arrange"></textarea></td>
                                                <td><textarea name="line.introduction"></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>图片1&nbsp;&nbsp;<input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                    <td>图片介绍&nbsp;&nbsp;<input type="text" name="introduction"></td>
                                </tr>
                                <tr>
                                    <td>图片2&nbsp;&nbsp;<input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                    <td>图片介绍&nbsp;&nbsp;<input type="text" name="introduction"></td>
                                </tr>
                                <tr>
                                    <td>图片3&nbsp;&nbsp;<input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                    <td>图片介绍&nbsp;&nbsp;<input type="text" name="introduction"></td>
                                </tr>
                                <tr>
                                    <td>图片4&nbsp;&nbsp;<input type="file" name="file" accept="jpg,jepg,png,bmp,gif"></td>
                                    <td>图片介绍&nbsp;&nbsp;<input type="text" name="introduction"></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" value="添加"></td>
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
