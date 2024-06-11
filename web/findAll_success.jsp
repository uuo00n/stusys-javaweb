<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生信息界面</title>
</head>
<body>
<center>
    <table border="2" bgcolor="ccceee" width="650">
        <tr bgcolor="CCCCCC" align="center">
            <td>记录条数</td>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>体重</td>
            <td>身高</td>
        </tr>
        <c:forEach items="${requestScope.list}" var="item" varStatus="status">
            <tr align="center">
                <td>${status.index + 1}</td>
                <td>${item.getId()}</td>
                <td>${item.getName()}</td>
                <td>${item.getsex()}</td>
                <td>${item.getAge()}</td>
                <td>${item.getWeight()}</td>
                <td>${item.getHight()}</td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
