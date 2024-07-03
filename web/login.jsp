<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #E5EFF6; /* 浅绿色背景色 */
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group img {
            display: block;
            margin-top: 10px;
            cursor: pointer;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group input[type="submit"] {
            width: 100%;
            background-color: #5CB85C; /* 按钮背景色 */
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #4CAE4C;
        }
        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>登录</h2>
    <form action="loginServlet" method="post">
        <div class="form-group">
            <label for="username">用户名:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">密码:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="captcha">验证码:</label>
            <input type="text" id="captcha" name="captcha" required>
            <img src="captchaServlet" onclick="this.src='captchaServlet?'+Math.random();" alt="验证码">
        </div>
        <div class="form-group">
            <input type="submit" value="登录">
        </div>
        <div class="error">
            ${errorMessage}
        </div>
    </form>
</div>
</body>
</html>
