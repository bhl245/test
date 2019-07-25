<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加培训信息</title>
    <link href="../CSS/trainMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
    	/* ---添加培训表单的验证，ajax无刷新添加培训--- */
	    function tnaddck(){
	    	var add_tnman=document.getElementById("add_tnman").value;
	    	var add_tntitle=document.getElementById("add_tntitle").value;
	    	var add_tncontent=document.getElementById("add_tncontent").value;
	    	var add_tntime=document.getElementById("add_tntime").value;
	    	var add_tnaddress=document.getElementById("add_tnaddress").value;
	    	var add_tnjoin=document.getElementById("add_tnjoin").value;
	    	var add_tnremarks=document.getElementById("add_tnremarks").value;
	    	var regrq=/^[0-9]{4}-([1-9]|0[1-9]|1[0-2])-([1-9]|0[1-9]|(1|2)[0-9]|3(0|1))$/;
	    	if(add_tnman.length==0 || add_tntitle.length==0 ||
 					add_tncontent.length==0 || add_tntime.length==0 ||
 					add_tnaddress.length==0 || add_tnjoin.length==0 ||
 					add_tnremarks.length==0){
				alert("请完善信息！");
			}else if(!regrq.test(add_tntime)){
 				alert("培训时间格式不正确，例如1980-5-12或1988-05-04");
 			}else{
 				$.ajax({
    				url:"tnAddAjax!addTn",
    				data:{"train.tn_man":add_tnman,"train.tn_title":add_tntitle,
    					"train.tn_content":add_tncontent,"train.tn_time":add_tntime,
    					"train.tn_address":add_tnaddress,"train.tn_join":add_tnjoin,
    					"train.tn_remarks":add_tnremarks},
    				type:"post",
    				dataType:"json",
    				success:function(data){
    					if("tnContentError"==data){
    						alert("添加失败！已有该培训信息！");
    					}else if("yes"==data){
    						alert("添加成功！");
    						$("#addform")[0].reset();
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
    	/* ---返回到培训查询页面--- */
	    function tnAddToMgr(){
			window.location="tnShow!tnShows";
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
			 <li><a href="tnShow!tnShows">&nbsp;</a></li>
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
   			<p><font size="1" color="#81644E"><b>培训管理</b></font><font size="1">﹥</font><font size="1" color="#F00">添加培训信息</font></p>
   		</div>
   		<div id="center2" align="center">
   			<form id="addform">
   				<!-- /培训添加表单以及按钮/ -->
	   			<table id="ctr2tnadd" border="1" cellpadding="0" cellspacing="0">
	   				<tr>
	   					<th>培训人：</th>
	   					<td><input type="text" name="add_tnman" id="add_tnman" style="width: 250px;"></td>
	   				</tr>
	   				<tr>
	   					<th>培训主题：</th>
	   					<td><input type="text" name="add_tntitle" id="add_tntitle" style="width: 250px;"></td>
	   				</tr>
	   				<tr>
	   					<th>培训宗旨：</th>
	   					<td><input type="text" name="add_tncontent" id="add_tncontent" style="width: 250px;"></td>
	   				</tr>
	   				<tr>
	   					<th>培训时间：</th>
	   					<td><input type="text" name="add_tntime" id="add_tntime" style="width: 250px;"></td>
	   				</tr>
	   				<tr>
	   					<th>培训地点：</th>
	   					<td><input type="text" name="add_tnaddress" id="add_tnaddress" style="width: 250px;"></td>
	   				</tr>
	   				<tr>
	   					<th>参加人员：</th>
	   					<td><input type="text" name="add_tnjoin" id="add_tnjoin" style="width: 250px;"></td>
	   				</tr>
	   				<tr>
	   					<th>备注信息：</th>
	   					<td>
	   						<textarea rows="10" cols="32" name="add_tnremarks" id="add_tnremarks"></textarea>
	   					</td>
	   				</tr>
	   			</table>
	   			<br>
	   			<input type="button" value="保存" onclick="tnaddck()">&nbsp;&nbsp;
	   			<input type="reset" value="重置">&nbsp;&nbsp;
	   			<input type="button" value="返回" onclick="tnAddToMgr()">
   			</form>
   		</div>
   		<!-- 页面中部结束 -->
   		<!-- 页面底部 -->
   		<img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
   		<!-- 底部结束 -->
   	</div>
  </body>
</html>
