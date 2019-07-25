<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>部门添加</title>
    <link href="../CSS/departmentMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
    	/* ---添加部门表单的验证，ajax无刷新添加部门--- */
    	function dptaddck(){
    		var add_dptname=document.getElementById("add_dptname").value;
    		var add_dptrmk=document.getElementById("add_dptrmk").value;
    		if(add_dptname.length==0){
    			alert("部门名称不能为空");
    		}else{
    			if(add_dptrmk==""){
    				add_dptrmk="无";
    			}
    			$.ajax({
    				url:"dptAddAjax!adddpt",
    				data:{"department.dpt_name":add_dptname,"department.dpt_remarks":add_dptrmk},
    				type:"post",
    				dataType:"json",
    				success:function(data){
    					if("yes"==data){
    						alert("添加成功！");
    						resetAll();
    					}else if("dptNameError"==data){
    						alert("添加失败！已存在此部门！");
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
    	/* ---重置按钮事件--- */
    	function resetAll(){
    		document.getElementById("add_dptname").value="";
    		document.getElementById("add_dptrmk").value="无";
    	}
    	/* -------------- */
    	/* ---返回到部门查询页面--- */
    	function dptAddToMgr(){
    		window.location="dptShow!dptShows";
    	}
    	/* ------------------ */
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
   			<p><font size="1" color="#81644E"><b>部门管理</b></font><font size="1">﹥</font><font size="1" color="#F00">部门添加</font></p>
   		</div>
   		<div id="center2" align="center">
   				<!-- /部门添加表单以及按钮/ -->
	   			<table id="ctr2dptadd" border="1" cellpadding="0" cellspacing="0">
	   				<tr>
	   					<th>部门名称：</th>
	   					<td><input type="text" name="add_dptname" id="add_dptname"></td>
	   				</tr>
	   				<tr>
	   					<th>创建时间：</th>
	   					<td>${systime }</td>
	   				</tr>
	   				<tr>
	   					<th>备注信息：</th>
	   					<td><input type="text" name="add_dptrmk" id="add_dptrmk" value="无"></td>
	   				</tr>
	   			</table>
	   			<br>
	   			<input type="button" value="保存" onclick="dptaddck()">&nbsp;&nbsp;
	   			<input type="button" value="重置" onclick="resetAll()">&nbsp;&nbsp;
	   			<input type="button" value="返回" onclick="dptAddToMgr()">
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
