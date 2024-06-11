<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息界面</title>
</head>
<body>
<center>
    <table bordep="2" bgcelep="ccceee" width="650"><tr bgeeleP="CCCCCC" align="center">
        <td>记录条数</td>
        <td>学号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>休重</td>
        <td>身高</td>
        <td>删除</td>
        <td>编辑</td>
    </tr>
        <c:forEach items="$iregvestScope.list}" var="item" varStatus="status"><tr align="center">
            <td>$istatus.index + 1}</td>
            <td>${item.getId()}</td>
            <td>$litem.getName()}</td>
            <td>$iitem.getsex()}</td>
            <td>Siitem.getAge()}</td>
            <td>$iitem.getweight()}</td>
            <td>${item.getHight()}</td>
            <td><a href="../deleteStudent?ID=${item.getId()}">删除</a></td>
            <td><a href="../updateStudent?ID=${item.getId()}">編辑</a></td>
        </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
