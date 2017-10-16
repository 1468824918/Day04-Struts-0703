<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>欢迎</title>
  </head>
  <body>
  <a href="upload.jsp">单文件上传</a><br>
  <a href="download.action">文件下载</a><br>
  <a href="download.action?fileName='11.jpg'">文件下载jpg</a><br>
  <a href="download.action?fileName=Struts2.xmind">文件下载Struts2.xmind</a><br>

  <a href="login.jsp">登录界面</a><br>

  <%--显示错误信息--%>
  <s:actionerror></s:actionerror>
  <s:fielderror></s:fielderror>
  </body>
</html>
