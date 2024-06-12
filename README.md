# 学生信息管理系统

## 项目简介

本项目是一个学生信息管理系统，使用 Java Servlet 和 JSP 技术构建。系统支持添加、删除、更新和查询学生信息。

## 环境要求

- JDK 8 或更高版本
- Apache Tomcat 9 或更高版本
- Maven（可选）

## 部署说明

1. 克隆或下载此项目到本地。
   
    ```bash
    [git clone https://github.com/yourusername/student-info-management.git](https://github.com/uuo00n/stusys-javaweb.git)
    ```

2. 使用 IDE（如 Eclipse 或 IntelliJ IDEA）打开项目。

3. 确保 `web.xml` 文件中的 Servlet 配置正确：

    ```xml
    <servlet>
        <servlet-name>findAll</servlet-name>
        <servlet-class>com.dlvtc.controller.SelectAllServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>findAll</servlet-name>
        <url-pattern>/main/findAll</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>manageStudent</servlet-name>
        <servlet-class>com.dlvtc.controller.ManageStudentServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>manageStudent</servlet-name>
        <url-pattern>/main/manageStudent</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>findById</servlet-name>
        <servlet-class>com.dlvtc.controller.SelectByIdServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>findById</servlet-name>
        <url-pattern>/findById</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>insert</servlet-name>
        <servlet-class>com.dlvtc.controller.InsertServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>insert</servlet-name>
        <url-pattern>/insert</url-pattern>
    </servlet-mapping>
    ```

4. 将项目部署到 Tomcat 服务器。可以在 IDE 中配置 Tomcat 服务器，并将项目添加到服务器中运行。

5. 启动 Tomcat 服务器后，打开浏览器并访问 `http://localhost:8080/stusys-javaweb`。

## 使用说明

- **查看学生信息**：访问 `http://localhost:8080/stusys-javaweb/main/findAll`，查看所有学生信息。
- **添加学生信息**：访问 `http://localhost:8080/stusys-javaweb/addStudent.jsp`，填写表单并提交以添加新学生。
- **编辑学生信息**：在学生列表页面点击“编辑”链接，进入编辑页面进行修改。
- **删除学生信息**：在学生列表页面点击“删除”链接，删除相应的学生信息。

## 贡献

欢迎任何形式的贡献。如果你有任何建议或发现了问题，请提交 issue 或拉取请求（pull request）。

## 许可证

此项目使用 MIT 许可证。有关更多信息，请参阅 LICENSE 文件。
