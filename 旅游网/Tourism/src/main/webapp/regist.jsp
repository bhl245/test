<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新用户注册</title>
    <style type="text/css">
        .txtInit {
            border: 1px #cecece solid;
        }

        .txtFocus {
            border: 1px solid #009;
        }

        .spanInit {
            width: 300px;
            height: 22px;
            display: block;
            float: right;
            background-repeat: no-repeat;
            background-position: left;
        }

        /*邮箱输入正确，设置打勾的背景图片*/
        .spanBlurOk {

            background-image: url(qt/images/right.jpg);
        }
    </style>
    <link href="qt/css/layout.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="qt/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="qt/js/regist.js"></script>
    <script src="webjars/jquery/3.4.0/dist/jquery.js"></script>
    <script>

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


<!--注册版块-->
<div id="reg">

    <div id="reg-top">&nbsp;&nbsp;&nbsp;&nbsp;会员注册</div>
    <div id="reg-mleft">
        <form action="insertCustomer.action" method="post" onsubmit="return check()">
            <ul>
                <li class="m">用户帐号</li>
                <li class="r"><input name="customer.custAccount" type="text" class="box txtInit" id="txtNo"/>
                    <span id='prompt_no' class="spanInit"></span>
                </li>
                <li class="m">设置密码</li>
                <li class="r"><input name="customer.custPassword" type="password" class="box txtInit" id="txtPwd"/>
                    <span id='prompt_pwd' class="spanInit"></span></li>
                <li class="m">确认密码</li>
                <li class="r"><input name="custPassword" type="password" class="box txtInit" id="txtConfirmPwd"/>
                    <span id='prompt_confirmpwd' class="spanInit"></span></li>
                <li class="m">用户姓名</li>
                <li class="r"><input name="customer.custName" type="text" class="box txtInit" id="txtName"/>
                    <span id='prompt_name' class="spanInit"></span></li>
                <li class="m">身份证号</li>
                <li class="r"><input name="customer.custIdCard" type="text" class="box txtInit" id="txtId"/>
                    <span id='prompt_id' class="spanInit"></span></li>
                <li class="m">性 别</li>
                <li class="r">
                    <input type="radio" name="customer.custSex"  id="radio" value="男" checked="checked"/>男
                    <input type="radio" name="customer.custSex" id="radio2" value="女"/>女
                </li>
                <li class="m">手机号码</li>
                <li class="r"><input name="customer.custTel" type="text" class="box txtInit" id="txtPhone"/>
                    <span id='prompt_phone' class="spanInit"></span></li>
                <li class="m"></li>
                <li class="r">
                    <input name="button" type="image" id="button" value="提交" src="qt/images/but2.jpg"/>
                </li>
                <li class="m"></li>
                <li class="r">
                    <input name="checkbox" type="checkbox" id="checkbox" checked="checked"/>
                    《途乐行旅游网会员服务条款》 <img src="qt/images/jt.jpg" width="13" height="12"/></li>
            </ul>
        </form>
    </div>

    <div id="reg-right">
        <div><img src="qt/images/kf.jpg" width="230" height="150"/></div>
        <div id="kf2"><a href="login.jsp">已有账户，请点击登录</a></div>
    </div>
</div>

<!--底部-->
<div id="foot">
    <div id="foot-t">
        <p>许可证编号：WE125482154 鄂ICP备125478966</p>
        <p><a href="#">隐私保护</a> | <a href="#">诚聘英才</a> | <a href="#">关于我们</a> | <a href="#">网站地图</a> | <a href="#">友情链接</a> | <a
                href="#">商务合作</a></p>
    </div>
</div>
</body>
</html>
