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
            text-align: center;
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

        /* 弹窗样式 */
        .alert {
            display: none;
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            background-color: #dc3545;
            color: white;
            padding: 15px 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            animation: slideIn 0.5s ease-in-out;
        }

        /* 弹窗动画 */
        @keyframes slideIn {
            from {
                top: -50px;
                opacity: 0;
            }
            to {
                top: 0;
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<center>
    <form action="updateStudentDone" method="post" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>学号</td>
                <td><input type="text" name="id" id="studentId" value="${student.getId()}" oninput="checkId()"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" id="name" value="${student.getName()}" oninput="validateName()"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="text" name="sex" id="sex" value="${student.getSex()}" oninput="validateSex()"></td>
            </tr>
            <tr>
                <td>年龄</td>
                <td><input type="text" name="age" id="age" value="${student.getAge()}" oninput="validateAge()"></td>
            </tr>
            <tr>
                <td>体重</td>
                <td><input type="text" name="weight" id="weight" value="${student.getWeight()}"
                           oninput="validateWeight()"></td>
            </tr>
            <tr>
                <td>身高</td>
                <td><input type="text" name="height" id="height" value="${student.getHeight()}"
                           oninput="validateHeight()"></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="提交" id="submitBtn">
                    <input type="reset" value="取消">
                </td>
            </tr>
        </table>
    </form>
    <!-- 弹窗 -->
    <div class="alert" id="alertMessage"></div>
</center>
<script>
    function validateForm() {
        clearAlert(); // 清除之前的警告信息

        var id = document.getElementById("studentId").value.trim();
        var name = document.getElementById("name").value.trim();
        var sex = document.getElementById("sex").value.trim();
        var age = document.getElementById("age").value.trim();
        var weight = document.getElementById("weight").value.trim();
        var height = document.getElementById("height").value.trim();

        if (id === "" || name === "" || sex === "" || age === "" ||
            weight === "" || height === "") {
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
        var alertBox = document.getElementById("alertMessage");
        alertBox.textContent = message;
        alertBox.className = "alert " + type;
        alertBox.style.display = "block";
    }

    function clearAlert() {
        var alertBox = document.getElementById("alertMessage");
        alertBox.textContent = "";
        alertBox.style.display = "none";
    }

    function checkId() {
        var studentId = document.getElementById("studentId").value;
        // 检查学号是否改变
        if (studentId != "${student.getId()}") {
            var alertMessage = document.getElementById("alertMessage");
            alertMessage.innerHTML = "学生ID不可修改！";
            alertMessage.style.display = "block";
            setTimeout(function () {
                alertMessage.style.display = "none";
            }, 3000); // 3秒后隐藏弹窗
            return false;
        }
        return true;
    }

    function validateName() {
        var name = document.getElementById("name").value.trim();
        if (name === "") {
            showAlert("姓名不能为空！", "error");
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

    function validateSex() {
        var sex = document.getElementById("sex").value.trim();
        if (sex !== "男" && sex !== "女") {
            showAlert("性别必须为'男'或'女'！", "error");
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

</script>
</body>
</html>
