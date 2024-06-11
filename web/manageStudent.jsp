<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生信息界面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #CDE8E5; /* 设置标题背景色 */
            color: #333333; /* 设置标题文字颜色 */
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* 设置偶数行背景色 */
        }

        tr:hover {
            background-color: #d9d9d9; /* 设置鼠标悬停时背景色 */
        }

        a {
            text-decoration: none;
            color: #7AB2B2; /* 设置链接颜色 */
        }

        caption {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #333333; /* 更改标题字体颜色 */
        }
    </style>
</head>
<body>
<center>
    <table>
        <caption>编辑学生信息</caption>
        <tr>
            <th>记录条数</th>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>休重</th>
            <th>身高</th>
            <th>删除</th>
            <th>编辑</th>
        </tr>
        <c:forEach items="${requestScope.list}" var="item" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${item.getId()}</td>
                <td>${item.getName()}</td>
                <td>${item.getSex()}</td>
                <td>${item.getAge()}</td>
                <td>${item.getWeight()}</td>
                <td>${item.getHeight()}</td>
                <td><a href="../deleteStudent?Id=${item.getId()}">删除</a></td>
                <td><a href="../updateStudent?Id=${item.getId()}">编辑</a></td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
