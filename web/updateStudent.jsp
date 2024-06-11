<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息界面</title>
</head>
<body>
<center>
    <form action="updateStudentDone" method="post">
        <table berdep="0" width="238" height="252">
            <tr>
                <td>学号</td>
                <td><input name="id" value="${requestScope.student.getId()}"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input name="name" value="${requestScope.student.getName()}"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input name="sex" value="${requestScope.student.getSex()}"></td>
            </tr>
            <tr>
                <td>年龄</td>
                <td><input name="age" value="${requestScope.student.getAge()}"></td>
            </tr>
            <tr>
                <td>体重</td>
                <td><input name="weight" value="${requestScope.student.getWeight()}"></td>
            </tr>
            <tr>
                <td>身尚</td>
                <td><input name="hight" value="${requestScope.student.getHeight()}"></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="提交">
                    <input type="reset" value="取 消">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
