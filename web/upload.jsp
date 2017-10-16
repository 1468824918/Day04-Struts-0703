<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传单个文件</title>
</head>
<body>
<h4>上传单个文件</h4>
<form action="/singleUpload.action" method="post" enctype="multipart/form-data">
    选择文件: <input type="file" name="photo"><br>
    <input type="submit" value="上传">
</form>
<%--显示错误信息--%>
<s:actionerror></s:actionerror>
</body>
</html>
