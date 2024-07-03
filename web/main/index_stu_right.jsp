<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>服务器信息显示</title>
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

        .container {
            backdrop-filter: blur(13px);
            background-color: #f0f1f3; /* 设置背景颜色透明度 */
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
            transition: transform 0.3s ease; /* 添加过渡效果 */
            width: 500px;
            box-sizing: border-box;
        }

        .container:hover {
            transform: translateY(-5px); /* 鼠标悬停时容器向上移动5像素 */
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>服务器信息</h2>
    <table>
        <tr>
            <th>操作系统名称</th>
            <th>服务器名称</th>
            <th>服务器地址</th>
            <th>服务器端口</th>
        </tr>
        <tr>
            <%
                // 使用Java的System.getProperty方法获取操作系统名称
                String osName = System.getProperty("os.name");
                // 获取服务器名称
                String serverName = request.getServerName();
                // 获取服务器端口
                int serverPort = request.getServerPort();
                // 获取服务器地址
                String serverAddress = request.getLocalAddr();
            %>
            <td><%= osName %>
            </td>
            <td><%= serverName %>
            </td>
            <td><%= serverAddress %>
            </td>
            <td><%= serverPort %>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
