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
    <title>班级管理1</title>
    <link rel="stylesheet" href="<%=path%>/css/layui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.css">
    <style>
        .search {
            height: 40px;
            margin-top: 25px;
            display: inline-block
        }

        th, td {
            text-align: center;
        }
    </style>
    <%-- <script>

         function checkboxOnclick(checkbox) {
             if (checkbox.checked == true) {
                 var obj = document.getElementsByName("select_one");
                 var value = obj.checked();
                 if (value==false){
                     obj.checked = true;
                 }
             }
         }
     </script>--%>
</head>
<body>
<div style="width: 300px;margin-left: 330px" class="search">
    <input type="text" name="title" class="form-control" style="display: inline" placeholder="请输入班级名">
</div>
<div style="width: 55px;" class="search">
    <button type="button" class="btn btn-info">搜索</button>
</div>
<div style="width: 100px;" class="search">
    <button type="button" class="btn btn-info">重置</button>
</div>

<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <th width="100px"><input type="checkbox" name="select_all" id="select_all"></th>
        <th width="150px">班级编号</th>
        <th width="200px">班级名</th>
        <th width="150px">操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="list" varStatus="var">
        <tr>
            <td><input type="checkbox" name="select_one"></td>
            <td>${list.classId} </td>
            <td>${list.className}</td>
            <td><a href="<%=path%>/calssdertails?classid=${list.classId}">查看详情</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- Contextual button for informational alert      messages -->
<button type="button" class="btn btn-info" style="width:50px;margin-left: 340px">首页</button>
<button type="button" class="btn btn-info" style="width:70px;">上一页</button>
<button type="button" class="btn btn-info" style="width:70px;">下一页</button>
<button type="button" class="btn btn-info" style="width:50px;">末页</button>
<button type="button" class="btn btn-info" style="width:50px;">添加</button>
<button type="button" class="btn btn-info" style="width:50px;">修改</button>
<button type="button" class="btn btn-info" style="width:50px;">删除</button>

</body>
</html>
