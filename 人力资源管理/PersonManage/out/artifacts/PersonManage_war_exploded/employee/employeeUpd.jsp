<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>员工修改</title>
    <link href="../CSS/employeeMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        /* ---修改员工表单的验证，ajax无刷新修改员工--- */
        // function empaddck() {
        //     var add_emserialNumber = document.getElementById("add_emserialNumber").value;
        //     var add_emname = document.getElementById("add_emname").value;
        //     var add_emage = document.getElementById("add_emage").value;
        //     var add_emsex = document.getElementById("add_emsex").value;
        //     var add_emborn = document.getElementById("add_emborn").value;
        //     var add_emIDCard = document.getElementById("add_emIDCard").value;
        //     var add_emnation = document.getElementById("add_emnation").value;
        //     var add_emmarriage = document.getElementById("add_emmarriage").value;
        //     var add_emvisage = document.getElementById("add_emvisage").value;
        //     var add_emancestralHome = document.getElementById("add_emancestralHome").value;
        //     var add_emtel = document.getElementById("add_emtel").value;
        //     var add_emaddress = document.getElementById("add_emaddress").value;
        //     var add_emafterSchool = document.getElementById("add_emafterSchool").value;
        //     var add_emspeciality = document.getElementById("add_emspeciality").value;
        //     var add_emculture = document.getElementById("add_emculture").value;
        //     var add_emstartime = document.getElementById("add_emstartime").value;
        //     var add_emdptname = document.getElementById("add_emdptname").value;
        //     var add_emtypeWork = document.getElementById("add_emtypeWork").value;
        //     var add_emcreateName = document.getElementById("add_emcreateName").value;
        //     var add_emcreatime = document.getElementById("add_emcreatime").value;
        //     var add_emremarks = document.getElementById("add_emremarks").value;
        //     var regrq = /^[0-9]{4}-([1-9]|0[1-9]|1[0-2])-([1-9]|0[1-9]|(1|2)[0-9]|3(0|1))$/;
        //     if (add_emserialNumber.length == 0 || add_emname.length == 0 ||
        //         add_emage.length == 0 || add_emsex.length == 0 ||
        //         add_emborn.length == 0 || add_emIDCard.length == 0 ||
        //         add_emnation.length == 0 || add_emmarriage.length == 0 ||
        //         add_emvisage.length == 0 || add_emancestralHome.length == 0 ||
        //         add_emtel.length == 0 || add_emaddress.length == 0 ||
        //         add_emafterSchool.length == 0 || add_emspeciality.length == 0 ||
        //         add_emculture.length == 0 || add_emstartime.length == 0 ||
        //         add_emdptname.length == 0 || add_emtypeWork.length == 0 ||
        //         add_emcreateName.length == 0 || add_emcreatime.length == 0) {
        //         alert("请完善信息！");
        //     } else if (!regrq.test(add_emborn)) {
        //         alert("出生日期格式不正确，例如1980-5-12或1988-05-04");
        //     } else if (!regrq.test(add_emstartime)) {
        //         alert("上岗日期格式不正确，例如1980-5-12或1988-05-04");
        //     } else {
        //         if (add_emremarks == "") {
        //             add_emremarks = "无";
        //         }
        //         $.ajax({
        //             url: "empUpdAjax!updEmp",
        //             data: {
        //                 "employee.em_serialNumber": add_emserialNumber, "employee.em_name": add_emname,
        //                 "employee.em_sex": add_emsex, "employee.em_age": add_emage,
        //                 "employee.em_IDCard": add_emIDCard, "employee.em_born": add_emborn,
        //                 "employee.em_nation": add_emnation, "employee.em_marriage": add_emmarriage,
        //                 "employee.em_visage": add_emvisage, "employee.em_ancestralHome": add_emancestralHome,
        //                 "employee.em_tel": add_emtel, "employee.em_address": add_emaddress,
        //                 "employee.em_afterSchool": add_emafterSchool, "employee.em_speciality": add_emspeciality,
        //                 "employee.em_culture": add_emculture, "employee.em_startime": add_emstartime,
        //                 "add_emdptname": add_emdptname, "employee.em_typeWork": add_emtypeWork,
        //                 "employee.em_creatime": add_emcreatime, "employee.em_createName": add_emcreateName,
        //                 "employee.em_remarks": add_emremarks
        //             },
        //             type: "post",
        //             dataType: "json",
        //             success: function (data) {
        //                 if ("yes" == data) {
        //                     alert("修改成功！");
        //                     window.location = "employeeUpd.jsp";
        //                 } else {
        //                     alert("修改失败！");
        //                     resetAll();
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
        /* ---重置按钮事件--- */
        function resetAll() {
            $("#updform")[0].reset();
        }

        /* -------------- */
        /* ---返回到员工查询页面--- */
        function empAddToMgr() {
            window.location = "../StaffServlet?action=all";
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
        <p><font size="1" color="#81644E"><b>员工管理</b></font><font size="1">﹥</font><font size="1" color="#F00">员工修改</font></p>
    </div>
    <div id="center2" align="center">
        <!-- /员工添加表单以及按钮/ -->
        <form id="updform" action="../StaffServlet?action=update" method="post">
            <table id="ctr2empadd" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <th>编号：</th>
                    <td><input type="text" name="stId" id="stId" value="${staff.stId}"></td>
                    <th>姓名：</th>
                    <td><input type="text" name="stName" id="stName" value="${staff.stName}"></td>
                </tr>
                <tr>
                    <th>年龄：</th>
                    <td><input type="text" name="stAge" id="stAge" value="${staff.stAge }"></td>
                    <th>性别：</th>
                    <td><input type="text" name="stSex" id="stSex" value="${staff.stSex }"></td>
                </tr>
                <tr>
                    <th>出生日期：</th>
                    <td><input type="text" name="stBirth" id="stBirth" value="${staff.stBirth }"></td>
                    <th>身份证号：</th>
                    <td><input type="text" name="stIDCard" id="stIDCard" value="${staff.stIDCard }"></td>
                </tr>
                <tr>
                    <th>民族：</th>
                    <td><input type="text" name="stNation" id="stNation" value="${staff.stNation }"></td>
                    <th>婚姻状况：</th>
                    <td><input type="text" name="stMarriage" id="stMarriage" value="${staff.stMarriage }"></td>
                </tr>
                <tr>
                    <th>政治面貌：</th>
                    <td><input type="text" name="stPolitical" id="stPolitical" value="${staff.stPolitical }"></td>
                    <th>籍贯 ：</th>
                    <td><input type="text" name="stNative" id="stNative" value="${staff.stNative }"></td>
                </tr>
                <tr>
                    <th>联系电话：</th>
                    <td><input type="text" name="stTel" id="stTel" value="${staff.stTel }"></td>
                    <th>家庭住址：</th>
                    <td><input type="text" name="stAddress" id="stAddress" value="${staff.stAddress }"></td>
                </tr>
                <tr>
                    <th>毕业学校：</th>
                    <td><input type="text" name="stAfterSchool" id="stAfterSchool" value="${staff.stAfterSchool }">
                    </td>
                    <th>专业：</th>
                    <td><input type="text" name="stMajor" id="stMajor" value="${staff.stMajor }"></td>
                </tr>
                <tr>
                    <th>文化程度：</th>
                    <td><input type="text" name="stEducation" id="stEducation" value="${staff.stEducation }"></td>
                    <th>上岗时间：</th>
                    <td><input type="text" name="stStartTime" id="stStartTime" value="${staff.stStartTime }"></td>
                </tr>
                <tr>
                    <th>部门名称：</th>
                    <td>
                        <select name="dName" id="dName" style="width: 150px;">
                            <c:forEach items="${departmentList }" var="ealist">
                                <c:if test="${staff.department.getdName()  eq  ealist.dName }" var="listequal">
                                    <option value="${ealist.dId }" selected="selected">${ealist.dName }</option>
                                </c:if>
                                <c:if test="${not listequal }">
                                    <option value="${ealist.dId }">${ealist.dName }</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </td>
                    <th>部门工种：</th>
                    <td>
                        <select name="stWork" id="stWork" style="width: 150px;">
                            <option value="程序员">程序员</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>登记人名：</th>
                    <td><input type="text" name="stRegister" id="stRegister" value="${staff.stRegister }"></td>
                    <th>登记时间：</th>
                    <td><input type="text" name="stTime" id="stTime" value="${date }"></td>
                </tr>
                <tr>
                    <th>备注信息：</th>
                    <td colspan="3">
                        <textarea rows="6" cols="65" name="stDesp" id="stDesp">无</textarea>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="保存">&nbsp;&nbsp;
            <input type="button" value="重置" onclick="resetAll()">&nbsp;&nbsp;
            <input type="button" value="返回" onclick="empAddToMgr()">
        </form>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
