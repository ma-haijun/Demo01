<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MHJ
  Date: 2019/8/11
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>班级详情</title>
    <link rel="stylesheet" href="<%=path%>/css/layui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.css">
    <style>
        th, td {
            text-align: center;
        }
    </style>
</head>
<body>
<div style="width: 100%;height: 80px;border: solid 1px">

</div>
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <th width="100px"><input type="checkbox" onclick="checkboxOnclick(this)" name="select_all" id="select_all"></th>
        <th width="150px">开设课程</th>
        <th width="200px">任课教师</th>
        <th width="150px">学期</th>
        <th width="150px">学分</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="list" varStatus="var">
        <tr>
            <td><input type="checkbox" name="select_one"></td>
            <td>${list.classId} </td>
            <td>${list.className}</td>
            <td>${list.className}</td>
            <td>${list.className}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- Contextual button for informational alert messages -->
<button type="button" class="btn btn-info" style="width:50px;margin-left: 380px">添加</button>
<button type="button" class="btn btn-info" style="width:70px;">删除</button>
</body>
</html>
