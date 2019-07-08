<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>途乐行旅游网后台管理系统</title>
    <meta http-equiv=Content-Type content=text/html;charset=gb2312>
</head>
<frameset rows="64,*" frameborder="NO" border="0" framespacing="0">
    <frame src="admintop.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0"
           marginheight="0" target="main"/>
    <frameset cols="200,*" rows="560,*" id="frame">
        <frame src="left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0"
               scrolling="no" target="main"/>
        <frame src="_right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self"/>
    </frameset>
</frameset>
</html>
