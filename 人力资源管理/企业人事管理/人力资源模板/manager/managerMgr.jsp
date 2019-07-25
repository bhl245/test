<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>用户查询</title>
    <link href="../CSS/managerMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
	    /* ---判断是否删除用户--- */
		function isdel(delname){
			if(!confirm("确认要删除账号名为'"+delname+"'的账号吗？")){ 
				window.event.returnValue = false; 
			} 
		}
		/* ----------------- */
    	/* ---页面中上部3个按钮的跳转事件--- */
	    function itop1clk(){
			window.location="managerUpd.jsp";
		}
		function itop2clk(){
			window.location="../mgrMainPage.jsp";
		}
		function itop3clk(){
			window.location="mgrExit!mgrExitCK";
		}
		/* ------------------------ */
    </script>
  </head>
  
  <body>
   	<div id="father">
   		<!-- 页面顶部菜单 -->
   		<div id="menu">
   			<ul>
			 <li><a href="mgrShow!mgrShows">&nbsp;</a></li>
			 <li><a href="../pay/ymSelect!ymSlt?ymword=">&nbsp;</a></li>
			 <li><a href="../rewards/rewSelect!jcTypeSlt?jc_type=2">&nbsp;</a></li>
			 <li><a href="../train/tnShow!tnShows">&nbsp;</a></li>
			 <li><a href="../invitejob/issSelect!issSlt?ivt_isstock=2">&nbsp;</a></li>
			 <li><a href="../employee/edSelect!empdptSelect?d_name=empsall">&nbsp;</a></li>
			 <li><a href="../department/dptShow!dptShows">&nbsp;</a></li>
			</ul>
   		</div>
   		<!-- 页面顶部菜单结束 -->
   		<!-- 中上部的logo和三个按钮 -->
   		<img alt="img_logo" src="../Images/top2.jpg" width="801px" height="107px">
   		<div id="useropt">
   			<p id="systime">系统时间：${systime }</p>
   			<input type="button" value="" id="itop1" onclick="itop1clk()">
   			<input type="button" value="" id="itop2" onclick="itop2clk()">
   			<input type="button" value="" id="itop3" onclick="itop3clk()">
   		</div>
   		<!-- 中上部结束 -->
   		<!-- 页面中部内容 -->
   		<div id="center1">
   			<!-- /当前页面指示/ -->
   			<p><font size="1" color="#81644E"><b>系统管理</b></font><font size="1">﹥</font><font size="1" color="#F00">用户查询</font></p>
   		</div>
   		<div id="center2" align="center">
   			<!-- /显示用户的表格/ -->
   			<table id="ctr2mgrsel" border="1" cellpadding="0" cellspacing="0">
   				<tr>
   					<th>序号</th><th style="width: 200px;">账号</th><th>操作</th>
   				</tr>
   				<c:forEach items="${mgrlist }" var="mgrl">
   				<tr>
   					<td>${mgrl.id }</td>
   					<td>${mgrl.account }</td>
   					<td><a href="mgrDel!delMgrs?manager.id=${mgrl.id }" onclick="isdel('${mgrl.account }')">删除</a></td>
   				</tr>
   				</c:forEach>
   			</table>
   			<!-- /分页的按钮/ -->
   			<div id="fenye">
   				<a href="mgrShow!mgrShows?mgrPageIndex=1">首页</a>
				<a href="mgrShow!mgrShows?mgrPageIndex=${mgrPageIndex-1 }">上一页</a>&nbsp;${mgrPageIndex }/${mgrTotalPages }
				<a href="mgrShow!mgrShows?mgrPageIndex=${mgrPageIndex+1 }">下一页</a>
				<a href="mgrShow!mgrShows?mgrPageIndex=${mgrTotalPages }">尾页</a><br><br>
				<a href="managerAdd.jsp"><font size="1">添加管理员</font></a>
   			</div>
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
