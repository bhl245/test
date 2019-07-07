<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>员工添加</title>
    <link href="../CSS/employeeMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        /* ---添加员工表单的验证，ajax无刷新添加员工--- */
        // function empaddck(addcrname, addcrtime) {
        //     var add_emserialNumber = document.getElementById("add_emserialNumber").value;
        //     var add_emname = document.getElementById("add_emname").value;
        //     var add_emage = document.getElementById("add_emage").value;
        //     var add_emsex = $("input[name='add_emsex']:checked").val();
        //     var add_emborn = document.getElementById("add_emborn").value;
        //     var add_emIDCard = document.getElementById("add_emIDCard").value;
        //     var add_emnation = document.getElementById("add_emnation").value;
        //     var add_emmarriage = $("input[name='add_emmarriage']:checked").val();
        //     var add_emvisage = $("input[name='add_emvisage']:checked").val();
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
        //     } else if (!/^[0-9]$|^[1-9][0-9]$|^1(0|1)[0-9]$|^120$/.test(add_emage)) {
        //         alert("年龄的格式不正确！年龄范围为0~120岁！");
        //     } else if (!regrq.test(add_emborn)) {
        //         alert("出生日期格式不正确，例如1980-5-12或1988-05-04");
        //     } else if (!regrq.test(add_emstartime)) {
        //         alert("上岗日期格式不正确，例如1980-5-12或1988-05-04");
        //     } else {
        //         if (add_emremarks == "") {
        //             add_emremarks = "无";
        //         }
        //     }
        // }

        /* --------------------------------- */
        /* ---重置按钮事件--- */
        function resetAll() {
            $("#addform")[0].reset();
            // getSerialNumber();
        }

        /* ------------------------- */
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
        <p><font size="1" color="#81644E"><b>员工管理</b></font><font size="1">﹥</font><font size="1" color="#F00">员工添加</font></p>
    </div>
    <div id="center2" align="center">
        <form id="addform" action="../StaffServlet?action=insert" method="post">
            <!-- /员工添加表单以及按钮/ -->
            <table id="ctr2empadd" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <th>姓名：</th>
                    <td><input type="text" name="stName" id="stName"></td>
                </tr>
                <tr>
                    <th>年龄：</th>
                    <td><input type="text" name="stAge" id="stAge"></td>
                    <th>性别：</th>
                    <td>
                        <input type="radio" name="stSex" id="add_emmale" value="男" checked="checked">
                        <label for="add_emmale">男</label>
                        <input type="radio" name="stSex" id="add_emfamale" value="女"><label for="add_emfamale">女</label>
                    </td>
                </tr>
                <tr>
                    <th>出生日期：</th>
                    <td><input type="text" name="stBirth" id="stBirth"></td>
                    <th>身份证号：</th>
                    <td><input type="text" name="stIDCard" id="stIDCard"></td>
                </tr>
                <tr>
                    <th>民族：</th>
                    <td><input type="text" name="stNation" id="stNation" value="汉"></td>
                    <th>婚姻状况：</th>
                    <td>
                        <input type="radio" name="stMarriage" id="add_emfmry" value="未婚" checked="checked">
                        <label for="add_emfmry">未婚</label>
                        <input type="radio" name="stMarriage" id="add_emtmry" value="已婚"><label for="add_emtmry">已婚</label>
                    </td>
                </tr>
                <tr>
                    <th>政治面貌：</th>
                    <td>
                        <input type="radio" name="stPolitical" id="add_emdvsg" value="党员"><label for="add_emdvsg">党员</label>
                        <input type="radio" name="stPolitical" id="add_emtvsg" value="团员"><label for="add_emtvsg">团员</label>
                        <input type="radio" name="stPolitical" id="add_emwvsg" value="无" checked="checked">
                        <label for="add_emwvsg">无</label>
                    </td>
                    <th>籍贯 ：</th>
                    <td><input type="text" name="stNative" id="stNative"></td>
                </tr>
                <tr>
                    <th>联系电话：</th>
                    <td><input type="text" name="stTel" id="stTel"></td>
                    <th>家庭住址：</th>
                    <td><input type="text" name="stAddress" id="stAddress"></td>
                </tr>
                <tr>
                    <th>毕业学校：</th>
                    <td><input type="text" name="stAfterSchool" id="stAfterSchool"></td>
                    <th>专业：</th>
                    <td><input type="text" name="stMajor" id="stMajor"></td>
                </tr>
                <tr>
                    <th>文化程度：</th>
                    <td>
                        <select name="stEducation" id="stEducation" style="width: 150px;">
                            <option value="本科生" selected="selected">本科生</option>
                            <option value="专科生">专科生</option>
                        </select>
                    </td>
                    <th>上岗时间：</th>
                    <td><input type="text" name="stStartTime" id="stStartTime"></td>
                </tr>
                <tr>
                    <th>部门名称：</th>
                    <td>
                        <select name="dName" id="dName" style="width: 150px;">
                            <c:forEach items="${departmentList }" var="ealist">
                                <option value="${ealist.dId }">${ealist.dName }</option>
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
                    <td><input type="text" name="stRegister" id="stRegister" value="${admin.aName}"></td>
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
