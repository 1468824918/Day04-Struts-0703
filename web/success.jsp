<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功</title>
</head>
<body>
<h4>恭喜,提交成功</h4>
<h3>用户名:${username}</h3>
<h3>密码:${password}</h3>
<h3>取Action属性,直接按属性名获取</h3>
用户名:<s:property value="username"/>

<h3>取request中的属性集合的某个key值</h3>
<s:property value="#attr.request_username"/>

<h3>取request中属性集合的某个key值,需要加application的前缀</h3>
<s:property value="#application.application_username"/>

<h3>取session中map的某个key值,也需要加session的前缀</h3>
<s:property value="#session.session_username"/>

<h3>取parameter中map某个key值,也需要加parameter的前缀</h3>
<s:property value="#parameters.username"/>

<h3>先通过set标签更改username变量的值,在调用property获取一下他的值;没有定义scope时,默认认为是request域中</h3>
<s:set var="username" value="'张三'"/>
<s:property value="#username"/>

<h3>通过set标签在session域中添加一个username属性</h3>
<s:set var="username" value="'李四'" scope="session"/>
<s:property value="#session.username"/>

<h3>通过set标签在application域中添加一个username属性,取值用username;
    如果value对应的值没有用单引号包裹起来,则默认认为是一个变量, 去action属性集合中查找有没有定义该变量</h3>
<s:set var="username" value="username" scope="application"/>
<s:property value="#application.username"/>

<h3>取request session application中的属性同名对象</h3>
<s:property value="#attr.name"/>
<s:property value="#session.name"/>
<s:property value="#application.name"/>

<h3>#号构建map对象</h3>
<s:set name="foobar" value="#{'foo1':'吃饭','foo2':'睡觉'}"/>
<s:property value="#foobar['foo1']"/>

<h3>%{}将大括号中的内容认为是ognl表达式</h3>
<%--不会输出--%>
<s:property value="%{姓名}"/>

<h3>输出一个list集合</h3>
<s:property value="{'吃法','睡觉','打豆豆'}"/></body>
</html>
