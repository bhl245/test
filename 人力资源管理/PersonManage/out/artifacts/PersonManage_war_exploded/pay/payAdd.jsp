<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>添加薪资</title>
    <link href="../CSS/payMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        /* ---添加薪资表单的验证，ajax无刷新添加薪资--- */
        // function payaddck() {
        //     var add_payemNumber = document.getElementById("add_payemNumber").value;
        //     var add_payemName = document.getElementById("add_payemName").value;
        //     var add_paymonth = document.getElementById("add_paymonth").value;
        //     var add_paybaseMoney = document.getElementById("add_paybaseMoney").value;
        //     var add_payovertime = $("input[name='add_payovertime']:checked").val();
        //     var add_payage = $("input[name='add_payage']:checked").val();
        //     var add_paycheck = document.getElementById("add_paycheck").value;
        //     var add_payabsent = document.getElementById("add_payabsent").value;
        //     var add_paysafety = document.getElementById("add_paysafety").value;
        //     var regrq = /^[0-9]{4}-([1-9]|0[1-9]|1[0-2])$/;
        //     if (add_payemNumber.length == 0 || add_payemName.length == 0 ||
        //         add_paymonth.length == 0 || add_paybaseMoney.length == 0 ||
        //         add_payovertime.length == 0 || add_payage.length == 0 ||
        //         add_paycheck.length == 0 || add_payabsent.length == 0 ||
        //         add_paysafety.length == 0) {
        //         alert("请完善信息！");
        //     } else if (!regrq.test(add_paymonth)) {
        //         alert("当前月份格式不正确，例如1980-5或1988-05");
        //     } else {
        //         $.ajax({
        //             url: "payAddAjax!addPay",
        //             data: {
        //                 "pay.pay_emNumber": add_payemNumber, "pay.pay_emName": add_payemName,
        //                 "pay.pay_month": add_paymonth, "pay.pay_baseMoney": add_paybaseMoney,
        //                 "pay.pay_overtime": add_payovertime, "pay.pay_age": add_payage,
        //                 "pay.pay_check": add_paycheck, "pay.pay_absent": add_payabsent,
        //                 "pay.pay_safety": add_paysafety
        //             },
        //             type: "post",
        //             dataType: "json",
        //             success: function (data) {
        //                 if ("addRepeatError" == data) {
        //                     alert("添加失败！已有该员工当月的薪资信息！");
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
        /* ---返回到薪资查询页面--- */
        function payAddToMgr() {
            window.location = "../SalaryServlet?action=all";
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
        <p><font size="1" color="#81644E"><b>薪资管理</b></font><font size="1">﹥</font><font size="1" color="#F00">薪资添加</font></p>
    </div>
    <div id="center2" align="center">
        <form id="addform" action="../SalaryServlet?action=insert" method="post">
            <!-- /薪资添加表单以及按钮/ -->
            <table id="ctr2payadd" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <th>员工姓名：</th>
                    <td>
                        <select name="stName" id="stName" style="width: 150px;">
                            <c:forEach items="${staffList }" var="stList">
                                <option value="${stList.stId }">${stList.stName }</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>当前月份：</th>
                    <td><input type="text" name="saMonth" id="saMonth"></td>
                </tr>
                <tr>
                    <th>基本工资：</th>
                    <td><input type="text" name="saBasic" id="saBasic"></td>
                </tr>
                <tr>
                    <th>加班费：</th>
                    <td><input type="text" name="saOvertime" id="saOvertime"></td>
                </tr>
                <tr>
                    <th>工龄费：</th>
                    <td><input type="text" name="saWorking" id="saWorking"></td>
                </tr>
                <tr>
                    <th>考勤费：</th>
                    <td><input type="text" name="saAttendance" id="saAttendance" value="100"></td>
                </tr>
                <tr>
                    <th>旷工费：</th>
                    <td><input type="text" name="saAbsenteeism" id="saAbsenteeism"></td>
                </tr>
                <tr>
                    <th>保险费：</th>
                    <td><input type="text" name="saInsurance" id="saInsurance" value="128"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="保存">&nbsp;&nbsp;
            <input type="reset" value="重置">&nbsp;&nbsp;
            <input type="button" value="返回" onclick="payAddToMgr()">
        </form>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
