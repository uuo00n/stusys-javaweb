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
            height: 180px;
            width: 500px;
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

        .error {
            color: red;
        }

        .alert {
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(255, 0, 0, 0.5);
            color: white;
            padding: 15px;
            border-radius: 5px;
            display: none;
            z-index: 999;
            animation: slideDown 0.5s ease forwards;
        }

        @keyframes slideDown {
            from { top: -100px; opacity: 0; }
            to { top: 0; opacity: 1; }
        }
    </style>
</head>
<body>
<div>
    <form action="findById" method="post" onsubmit="return validateForm()">
        <p>请输入要查询的学生ID:</p>
        <input type="text" name="id" id="id" title="学生ID只能包含数字"><br>
        <input type="submit" value="提 交">
        <input type="reset" value="取 消">
    </form>
</div>

<div class="alert" id="alert"></div>

<script>
    function validateForm() {
        var id = document.getElementById("id").value.trim();

        if (id === "") {
            showAlert("学生ID不能为空");
            return false;
        } else if (!/^\d+$/.test(id)) {
            showAlert("学生ID只能为数字");
            return false;
        } else {
            hideAlert();
            return true;
        }
    }

    function showAlert(message) {
        var alertBox = document.getElementById("alert");
        alertBox.textContent = message;
        alertBox.style.display = "block";
    }

    function hideAlert() {
        var alertBox = document.getElementById("alert");
        alertBox.style.display = "none";
    }
</script>
</body>
</html>
