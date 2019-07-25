<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>薪资查询</title>
    <link href="../CSS/payMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
	    /* ---判断是否删除薪资信息--- */
		function isdel(delName,delDate){
			if(!confirm("确认要删除员工："+delName+"，月份："+delDate+"的薪资信息吗？")){ 
				window.event.returnValue = false; 
			} 
		}
		/* -------------------- */
    	/* ---按年月查--- */
    	function ymslt(){
    		var ymword=document.getElementById("ymword").value;
    		window.location="ymSelect!ymSlt?ymword="+ymword;
    	}
    	/* ------------ */
    	/* ---按员工查--- */
    	function emslt(){
    		var emword=document.getElementById("emword").value;
    		window.location="emSelect!emSlt?emword="+emword;
    	}
    	/* ---年月员工同查--- */
    	function ymemslt(){
    		var ymword=document.getElementById("ymword").value;
    		var emword=document.getElementById("emword").value;
    		window.location="ymemSelect!ymemSlt?emword="+emword+"&ymword="+ymword;
    	}
    	/* -------------- */
    	/* ---页面中上部3个按钮的跳转事件--- */
	    function itop1clk(){
			window.location="../manager/managerUpd.jsp";
		}
		function itop2clk(){
			window.location="../mgrMainPage.jsp";
		}
		function itop3clk(){
			window.location="../manager/mgrExit!mgrExitCK";
		}
		/* ------------------------ */
    </script>
  </head>
  
  <body>
   	<div id="father">
   		<!-- 页面顶部菜单 -->
   		<div id="menu">
   			<ul>
			 <li><a href="../manager/mgrShow!mgrShows">&nbsp;</a></li>
			 <li><a href="ymSelect!ymSlt?ymword=">&nbsp;</a></li>
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
   			<p><font size="1" color="#81644E"><b>薪资管理</b></font><font size="1">﹥</font><font size="1" color="#F00">薪资查询</font></p>
   		</div>
   		<div id="center2" align="center">
   			<!-- /查询用的文本框与按钮/ -->
   			<p id="ctr2_top">
	   			<input type="button" value="年月查询" onclick="ymslt()">
	   			<input type="text" name="ymword" id="ymword">&nbsp;&nbsp;&nbsp;&nbsp;
	   			<input type="button" value="员工查询" onclick="emslt()">
	   			<select name="emword" id="emword">
	   				<c:forEach items="${payenlist }" var="payenl">
	   					<option>${payenl }</option>
	   				</c:forEach>
	   			</select>&nbsp;&nbsp;&nbsp;&nbsp;
	   			<input type="button" value="综合查询" onclick="ymemslt()">
   			</p>
   			<br>
   			<!-- /显示薪资的表格/ -->
   			<table id="ctr2paysel" border="1" cellpadding="0" cellspacing="0">
   				<tr>
   					<th>员工编号</th><th>员工姓名</th><th>当前月份</th><th>基本工资</th><th>加班费</th>
   					<th>工龄费</th><th>考勤费</th><th>旷工费</th><th>保险费</th><th>实发工资</th><th>操作</th>
   				</tr>
   				<c:forEach items="${paylist }" var="payl">
   				<tr>
   					<td>${payl.pay_emNumber }</td>
   					<td>${payl.pay_emName }</td>
   					<td>${payl.pay_month }</td>
   					<td>${payl.pay_baseMoney }</td>
   					<td>${payl.pay_overtime }</td>
   					<td>${payl.pay_age }</td>
   					<td>${payl.pay_check }</td>
   					<td>${payl.pay_absent }</td>
   					<td>${payl.pay_safety }</td>
   					<td>${payl.pay_baseMoney+payl.pay_overtime+payl.pay_age+payl.pay_check-payl.pay_absent-payl.pay_safety }</td>
   					<td><a href="payDel!delPay?pay.pay_id=${payl.pay_id }" onclick="isdel('${payl.pay_emName }','${payl.pay_month }')">删除</a></td>
   				</tr>
   				</c:forEach>
   			</table>
   			<!-- /分页的按钮/ -->
   			<div id="fenye">
   				<a href="payShow!payShows?payPageIndex=1">首页</a>
				<a href="payShow!payShows?payPageIndex=${payPageIndex-1 }">上一页</a>&nbsp;${payPageIndex }/${payTotalPages }
				<a href="payShow!payShows?payPageIndex=${payPageIndex+1 }">下一页</a>
				<a href="payShow!payShows?payPageIndex=${payTotalPages }">尾页</a><br><br>
				<a href="payAdd.jsp"><font size="1">添加薪资</font></a>
   			</div>
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
