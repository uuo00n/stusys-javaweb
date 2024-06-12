<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息界面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            backdrop-filter: blur(13px);
            background-color: rgba(244, 249, 249, 0);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            text-align: right;
        }

        input[type="text"], input[type="submit"], input[type="reset"] {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-top: 5px;
            margin-bottom: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"], input[type="reset"] {
            width: auto;
            margin-top: 20px;
            margin-right: 5px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #007bff; /* 设置鼠标悬停时背景色 */
            color: #fff; /* 设置鼠标悬停时文字颜色 */
        }
    </style>
</head>
<body>
<center>
    <form action="updateStudentDone" method="post">
        <table>
            <tr>
                <td>学号</td>
                <td><input type="text" name="id" value="${student.getId()}"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" value="${student.getName()}"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="text" name="sex" value="${student.getSex()}"></td>
            </tr>
            <tr>
                <td>年龄</td>
                <td><input type="text" name="age" value="${student.getAge()}"></td>
            </tr>
            <tr>
                <td>体重</td>
                <td><input type="text" name="weight" value="${student.getWeight()}"></td>
            </tr>
            <tr>
                <td>身高</td>
                <td><input type="text" name="height" value="${student.getHeight()}"></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="提交">
                    <input type="reset" value="取消">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
