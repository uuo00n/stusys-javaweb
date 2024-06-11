<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <table border="2" bgcolor="ccceee" width="650">
        <tr bgcolor="CCCCCc" align="center">
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>体重</td>
            <td>身高</td>
        </tr>
        <tr align="center">
            <td>${requestScope.student.getId()}</td>
            <td>${requestScope.student.getName()}</td>
            <td>${requestScope.student.getSex()}</td>
            <td>${requestScope.student.getAge()}</td>
            <td>${requestScope.student.getWeight()}</td>
            <td>${requestScope.student.getHeight()}</td>
        </tr>
    </table>
</center>
</body>
</html>
