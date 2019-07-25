<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>部门查询</title>
    <link href="../CSS/departmentMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
    	/* ---判断是否删除部门--- */
    	function isdel(delname){
    		if(!confirm("确认要删除"+delname+"这个部门吗？")){ 
    			window.event.returnValue = false; 
    		} 
    	}
    	/* ----------------- */
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
			 <li><a href="../invitejob/issSelect!issSlt?ivt_isstock=2">&nbsp;</a></li>
			 <li><a href="../employee/edSelect!empdptSelect?d_name=empsall">&nbsp;</a></li>
			 <li><a href="dptShow!dptShows">&nbsp;</a></li>
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
   			<p><font size="1" color="#81644E"><b>部门管理</b></font><font size="1">﹥</font><font size="1" color="#F00">部门查询</font></p>
   		</div>
   		<div id="center2" align="center">
   			<!-- /显示部门的表格/ -->
   			<table id="ctr2dptsel" border="1" cellpadding="0" cellspacing="0">
   				<tr>
   					<th>序号</th><th>部门名称</th><th>创建时间</th><th>部门人数</th><th>备注</th><th>操作</th>
   				</tr>
   				<c:forEach items="${dptlist }" var="dptl">
   				<tr>
   					<td>${dptl.dpt_id }</td>
   					<td>${dptl.dpt_name }</td>
   					<td>${dptl.dpt_createTime }</td>
   					<td>${D_Ecount.get(dptl.dpt_id) }</td>
   					<td>${dptl.dpt_remarks }</td>
   					<td>
   					<c:if test="${D_Ecount.get(dptl.dpt_id) eq 0 }" var="isDel">
   						<a href="dptDel!delDpts?department.dpt_id=${dptl.dpt_id }" onclick="isdel('${dptl.dpt_name }')">删除</a>
   					</c:if>
   					<c:if test="${not isDel }">
   						<a href="javaScript:alert('该部门存在员工，不允许删除！');">删除</a>
   					</c:if>
   					</td>
   				</tr>
   				</c:forEach>
   			</table>
   			<!-- /分页的按钮/ -->
   			<div id="fenye">
   				<a href="dptShow!dptShows?dptPageIndex=1">首页</a>
				<a href="dptShow!dptShows?dptPageIndex=${dptPageIndex-1 }">上一页</a>&nbsp;${dptPageIndex }/${dptTotalPages }
				<a href="dptShow!dptShows?dptPageIndex=${dptPageIndex+1 }">下一页</a>
				<a href="dptShow!dptShows?dptPageIndex=${dptTotalPages }">尾页</a><br><br>
				<a href="departmentAdd.jsp"><font size="1">添加部门</font></a>
   			</div>
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
