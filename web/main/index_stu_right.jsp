<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>服务器信息显示</title>
</head>
<body>
<table border="1">
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
</body>
</html>
