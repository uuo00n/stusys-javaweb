<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>插入学生信息成功</title>
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

        .container {
            background-color: #fff; /* 设置容器背景色 */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
            text-align: center;
            opacity: 0; /* 初始时设置不可见 */
            transition: opacity 0.5s ease; /* 添加过渡效果 */
        }

        .container.show {
            opacity: 1; /* 在展示时逐渐显示 */
        }

        h1 {
            color: #4D869C; /* 设置标题颜色为绿色 */
        }

        p {
            margin-top: 20px;
            color: #333333; /* 设置文本颜色 */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>插入学生信息成功</h1>
    <p>学生信息已成功插入！</p>
</div>

<script>
    // 在页面加载完成后，将容器的类名修改为"show"，以触发动画效果
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelector(".container").classList.add("show");
    });
</script>

</body>
</html>
