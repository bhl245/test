<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>奖惩查询</title>
    <link href="../CSS/rewardsMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
	    /* ---判断是否删除奖惩信息--- */
		function isdel(deltitle){
			if(!confirm("确认要删除标题为："+deltitle+"的奖惩信息吗？")){ 
				window.event.returnValue = false; 
			} 
		}
		/* -------------------- */
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
			 <li><a href="rewSelect!jcTypeSlt?jc_type=2">&nbsp;</a></li>
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
   			<p><font size="1" color="#81644E"><b>奖惩管理</b></font><font size="1">﹥</font><font size="1" color="#F00">奖惩查询</font></p>
   		</div>
   		<div id="center2" align="center">
   			<!-- /奖惩选择链接/ -->
	   		<p id="ctr2_top">
	   			<a href="rewSelect!jcTypeSlt?jc_type=1">奖励</a>&nbsp;
	   			<a href="rewSelect!jcTypeSlt?jc_type=0">惩罚</a>
   			</p>
   			<!-- /显示奖惩的表格/ -->
   			<table id="ctr2jcsel" border="1" cellpadding="0" cellspacing="0">
   				<tr>
   					<th>编号</th><th>奖惩主题</th><th>奖惩类型</th><th>奖励金额</th><th>奖励时间</th><th>操作</th>
   				</tr>
   				<c:forEach items="${jclist }" var="jcl">
   				<tr>
   					<td>${jcl.jc_id }</td>
   					<td>${jcl.jc_title }</td>
   					<td>
   					<c:if test="${jcl.jc_type eq '1' }" var="isifjc">奖励</c:if>
   					<c:if test="${not isifjc }">惩罚</c:if>
   					</td>
   					<td>${jcl.jc_money }</td>
   					<td>${jcl.jc_time }</td>
   					<td>
   						<a href="dSelectRew!dSelRew?rewards.jc_id=${jcl.jc_id }">详细查询</a>
   						<a href="rewDel!delRew?rewards.jc_id=${jcl.jc_id }" onclick="isdel('${jcl.jc_title }')">删除</a>&nbsp;&nbsp;&nbsp;
   					</td>
   				</tr>
   				</c:forEach>
   			</table>
   			<!-- /分页的按钮/ -->
   			<div id="fenye">
   				<a href="rewShow!rewShows?rewPageIndex=1">首页</a>
				<a href="rewShow!rewShows?rewPageIndex=${rewPageIndex-1 }">上一页</a>&nbsp;${rewPageIndex }/${rewTotalPages }
				<a href="rewShow!rewShows?rewPageIndex=${rewPageIndex+1 }">下一页</a>
				<a href="rewShow!rewShows?rewPageIndex=${rewTotalPages }">尾页</a><br><br>
				<a href="rewardsAdd.jsp"><font size="1">添加奖惩信息</font></a>
   			</div>
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
