<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>

    <title>网站管理员登陆</title>
    <style type="text/css">

        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #1D3647;
        }

        em {
            font-weight: bold;
            padding-right: 1em;
            vertical-align: top;
        }

        em.error {
            background: url("ht/images/admin/images/unchecked.gif") no-repeat 0px 0px;
            padding-left: 16px;
        }

        em.success {
            background: url("ht/images/admin/images/checked.gif") no-repeat 0px 0px;
            padding-left: 16px;
        }
    </style>
    <script src="ht/js/jquery-1.3.1.js" type="text/javascript"></script>
    <script src="ht/js/jquery.validate.js" type="text/javascript"></script>

    <link href="ht/images/admin/images/skin.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form action="" id="commentForm" method="post">
    <table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td height="42" valign="top">
                <table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
                    <tr>
                        <td width="1%" height="21">&nbsp;</td>
                        <td height="42">&nbsp;</td>
                        <td width="17%">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
                    <tr>
                        <td width="49%" align="right">
                            <table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
                                <tr>
                                    <td height="138" valign="top">
                                        <table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="149">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="80" align="right" valign="top">
                                                    <img src="ht/images/admin/images/logo.png" width="279" height="68"></td>
                                            </tr>
                                            <tr>
                                                <td height="198" align="right" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="35%">&nbsp;</td>
                                                            <td height="25" colspan="2" class="left_txt"><p>1-便捷管理，数据安全</p></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td height="25" colspan="2" class="left_txt"><p>2-云游四方，首选途乐行</p></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td height="25" colspan="2" class="left_txt"><p>3-旅游信息，一览无余</p></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td width="1%">&nbsp;</td>
                        <td width="50%" valign="bottom">
                            <table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="4%">&nbsp;</td>

                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td height="21">
                                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
                                            <tr>
                                                <td height="164" colspan="2" align="middle">
                                                    <form name="myform" action="ht_index.jsp" method="post">
                                                        <table cellSpacing="0" cellPadding="0" width="100%" border="0"
                                                               height="143" id="table212">
                                                            <tr>
                                                                <td width="13%" height="38" class="top_hui_text"><span
                                                                        class="login_txt">管理员：&nbsp;&nbsp; </span></td>
                                                                <td height="38" colspan="2" class="top_hui_text"><input
                                                                        type="text" name="customer.custAccount" class="editbox4"
                                                                        size="20"></td>
                                                            </tr>
                                                            <tr>
                                                                <td width="13%" height="35" class="top_hui_text"><span
                                                                        class="login_txt"> 密 码： &nbsp;&nbsp; </span></td>
                                                                <td height="35" colspan="2" class="top_hui_text"><input
                                                                        class="editbox4" style="width:148px" type="password"
                                                                        size="20" name="customer.custPassword">
                                                                    <img src="ht/images/admin/images/luck.gif" width="19"
                                                                         height="18"/></td>
                                                            </tr>
                                                            <%--<tr>--%>
                                                                <%--<td width="10%" height="35"><span class="login_txt">验证码：</span>--%>
                                                                <%--</td>--%>
                                                                <%--<td height="35" colspan="2" class="top_hui_text">--%>
                                                                    <%--<input class=wenbenkuang name=verifycode type=text value=""--%>
                                                                           <%--maxLength=4 size=10/>--%>
                                                                    <%--<label> <img id="codePic" src="" id=""--%>
                                                                                 <%--onclick="replaceImage()"/></label>--%>
                                                                    <%--<label><span style="color:#666;font-family:黑体"></span></label>--%>
                                                                <%--</td>--%>


                                                            <%--</tr>--%>
                                                            <tr>
                                                                <td height="35">&nbsp;</td>
                                                                <td width="20%" height="35"><input name="Submit" type="submit"
                                                                                                   class="button" id="Submit"
                                                                                                   value="登 陆"></td>
                                                                <td width="67%" class="top_hui_text"><input name="cs"
                                                                                                            type="button"
                                                                                                            class="button" id="cs"
                                                                                                            value="取 消"
                                                                                                            onClick="showConfirmMsg1()">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="433" height="164" align="right" valign="bottom"><img
                                                        src="ht/images/admin/images/login-wel.gif" width="242" height="138"></td>
                                                <td width="57" align="right" valign="bottom">&nbsp;</td>
                                            </tr>
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
            <td height="20">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
                    <tr>
                        <td align="center"><span class="login-buttom-txt">Copyright &copy; 2014 www.mstf.com</span></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
