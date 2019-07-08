<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理页面</title>
    <script>
        function logout() {
            if (confirm("您确定要退出控制面板吗？"))
                top.location = "adminLogin.jsp";
            return false;
        }
    </script>

    <meta http-equiv=Content-Type content=text/html;charset=gb2312>
    <meta http-equiv="refresh" content="60">

    <base target="main">
    <link href="ht/images/admin/images/skin.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
    <tr>
        <td width="61%" height="64"><img src="ht/images/admin/images/logo.gif" width="262" height="64"></td>
        <td width="39%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="74%" height="38" class="admin_txt">管理员：${cust.custName}&nbsp;<b>管理员您好,感谢登陆使用！</b></td>
                    <td width="22%">
                        <a href="javascript:logout()">
                            <img src="ht/images/admin/images/out.gif" alt="安全退出" width="46" height="20" border="0">
                        </a>
                    </td>
                    <td width="4%">&nbsp;</td>
                </tr>
                <tr>
                    <td height="19" colspan="3">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
