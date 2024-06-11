<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面标题</title>
    <style>
        h1 img {
            vertical-align: middle;
            margin-top: -10px;
        }

        /* 取消<a>标签的选中效果 */
        a {
            text-decoration: none; /* 移除下划线 */
            color: inherit; /* 继承父元素的文本颜色 */
            outline: none; /* 移除默认轮廓 */
            background-color: transparent; /* 将背景颜色设置为透明 */
        }

        a:hover {
            background-color: transparent; /* 鼠标悬停时背景颜色不变 */
        }
    </style>
</head>
<body>
<center>
    <a href="index_stu.jsp">
        <h1><img src="../image/logo.png" width="50" height="50">&nbsp;&nbsp;学生体质信息管理系统</h1>
    </a>
</center>
</body>
</html>
