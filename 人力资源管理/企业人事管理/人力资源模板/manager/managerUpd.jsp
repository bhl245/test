<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户修改</title>
    <link href="../CSS/managerMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
    	/* ---修改用户表单的验证，ajax无刷新修改用户--- */
    	function repwdck(){
    		var oldpwd=document.getElementById("oldpwd").value;
    		var newpwd1=document.getElementById("newpwd1").value;
    		var newpwd2=document.getElementById("newpwd2").value;
    		if(oldpwd.length==0){
    			alert("请填写原始密码！");
    		}else if(newpwd1.length==0){
    			alert("请填写新密码！");
    		}else if(newpwd2.length==0){
    			alert("请填写确认新密码！");
    		}else if(newpwd1!=newpwd2){
    			alert("两次输入的密码不一致！");
    		}else{
    			$.ajax({
    				url:"mgrUpdAjax!mgrUpdCK",
    				data:{"manager.password":oldpwd,"newpwd":newpwd1},
    				type:"post",
    				dataType:"json",
    				success:function(data){
    					if("yes"==data){
    						alert("修改成功！");
    						resetAll();
    					}else if("oldPwdError"==data){
    						alert("原始密码验证错误！修改失败！");
    					}else{
    						alert("修改失败！");
    					}
    				},
    				error:function(XMLHttpRequest,textStatus,errorThrown){
    					alert(XMLHttpRequest.status);
    					alert(XMLHttpRequest.readyState);
    					alert(textStatus);
    				}
    			});
    		}
    	}
    	/* --------------------------------- */
    	/* ---重置按钮事件--- */
    	function resetAll(){
    		document.getElementById("oldpwd").value="";
    		document.getElementById("newpwd1").value="";
    		document.getElementById("newpwd2").value="";
    	}
    	/* -------------- */
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
   			<p><font size="1" color="#81644E"><b>系统管理</b></font><font size="1">﹥</font><font size="1" color="#F00">用户修改</font></p>
   		</div>
   		<div id="center2" align="center">
   				<!-- /用户修改表单以及按钮/ -->
	   			<table id="ctr2mgrupd" border="1" cellpadding="0" cellspacing="0">
	   				<tr>
	   					<th>账号：</th>
	   					<td>${lgManager.account }</td>
	   				</tr>
	   				<tr>
	   					<th>原始密码：</th>
	   					<td><input type="password" name="oldpwd" id="oldpwd"></td>
	   				</tr>
	   				<tr>
	   					<th>新密码:</th>
	   					<td><input type="password" name="newpwd1" id="newpwd1"></td>
	   				</tr>
	   				<tr>
	   					<th>确认新密码:</th>
	   					<td><input type="password" name="newpwd2" id="newpwd2"></td>
	   				</tr>
	   			</table>
	   			<br>
	   			<input type="button" value="保存" onclick="repwdck()">&nbsp;&nbsp;
	   			<input type="button" value="重置" onclick="resetAll()">
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
