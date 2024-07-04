<%--
  Created by IntelliJ IDEA.
  User: huang
  Date: 2024/7/4
  Time: 上午10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 调用 LogoutServlet 来处理登出逻辑
    response.sendRedirect("logoutServlet");
%>

