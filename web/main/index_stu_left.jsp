<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菜单页面</title>
    <style>
        img {
            vertical-align: middle;
        }

        a {
            display: inline-flex;
            align-items: center;
        }

        p {
            line-height: 25px; /* 调整这个值来控制文本和图标的对齐 */
        }

        footer {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<p><a href="findAll" target="right"><img src="../image/icon-list.png" width="15" height="15"> 列出全部学生</a></p>
<p><a href="../findById.jsp" target="right"><img src="../image/icon-search.png" width="20" height="20"> 按ID查询学生</a></p>
<p><a href="../insert.jsp" target="right"><img src="../image/icon-add.png" width="20" height="20"> 新添加学生</a></p>
<p><a href="manageStudent" target="right"><img src="../image/icon-edit.png" width="15" height="15"> 管理学生信息</a></p>

<!-- 添加退出登录按钮 -->
<p style="text-align: center"><a href="../logout.jsp">退出登录</a></p>

<footer>
    © 2024 <a href="https://github.com/uuo00n" target="_blank">uuo00n</a> & <a href="https://github.com/pig40" target="_blank">pig40</a>. <br>
    All rights reserved.
</footer>
</body>
</html>
