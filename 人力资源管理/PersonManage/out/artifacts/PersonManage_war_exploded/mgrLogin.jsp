<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登录</title>
    <link href="CSS/mgrLogin.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        /* 表单提交前的非空验证 */
        function login() {
            if (document.getElementById("account").value == "" || document.getElementById("password").value == "") {
                alert("用户名和密码不能为空");
                return false;
            } else {
                return true;
            }
        }

        /* 页面加载时，判断用户是否登录失败的弹窗 */
        function msgPrompt() {
            var msg = document.getElementById("msg").value;
            if (msg == "failure") {
                alert("登录失败！用户名或密码错误！");
                window.location = "../mgrLogin.jsp";
            }
        }
    </script>
</head>

<body onload="msgPrompt()">
<div id="father">
    <div id="son1"><!-- 登录的表单 -->
        <form action="AdminServlet?action=login" method="post" onsubmit="return login()">
            <span id="zhspan">帐号：</span><input type="text" name="aName" id="account">
            <span id="mmspan">密码：</span><input type="password" name="aPwd" id="password">
            <input type="submit" value="" id="loginbtn">
        </form>
    </div>
    <!-- 把用户是否登录是失败的信息放入以下隐藏的文本框中 -->
    <input type="text" id="msg" style="display: none;">
</div>
</body>
</html>
