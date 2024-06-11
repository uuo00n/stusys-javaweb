<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加任意学生的提交页面</title>
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

        form {
            backdrop-filter: blur(13px);
            background-color: rgba(244, 249, 249, 0);
            border-radius: 20px;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
            transition: transform 0.3s ease; /* 添加过渡效果 */
        }

        form:hover {
            transform: translateY(-5px); /* 鼠标悬停时表单向上移动5像素 */
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
            transition: border-color 0.3s ease; /* 添加过渡效果 */
        }

        input[type="text"]:focus {
            border-color: #007bff; /* 输入框获取焦点时边框颜色变为蓝色 */
        }

        input[type="submit"], input[type="reset"] {
            width: auto;
            margin-top: 20px;
            margin-right: 5px;
            background-color: #4D869C; /* 设置按钮背景色 */
            color: #fff; /* 设置按钮文字颜色 */
            cursor: pointer;
            transition: background-color 0.3s ease; /* 添加过渡效果 */
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #7AB2B2; /* 设置鼠标悬停时背景色 */
        }
    </style>
</head>
<body>
<form action="insert" method="post">
    <table>
        <tr>
            <td>学号</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" name="sex"></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>体重</td>
            <td><input type="text" name="weight"></td>
        </tr>
        <tr>
            <td>身高</td>
            <td><input type="text" name="height"></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="取消">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
