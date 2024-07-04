<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">学生信息管理系统</h1>

<div align="center">

[![Static Badge](https://img.shields.io/badge/Prod%20by%20uuo00n-8A2BE2?style=flat)](https://github.com/uuo00n)

</div>

<div align="center">

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/uuo00n/Enterprise-Personnel-Management-System/blob/master/LICENSE)
[![使用IntelliJ IDEA开发维护](https://img.shields.io/badge/IntelliJ%20IDEA-开发环境-blue.svg)](https://www.jetbrains.com)
[![使用IntelliJ IDEA开发维护](https://img.shields.io/badge/phpstudy-服务环境-blue.svg)](https://www.jetbrains.com)
[![JDK-8+](https://img.shields.io/badge/JDK-1.8-green.svg)](https://www.oracle.com/cn/java/technologies/downloads/)
[![mysql-5.7](https://img.shields.io/badge/MySql-5.7-blue.svg)](https://www.mysql.com/cn/)
[![Static Badge](https://img.shields.io/badge/Bootstrap-4.5.2-7952b3?style=flat-square.svg)](https://getbootstrap.com/)


</div>

## 项目简介

本项目是一个学生信息管理系统作业，使用MVC模型开发，前端部分使用了bootstrap第三方库,后端使用了Java Servlet
,JSP等技术构建。系统支持添加、删除、更新和查询学生信息。

## 开发工具
- Java 8 或更高版本
- phpstudy-pro（MySQL5.7）
- Apache Tomcat 8 
- IDE（如 Eclipse 或 IntelliJ IDEA）
- Navicat Premium 
- git

## 环境要求

- JDK 8 或更高版本
- MySQL5.7 数据库
- Apache Tomcat 8 或更高版本
- Maven（可选）

## 部署说明

1. 克隆或下载此项目到本地。

   github仓库地址：
    ```bash
    git clone https://github.com/uuo00n/stusys-javaweb.git
    ```
   gitee仓库地址:
   ```bash
   git clone https://gitee.com/huang-junbo/stusys-javaweb.git
   ```

2. 使用 IDE（如 Eclipse 或 IntelliJ IDEA）打开项目。

3. 确保 `web.xml` 文件中的 Servlet 配置正确：

    ```xml
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

    <servlet>
        <servlet-name>deleteStudent</servlet-name>
        <servlet-class>com.dlvtc.controller.DeleteStudentServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>deleteStudent</servlet-name>
        <url-pattern>/deleteStudent</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>updateStudent</servlet-name>
        <servlet-class>com.dlvtc.controller.UpdateStudentServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>updateStudent</servlet-name>
        <url-pattern>/updateStudent</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>updateStudentDone</servlet-name>
        <servlet-class>com.dlvtc.controller.UpdateStudentDoneServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>updateStudentDone</servlet-name>
        <url-pattern>/updateStudentDone</url-pattern>
    </servlet-mapping>

4. 将项目部署到 Tomcat 服务器。可以在 IDE 中配置 Tomcat 服务器，并将项目添加到服务器中运行。

5. 启动 Tomcat 服务器后，打开浏览器并访问 `http://localhost:8080/stusys-javaweb`。

## 贡献

欢迎任何形式的贡献。如果你有任何建议或发现了问题，请提交 issue 或拉取请求（pull request）。

## 许可证

此项目使用 MIT 许可证。有关更多信息，请参阅 LICENSE 文件。
