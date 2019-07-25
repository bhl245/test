<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加管理员</title>
    <link href="../CSS/managerMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
    	/* ---添加用户表单的验证，ajax无刷新添加用户--- */
    	function mgraddck(){
    		var newaccount=document.getElementById("newaccount").value;
    		var newpassword=document.getElementById("newpassword").value;
    		var newpassword1=document.getElementById("newpassword1").value;
    		var newlevel=document.getElementById("level").value;
    		if(newaccount.length==0 || newpassword.length==0 || newpassword1.length==0){
    			alert("请完善信息！");
    		}else if(newpassword!=newpassword1){
    			alert("两次密码输入不一致！");
    		}else{
    			$.ajax({
    				url:"mgrAddAjax!addMgrs",
    				data:{"manager.account":newaccount,"manager.password":newpassword,"manager.managerLevel":newlevel},
    				type:"post",
    				dataType:"json",
    				success:function(data){
    					if("yes"==data){
    						alert("添加成功！");
    						resetAll();
    					}else if("existAccountError"==data){
    						alert("该用户已存在！添加失败！");
    					}else{
    						alert("添加失败！");
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
    	/* ---用户名文本框失去焦点时，用ajax无刷新验证用户名是否能使用--- */
    	function accountCK(){
    		var newaccount=document.getElementById("newaccount").value;
    		if(newaccount.length==0){
    			$("#actck").html("×");
				$("#actck").css("color","red");
				alert("请填写用户名！");
    		}else{
	    		$.ajax({
					url:"mgrActCKAjax!addMgrAccountCK",
					data:{"manager.account":newaccount},
					type:"post",
					dataType:"json",
					success:function(data){
						if("yes"==data){
							$("#actck").html("×");
							$("#actck").css("color","red");
							alert("该用户已存在！");
						}else{
							$("#actck").html("√");
							$("#actck").css("color","green");
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
    	/* --------------------------------------------- */
    	/* ---重置按钮事件--- */
    	function resetAll(){
    		document.getElementById("newaccount").value="";
    		document.getElementById("newpassword").value="";
    		document.getElementById("newpassword1").value="";
    		document.getElementById("level").value="1";
    		$("#actck").html("");
    	}
    	/* -------------- */
    	/* ---返回到用户查询页面--- */
	    function mgrAddToMgr(){
			window.location="mgrShow!mgrShows";
		}
	    /* ------------------ */
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
   			<p><font size="1" color="#81644E"><b>系统管理</b></font><font size="1">﹥</font><font size="1" color="#F00">添加管理员</font></p>
   		</div>
   		<div id="center2" align="center">
   				<!-- /用户添加表单以及按钮/ -->
	   			<table id="ctr2mgradd" border="1" cellpadding="0" cellspacing="0">
	   				<tr>
	   					<th width="90">账号：</th>
	   					<td><input type="text" name="newaccount" id="newaccount" onblur="accountCK()"><span id="actck"></span></td>
	   				</tr>
	   				<tr>
	   					<th>登录密码:</th>
	   					<td><input type="password" name="newpassword" id="newpassword"></td>
	   				</tr>
	   				<tr>
	   					<th>确认密码:</th>
	   					<td><input type="password" name="newpassword1" id="newpassword1"></td>
	   				</tr>
	   				<tr>
	   					<th>用户权限:</th>
	   					<td>
	   					<select name="level" id="level">
	   						<option value="1" selected="selected">管理员</option>
	   						<option value="0">普通用户</option>
	   					</select>
	   					</td>
	   				</tr>
	   			</table>
	   			<br>
	   			<input type="button" value="保存" onclick="mgraddck()">&nbsp;&nbsp;
	   			<input type="button" value="重置" onclick="resetAll()">&nbsp;&nbsp;
	   			<input type="button" value="返回" onclick="mgrAddToMgr()">
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
