<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>School 学生体质信息管理系统</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Candara Light"; /* 更换为您的圆润细体字体 */
            overflow-x: hidden; /* 隐藏水平滚动条 */
        }

        #header {
            height: 80px; /* 将高度减小为 80px */
            background-color: #abbcda; /* 使用线性渐变背景色 */
            color: #333333;
            display: flex;
            align-items: center;
            padding: 0 20px; /* 保持左右内边距为 20px */
            border-bottom: 1px solid #ccc; /* 添加分割线 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 添加阴影 */
        }



        #container {
            display: flex;
            height: calc(100vh - 80px); /* 全屏高度减去头部高度 */
        }

        #left {
            width: 60px; /* 初始宽度为 60px */
            padding: 20px;
            position: relative;
            transition: width 0.3s; /* 添加过渡效果 */
            background-color: #abbcda;
        }

        #left:hover {
            width: 200px; /* 悬停时宽度变为 200px */
        }
        #right {
            flex: 1;
            border: none;
            padding: 20px;
            position: relative;
            background-color: #EEF7FF;
            backdrop-filter: blur(10px); /* 添加模糊效果 */
        }


        a {
            text-decoration: none;
            color: #333333;
            transition: color 0.3s;
            display: block;
            margin-bottom: 10px;
            border-radius: 5px;
            text-align: center; /* 按钮文本居中 */
            font-weight: bold; /* 加粗按钮文本 */
        }

        a:hover {
            background-color: white; /* 悬停时背景色 */
            color: #333333; /* 悬停时文本色 */
        }

    </style>
</head>
<body>
<header id="header">
    <jsp:include page="index_stu_title.jsp"/>
</header>
<div id="container">
    <nav id="left">
        <jsp:include page="index_stu_left.jsp"/>
    </nav>
    <iframe id="right" name="right" src="index_stu_right.jsp"  scrolling="no"></iframe>
</div>
</body>
</html>
