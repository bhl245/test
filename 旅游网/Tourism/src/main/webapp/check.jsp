<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/4
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("lineList1")==null){
        response.sendRedirect("allLine1.action");
        return;
    }
%>