<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息详情</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .table-container {
            width: 100%; /* 设置容器宽度为100% */
            display: flex;
            justify-content: center; /* 水平居中 */
        }

        table {
            width: 120%; /* 调整表格宽度 */
            border-collapse: collapse;
            border: 2px solid #ccc;
            background-color: #CDE8E5; /* 设置表格背景色 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */
            border-radius: 8px; /* 添加边框圆角 */
            transition: all 0.3s ease; /* 添加过渡效果 */
        }

        th, td {
            padding: 12px; /* 增加单元格内边距 */
            border: 1px solid #ccc;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* 设置偶数行背景色 */
        }

        tr:first-child {
            background-color: #CDE8E5; /* 设置表头背景色 */
            color: #333; /* 设置表头文字颜色 */
            font-weight: bold; /* 设置表头文字加粗 */
        }

        tr:first-child td {
            background-color: #CDE8E5; /* 设置表头单元格背景色 */
        }

        tr:hover {
            background-color: #ddd; /* 设置鼠标悬停时背景色 */
        }
    </style>
</head>
<body>
<div class="table-container">
    <table border="2">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>体重</td>
            <td>身高</td>
        </tr>
        <tr>
            <td>${requestScope.student.getId()}</td>
            <td>${requestScope.student.getName()}</td>
            <td>${requestScope.student.getSex()}</td>
            <td>${requestScope.student.getAge()}</td>
            <td>${requestScope.student.getWeight()}</td>
            <td>${requestScope.student.getHeight()}</td>
        </tr>
    </table>
</div>
</body>
</html>
