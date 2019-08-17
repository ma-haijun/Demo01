<%--
  Created by IntelliJ IDEA.
  User: MHJ
  Date: 2019/8/8
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.4.2.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=path%>/css/layui.css">
    <script>
        function reloadimg(t){
            t.src = "<%=path%>/imgservlet?imgId ="+ new Date().getTime();

        }
    </script>
</head>
<body>
<div style="width: 400px;margin: 0px auto">
    <form method="post" action="<%=path %>/checkUser">
        <div class="form-group">
            <h1 style="margin-left:100px; color: #2e6da4">欢迎登陆！</h1>
            <label for="exampleInputEmail1">用户名</label>
            <input type="text" name="username" class="form-control" id="exampleInputEmail1" placeholder="Username">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">密码</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>

        <!-- 验证码开始-->
        <div class="row" >
            <div class="col-xs-5">
                <label for="exampleInputPCheckCode">验证码</label>
                <div style="display: inline-block"><input name="checkCode" type="text" class="form-control" id="exampleInputPCheckCode" placeholder="Security code"></div>
                <div style="display: inline-block"><img  onclick="reloadimg(this)"  title="单击刷新" style = "width: 60px;height: 25px;" src="<%=path %>/checkCode"/></div>
            </div>
        </div>
        <!-- 验证码结束-->

        <div style="margin-top: 10px ">
            <button type="submit" class="btn btn-info">登陆</button>
        </div>
    </form>
</div>
</body>
</html>