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
            background-color: rgba(244, 249, 249, 0.8); /* 设置背景颜色透明度 */
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
            transition: transform 0.3s ease; /* 添加过渡效果 */
            height: 580px;
            width: 500px;
            box-sizing: border-box;
        }

        form:hover {
            transform: translateY(-5px); /* 鼠标悬停时表单向上移动5像素 */
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            text-align: center;
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
            padding: 10px 20px;
            margin: 20px 5px 0 5px;
            background-color: #4D869C; /* 设置按钮背景色 */
            color: #fff; /* 设置按钮文字颜色 */
            cursor: pointer;
            transition: background-color 0.3s ease; /* 添加过渡效果 */
            border: none; /* 移除按钮边框 */
            border-radius: 5px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #7AB2B2; /* 设置鼠标悬停时背景色 */
        }

        .button-group {
            text-align: center; /* 按钮组居中对齐 */
        }
    </style>
</head>
<body>
<form action="insert" method="post">
    <h2>添加新学生信息</h2> <!-- 添加标题 -->
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
        <tr class="button-group">
            <td colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="取消">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
