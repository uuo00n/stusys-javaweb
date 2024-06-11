<%--
  Created by IntelliJ IDEA.
  User: ljw
  Date: 2024/6/7
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生体质信息管理系统</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        #header {
            height: 80px;
            background-color: #336699;
            color: white;
            display: flex;
            align-items: center;
            padding: 0 20px;
        }

        #container {
            display: flex;
            height: calc(100vh - 80px); /* 全屏高度减去头部高度 */
        }

        #left {
            width: 140px;
            background-color: #f4f4f4;
            border-right: 1px solid #ccc;
            padding: 20px;
        }

        #right {
            flex: 1;
            border: none;
            background-color: white;
            padding: 20px;
        }

        a {
            text-decoration: none;
            color: #336699;
            transition: color 0.3s;
        }

        a:hover {
            color: #003366;
        }
    </style>
</head>
<body>
<header id="header">
    <jsp:include page="index_stu_title.jsp"/>
</header>
<div id="container">
    <nav id="left">
        <jsp:include page="index_stu_left.jsp"/>
    </nav>
    <iframe id="right" name="right" src="index_stu_right.jsp" scrolling="no"></iframe>
</div>
</body>
</html>
