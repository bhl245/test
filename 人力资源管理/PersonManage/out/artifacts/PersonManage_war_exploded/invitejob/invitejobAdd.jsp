<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>添加应聘人信息</title>
    <link href="../CSS/invitejobMgr.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        /* ---添加招聘表单的验证，ajax无刷新添加招聘--- */
        // function ivtaddck() {
        //     var add_ivtname = document.getElementById("add_ivtname").value;
        //     var add_ivtsex = $("input[name='add_ivtsex']:checked").val();
        //     var add_ivtage = document.getElementById("add_ivtage").value;
        //     var add_ivtborn = document.getElementById("add_ivtborn").value;
        //     var add_ivtjob = document.getElementById("add_ivtjob").value;
        //     var add_ivtspecialty = document.getElementById("add_ivtspecialty").value;
        //     var add_ivtexperience = document.getElementById("add_ivtexperience").value;
        //     var add_ivtteachSchool = document.getElementById("add_ivtteachSchool").value;
        //     var add_ivttel = document.getElementById("add_ivttel").value;
        //     var add_ivtafterSchool = document.getElementById("add_ivtafterSchool").value;
        //     var add_ivtaddress = document.getElementById("add_ivtaddress").value;
        //     var add_ivtcreatetime = document.getElementById("add_ivtcreatetime").value;
        //     var add_ivtcontent = document.getElementById("add_ivtcontent").value;
        //     var regrq = /^[0-9]{4}-([1-9]|0[1-9]|1[0-2])-([1-9]|0[1-9]|(1|2)[0-9]|3(0|1))$/;
        //     if (add_ivtname.length == 0 || add_ivtsex.length == 0 ||
        //         add_ivtage.length == 0 || add_ivtborn.length == 0 ||
        //         add_ivtjob.length == 0 || add_ivtspecialty.length == 0 ||
        //         add_ivtexperience.length == 0 || add_ivtteachSchool.length == 0 ||
        //         add_ivttel.length == 0 || add_ivtafterSchool.length == 0 ||
        //         add_ivtaddress.length == 0 || add_ivtcreatetime.length == 0 || add_ivtcontent.length == 0) {
        //         alert("请完善信息！");
        //     } else if (!/^[0-9]$|^[1-9][0-9]$|^1(0|1)[0-9]$|^120$/.test(add_ivtage)) {
        //         alert("年龄的格式不正确！年龄范围为0~120岁！");
        //     } else if (!regrq.test(add_ivtborn)) {
        //         alert("出生日期格式不正确，例如1980-5-12或1988-05-04");
        //     } else {
        //         $.ajax({
        //             url: "ivtAddAjax!addIvt",
        //             data: {
        //                 "invitejob.ivt_name": add_ivtname, "invitejob.ivt_sex": add_ivtsex,
        //                 "invitejob.ivt_age": add_ivtage, "invitejob.ivt_born": add_ivtborn,
        //                 "invitejob.ivt_job": add_ivtjob, "invitejob.ivt_specialty": add_ivtspecialty,
        //                 "invitejob.ivt_experience": add_ivtexperience, "invitejob.ivt_teachSchool": add_ivtteachSchool,
        //                 "invitejob.ivt_tel": add_ivttel, "invitejob.ivt_afterSchool": add_ivtafterSchool,
        //                 "invitejob.ivt_address": add_ivtaddress, "invitejob.ivt_createtime": add_ivtcreatetime,
        //                 "invitejob.ivt_content": add_ivtcontent
        //             },
        //             type: "post",
        //             dataType: "json",
        //             success: function (data) {
        //                 if ("yes" == data) {
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
        /* ---返回到招聘查询页面--- */
        function ivtAddToMgr() {
            window.location = "../RecruitServlet?action=all";
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
        <p><font size="1" color="#81644E"><b>招聘管理</b></font><font size="1">﹥</font><font size="1" color="#F00">添加应聘人信息</font></p>
    </div>
    <div id="center2" align="center">
        <form id="addform" action="../RecruitServlet?action=insert" method="post">
            <!-- /招聘添加表单以及按钮/ -->
            <table id="ctr2ivtadd" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <th>姓名：</th>
                    <td><input type="text" name="rName" id="rName"></td>
                    <th>性别：</th>
                    <td>
                        <input type="radio" name="rSex" id="add_ivtmale" value="男" checked="checked">
                        <label for="add_ivtmale">男</label>
                        <input type="radio" name="rSex" id="add_ivtfamale" value="女"><label for="add_ivtfamale">女</label>
                    </td>
                </tr>
                <tr>
                    <th>年龄：</th>
                    <td><input type="text" name="rAge" id="rAge"></td>
                    <th>出生日期：</th>
                    <td><input type="text" name="rBirth" id="rBirth"></td>
                </tr>
                <tr>
                    <th>应聘职位：</th>
                    <td><input type="text" name="rJob" id="rJob"></td>
                    <th>所学专业：</th>
                    <td><input type="text" name="rMajor" id="rMajor"></td>
                </tr>
                <tr>
                    <th>工作经验：</th>
                    <td><input type="text" name="rExperience" id="rExperience" value="无"></td>
                    <th>文化程度：</th>
                    <td>
                        <select name="rEducation" id="rEducation" style="width: 150px;">
                            <option value="研究生" selected="selected">研究生</option>
                            <option value="本科生">本科生</option>
                            <option value="专科生">专科生</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>联系电话：</th>
                    <td><input type="text" name="rTel" id="rTel"></td>
                    <th>毕业学校：</th>
                    <td><input type="text" name="rAfterSchool" id="rAfterSchool"></td>
                </tr>
                <tr>
                    <th>家庭住址：</th>
                    <td><input type="text" name="rAddress" id="rAddress"></td>
                    <th>登记时间：</th>
                    <td><input type="text" name="rTime" id="rTime" value="${date }"></td>
                </tr>
                <tr>
                    <th>个人简介：</th>
                    <td colspan="3"><textarea rows="6" cols="55" name="rDesp" id="rDesp">应届毕业生，无工作经验</textarea></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="保存">&nbsp;&nbsp;
            <input type="reset" value="重置">&nbsp;&nbsp;
            <input type="button" value="返回" onclick="ivtAddToMgr()">
        </form>
    </div>
    <!-- 页面中部结束 -->
    <!-- 页面底部 -->
    <img alt="img_down" src="../Images/down.jpg" width="801px" height="72px">
    <!-- 底部结束 -->
</div>
</body>
</html>
