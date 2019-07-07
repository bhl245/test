<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>奖惩添加</title>
    <link href="../CSS/rewardsMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        /* ---添加奖惩表单的验证，ajax无刷新添加奖惩--- */
        // function rewaddck() {
        //     var add_jctitle = document.getElementById("add_jctitle").value;
        //     var add_jctype = document.getElementById("add_jctype").value;
        //     var add_jcmoney = document.getElementById("add_jcmoney").value;
        //     var add_jctime = document.getElementById("add_jctime").value;
        //     var add_jccontent = document.getElementById("add_jccontent").value;
        //     var regrq = /^[0-9]{4}-([1-9]|0[1-9]|1[0-2])-([1-9]|0[1-9]|(1|2)[0-9]|3(0|1))$/;
        //     if (add_jctitle.length == 0 || add_jctype.length == 0 || add_jcmoney.length == 0 ||
        //         add_jctime.length == 0 || add_jccontent.length == 0) {
        //         alert("请完善信息！");
        //     } else if (!regrq.test(add_jctime)) {
        //         alert("奖惩时间格式不正确，例如1980-5-12或1988-05-04");
        //     } else {
        //         $.ajax({
        //             url: "rewAddAjax!addRew",
        //             data: {
        //                 "rewards.jc_title": add_jctitle, "rewards.jc_type": add_jctype,
        //                 "rewards.jc_content": add_jcmoney, "rewards.jc_money": add_jctime,
        //                 "rewards.jc_time": add_jccontent
        //             },
        //             type: "post",
        //             dataType: "json",
        //             success: function (data) {
        //                 if ("jcTitleError" == data) {
        //                     alert("添加失败！已有该奖惩信息！");
        //                 } else if ("yes" == data) {
        //                     alert("添加成功！");
        //                     $("#addform")[0].reset();
        //                 } else {
        //                     alert("添加失败！");
        //                 }
        //             },
        //             error: function (XMLHttpRequest, textStatus, errorThrown) {
        //                 alert(XMLHttpRequest.status);
        //                 alert(XMLHttpRequest.readyState);
        //                 alert(textStatus);
        //             }
        //         });
        //     }
        // }

        /* --------------------------------- */
        /* ---返回到奖惩查询页面--- */
        function rewAddToMgr() {
            window.location = "../PunishServlet?action=all";
        }

        /* ------------------ */
        /* ---页面中上部3个按钮的跳转事件--- */
        function itop1clk() {
            window.location = "../admin/managerUpd.jsp";
        }

        function itop2clk() {
            window.location = "../mgrMainPage.jsp";
        }

        function itop3clk() {
            window.location = "../mgrLogin.jsp";
        }

        /* ------------------------ */
    </script>
</head>

<body>
<div id="father">
    <!-- 页面顶部菜单 -->
    <div id="menu">
        <ul>
            <li><a href="../AdminServlet?action=all">&nbsp;</a></li>
            <li><a href="../SalaryServlet?action=all">&nbsp;</a></li>
            <li><a href="../PunishServlet?action=all">&nbsp;</a></li>
            <li><a href="../TrainServlet?action=all">&nbsp;</a></li>
            <li><a href="../RecruitServlet?action=all">&nbsp;</a></li>
            <li><a href="../StaffServlet?action=all">&nbsp;</a></li>
            <li><a href="../DepartmentServlet?action=all">&nbsp;</a></li>
        </ul>
    </div>
    <!-- 页面顶部菜单结束 -->
    <!-- 中上部的logo和三个按钮 -->
    <img alt="img_logo" src="../Images/top2.jpg" width="801px" height="107px">
    <div id="useropt">
        <p id="systime">系统时间：${date }</p>
        <input type="button" value="" id="itop1" onclick="itop1clk()">
        <input type="button" value="" id="itop2" onclick="itop2clk()">
        <input type="button" value="" id="itop3" onclick="itop3clk()">
    </div>
    <!-- 中上部结束 -->
    <!-- 页面中部内容 -->
    <div id="center1">
        <!-- /当前页面指示/ -->
        <p><font size="1" color="#81644E"><b>奖惩管理</b></font><font size="1">﹥</font><font size="1" color="#F00">奖惩添加</font></p>
    </div>
    <div id="center2" align="center">
        <form id="addform" action="../PunishServlet?action=insert" method="post">
            <!-- /奖惩添加表单以及按钮/ -->
            <table id="ctr2jcadd" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <th>奖惩题目：</th>
                    <td><input type="text" name="pTheme" id="pTheme"></td>
                </tr>
                <tr>
                    <th>奖惩类型：</th>
                    <td>
                        <select name="pType" id="pType" style="width: 150px;">
                            <option value="奖励" selected="selected">奖励</option>
                            <option value="惩罚">惩罚</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>奖惩金额：</th>
                    <td><input type="text" name="pMoney" id="pMoney" value="0"></td>
                </tr>
                <tr>
                    <th>奖惩时间：</th>
                    <td><input type="text" name="pTime" id="pTime" value="${date}"></td>
                </tr>
                <tr>
                    <th>奖惩原因：</th>
                    <td>
                        <textarea rows="10" cols="30" name="pDesp" id="pDesp"></textarea>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="保存">&nbsp;&nbsp;
            <input type="reset" value="重置">&nbsp;&nbsp;
            <input type="button" value="返回" onclick="rewAddToMgr()">
        </form>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>

