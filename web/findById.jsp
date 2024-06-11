<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>按照学生ID查询学生信息</title>
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
            border-radius: 100px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
            text-align: center;
            transition: transform 0.3s ease; /* 添加过渡效果 */
        }

        form:hover {
            transform: translateY(-5px); /* 鼠标悬停时向上移动5像素 */
        }

        input[type="text"], input[type="submit"], input[type="reset"] {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: all 0.3s ease; /* 添加过渡效果 */
        }

        input[type="submit"], input[type="reset"] {
            background-color: #4D869C; /* 设置按钮背景色 */
            color: #fff; /* 设置按钮文字颜色 */
            cursor: pointer;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #7AB2B2; /* 设置鼠标悬停时背景色 */
        }
    </style>
</head>
<body>
<div>
    <form action="findById" method="post">
        <p>请输入要查询的学生ID:</p>
        <input type="text" name="id"><br><br>
        <input type="submit" value="提 交">
        <input type="reset" value="取 消">
    </form>
</div>
</body>
</html>
