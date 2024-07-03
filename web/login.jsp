<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录页面</title>
    <!-- 引入Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('image/login-bg.png');
            background-size: cover;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 50px 65px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 450px;
        }
        .btn-custom {
            background-color: #3e2e75;
            color: white;
        }
        .btn-custom:hover {
            background-color: #2d2057;
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
    <h4 class="text-center" style="margin-bottom: 30px;">学生体质信息管理系统</h4>
    <form action="loginServlet" method="post">
        <div class="form-group">
            <label for="username">用户名:</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">密码:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="captcha">验证码:</label>
            <div class="d-flex align-items-center">
                <input type="text" class="form-control mr-2" id="captcha" name="captcha" required>
                <img src="captchaServlet" onclick="this.src='captchaServlet?'+Math.random();" alt="验证码" style="border-radius: .25rem">
            </div>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-custom btn-block" value="登录">
        </div>
        <div class="error">
            ${errorMessage}
        </div>
    </form>
</div>

<!-- 引入Bootstrap JS和依赖 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
