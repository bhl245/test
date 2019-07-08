<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页面</title>
    <link href="qt/css/layout.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="qt/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="qt/js/login.js"></script>
    <script src="webjars/jquery/3.4.0/dist/jquery.js"></script>
    <script>
        function check() {
            var account = $("#custAccount").val();
            var password = $("#custPassword").val();
            if (account == "" && password == "") {
                alert("用户名不能为空！");
                return false;
            } else if (password == "") {
                alert("密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>

<body>
<!--头部-->
<div id="top-cont">
    <div id="top-min">
        <div id="min-left"></div>
        <div id="min-right"></div>
    </div>
</div>
<div id="menu">
    <div id="menu-m">
        <ul>
            <li><a href="index.jsp">首页</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="type.jsp">境内游</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="#">境外游</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="#">热门游</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="allGroup1.action">团购</a></li>
            <li><a href="cart.jsp"><img src="qt/images/che.jpg" width="176" height="42"/></a></li>
        </ul>
    </div>
</div>
<!--广告位图片-->


<!--登录版块-->
<form action="customerLogin.action" method="post" onsubmit="return check()">
    <div id="login-bg">
        <div id="login-m">
            <ul>
                <li>登录名
                    <input name="customer.custAccount" type="text" class="box" id="custAccount" size="33"/>
                </li>
                <li>密&nbsp;&nbsp;&nbsp;码
                    <input name="customer.custPassword" type="password" class="box" id="custPassword" size="33"/>
                </li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="checkbox" type="checkbox" id="checkbox" checked="checked"/>
                    30天内自动登录
                </li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="button" type="submit" id="button" value="提交" src="images/login-b.jpg"/>
                </li>
            </ul>
        </div>
    </div>
</form>
<!--底部-->
<div id="foot">
    <div id="foot-t"><p>许可证编号：WE125482154 鄂ICP备125478966</p>
        <p><a href="#">隐私保护</a> | <a href="#">诚聘英才</a> | <a href="#">关于我们</a> | <a href="#">网站地图</a> | <a href="#">友情链接</a> | <a
                href="#">商务合作</a></p>
    </div>
</div>
</body>
</html>
