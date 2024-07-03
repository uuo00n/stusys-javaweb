<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学生信息界面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border: 2px solid #ccc;
            border-radius: 5px; /* 添加圆角 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */
        }

        th, td {
            padding: 12px; /* 增加填充 */
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #abbcda; /* 更改表头背景色 */
            color: #333;
            font-size: 16px; /* 增加字体大小 */
        }

        tr:nth-child(even) {
            background-color: #f8f8f8; /* 更改偶数行背景色 */
        }

        tr:hover {
            background-color: #eaeaea; /* 增加悬停效果 */
        }

        caption {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #333333; /* 更改标题字体颜色 */
        }

        .record-info {
            text-align: center;
            margin-top: 20px;
            color: #666666;
        }
    </style>
</head>
<body>
<table>
    <caption>学生信息表</caption>
    <tr>
        <th>记录条数</th>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>体重</th>
        <th>身高</th>
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
        </tr>
    </c:forEach>
</table>
<div class="record-info">共 ${requestScope.list.size()} 条记录</div>
</body>
</html>
