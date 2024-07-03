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
        }

        .alert {
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 300px;
            padding: 15px;
            background-color: #f44336;
            color: white;
            border-radius: 5px;
            box-sizing: border-box;
            display: none;
            z-index: 1000;
            animation: slideIn 0.5s ease forwards, fadeOut 0.5s 3.5s forwards;
        }

        @keyframes slideIn {
            from {
                top: -100px;
                opacity: 0;
            }
            to {
                top: 0;
                opacity: 1;
            }
        }

        @keyframes fadeOut {
            from {
                opacity: 1;
            }
            to {
                opacity: 0;
            }
        }

        form {
            margin-top: 50px;
            padding: 20px;
            background-color: #f0f1f3;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            margin-left: auto;
            margin-right: auto;
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
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #007bff;
        }

        input[type="submit"], input[type="reset"] {
            width: auto;
            padding: 10px 20px;
            margin: 20px 5px 0 5px;
            background-color: #3e2e75;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            border: none;
            border-radius: 5px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #2d2057;
        }

        .button-group {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="alert" id="alert"></div>
<form action="insert" method="post" onsubmit="return validateForm() && handleSubmitResponse()">
    <h2>添加新学生信息</h2>
    <table>
        <tr>
            <td>学号</td>
            <td><input type="text" name="id" id="id" oninput="validateId()"></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="name" id="name" oninput="validateName()"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" name="sex" id="sex" oninput="validateSex()"></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" name="age" id="age" oninput="validateAge()"></td>
        </tr>
        <tr>
            <td>体重</td>
            <td><input type="text" name="weight" id="weight" oninput="validateWeight()"></td>
        </tr>
        <tr>
            <td>身高</td>
            <td><input type="text" name="height" id="height" oninput="validateHeight()"></td>
        </tr>
        <tr class="button-group">
            <td colspan="2">
                <input type="submit" value="提交" id="submitBtn">
                <input type="reset" value="取消">
            </td>
        </tr>
    </table>
</form>

<script>
    function validateForm() {
        clearAlert(); // 清除之前的警告信息

        var id = document.getElementById("id").value.trim();
        var name = document.getElementById("name").value.trim();
        var sex = document.getElementById("sex").value.trim();
        var age = document.getElementById("age").value.trim();
        var weight = document.getElementById("weight").value.trim();
        var height = document.getElementById("height").value.trim();

        if (id === "" || name === "" || sex === "" || age === "" || weight === "" || height === "") {
            showAlert("学号、姓名、性别、年龄、体重和身高不能为空！", "error");
            return false;
        }

        if (isNaN(id)) {
            showAlert("学号必须为数字！", "error");
            return false;
        }

        if (sex !== "男" && sex !== "女") {
            showAlert("性别必须为'男'或'女'！", "error");
            return false;
        }

        return true;
    }

    function showAlert(message, type) {
        var alertBox = document.getElementById("alert");
        alertBox.textContent = message;
        alertBox.className = "alert " + type;
        alertBox.style.display = "block";
    }

    function clearAlert() {
        var alertBox = document.getElementById("alert");
        alertBox.textContent = "";
        alertBox.style.display = "none";
    }

    function validateId() {
        var id = document.getElementById("id").value.trim();
        var idPattern = /^\d{10}$/; // 匹配10位数字的正则表达式

        if (id === "") {
            showAlert("学号不能为空！", "error");
        } else if (!idPattern.test(id)) {
            showAlert("学号必须为10位数字且不能包含字母！", "error");
        } else {
            clearAlert();
        }
    }

    function validateName() {
        var name = document.getElementById("name").value.trim();
        if (name === "") {
            showAlert("姓名不能为空！", "error");
        } else {
            clearAlert();
        }
    }

    function validateSex() {
        var sex = document.getElementById("sex").value.trim();
        if (sex !== "男" && sex !== "女") {
            showAlert("性别必须为'男'或'女'！", "error");
        } else {
            clearAlert();
        }
    }

    function validateAge() {
        var age = document.getElementById("age").value.trim();
        var ageValue = Number(age);

        if (age === "") {
            showAlert("年龄不能为空！", "error");
        } else if (isNaN(ageValue)) {
            showAlert("年龄必须为数字！", "error");
        } else if (ageValue < 0 || ageValue > 255) {
            showAlert("年龄必须在0到255之间！", "error");
        } else {
            clearAlert();
        }
    }

    function validateWeight() {
        var weight = document.getElementById("weight").value.trim();
        if (weight === "") {
            showAlert("体重不能为空！", "error");
        } else if (isNaN(weight) || weight > 999) {
            showAlert("体重不能超过999且必须是数字！", "error");
        } else {
            clearAlert();
        }
    }

    function validateHeight() {
        var height = document.getElementById("height").value.trim();
        if (height === "") {
            showAlert("身高不能为空！", "error");
        } else if (isNaN(height) || height > 999) {
            showAlert("身高不能超过999且必须是数字！", "error");
        } else {
            clearAlert();
        }
    }

    // 修改onsubmit函数，接收后端返回的数据
    function handleSubmitResponse(response) {
        if (response === -1) {
            showAlert("已存在相同学号的记录！", "error");
            return false; // 阻止表单提交
        }
        return true; // 允许表单提交
    }
</script>
</body>
</html>
