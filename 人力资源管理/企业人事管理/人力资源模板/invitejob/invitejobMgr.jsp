<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>招聘查询</title>
    <link href="../CSS/invitejobMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
    	/* ---判断是否删除应聘信息--- */
    	function isdel(delName){
    		if(!confirm("确认要删除姓名："+delName+"的应聘者吗？")){ 
    			window.event.returnValue = false; 
    		} 
    	}
    	/* -------------------- */
    	/* ---判断是否录用或取消录用员工--- */
    	function isiss(iss,issname){
    		var ivtiss;
    		if(iss==0){
    			ivtiss="录用";
    		}else{
    			ivtiss="取消录用";
    		}
    		if(!confirm("确认要"+ivtiss+"姓名："+issname+"的应聘者吗？")){ 
    			window.event.returnValue = false; 
    		}
    	}
    	/* ------------------------ */
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
			 <li><a href="../pay/ymSelect!ymSlt?ymword=">&nbsp;</a></li>
			 <li><a href="../rewards/rewSelect!jcTypeSlt?jc_type=2">&nbsp;</a></li>
			 <li><a href="../train/tnShow!tnShows">&nbsp;</a></li>
			 <li><a href="issSelect!issSlt?ivt_isstock=2">&nbsp;</a></li>
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
   			<p><font size="1" color="#81644E"><b>招聘管理</b></font><font size="1">﹥</font><font size="1" color="#F00">招聘查询</font></p>
   		</div>
   		<div id="center2" align="center">
   			<!-- /是否录用选择链接/ -->
   			<p id="ctr2_top">
	   			<a href="issSelect!issSlt?ivt_isstock=1">录用查询</a>&nbsp;
	   			<a href="issSelect!issSlt?ivt_isstock=0">非录用查询</a>
   			</p>
   			<!-- /显示应聘的表格/ -->
   			<table id="ctr2ivtsel" border="1" cellpadding="0" cellspacing="0">
   				<tr>
   					<th>编号</th><th>姓名</th><th>性别</th><th>应聘职务</th><th>学历</th><th>工作经验</th><th>操作</th>
   				</tr>
   				<c:forEach items="${ivtlist }" var="ivtl">
   				<tr>
   					<td>${ivtl.ivt_id }</td>
   					<td>${ivtl.ivt_name }</td>
   					<td>${ivtl.ivt_sex }</td>
   					<td>${ivtl.ivt_job }</td>
   					<td>${ivtl.ivt_teachSchool }</td>
   					<td>${ivtl.ivt_experience }</td>
   					<td>
   						<a href="dSelectIvt!dselIvt?invitejob.ivt_id=${ivtl.ivt_id }">详细查询</a>
   						<a href="ivtDel!delIvt?invitejob.ivt_id=${ivtl.ivt_id }" onclick="isdel('${ivtl.ivt_name}')">删除</a>&nbsp;&nbsp;
   						<a href="issSelect!issIvt?invitejob.ivt_id=${ivtl.ivt_id }" onclick="isiss('${ivtl.ivt_isstock }','${ivtl.ivt_name}')">
							<c:if test="${ivtl.ivt_isstock eq 1}" var="isly" >取消录用</c:if>
							<c:if test="${not isly }">录&nbsp;&nbsp;&nbsp;&nbsp;用</c:if>
						</a>
   					</td>
   				</tr>
   				</c:forEach>
   			</table>
   			<!-- /分页的按钮/ -->
   			<div id="fenye">
   				<a href="ivtShow!ivtShows?ivtPageIndex=1">首页</a>
				<a href="ivtShow!ivtShows?ivtPageIndex=${ivtPageIndex-1 }">上一页</a>&nbsp;${ivtPageIndex }/${ivtTotalPages }
				<a href="ivtShow!ivtShows?ivtPageIndex=${ivtPageIndex+1 }">下一页</a>
				<a href="ivtShow!ivtShows?ivtPageIndex=${ivtTotalPages }">尾页</a><br><br>
				<a href="invitejobAdd.jsp"><font size="1">添加应聘人信息</font></a>
   			</div>
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
