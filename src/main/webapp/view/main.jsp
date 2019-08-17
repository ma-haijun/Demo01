<%--
  Created by IntelliJ IDEA.
  User: MHJ
  Date: 2019/8/8
  Time: 16:13
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
    <title>管理界面</title>
    <link rel="stylesheet" href="<%=path%>/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header" style="height: 70px;">
        <div class="layui-logo" style="margin-left: 320px;font-size: 27px;width: 800px">学生信息管理系统</div>


        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    <%=
                    request.getSession().getAttribute("username")
                    %>
            </li>
            <li class="layui-nav-item"><a href="#">退出系统</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black" style="top: 70px">
        <div class="layui-side-scroll" style="width: 110px;margin-left: 30px">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item">
                    <a href="#" >用户管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=path%>/class" target="main">班级管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="#">课程管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="#">教师管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="#">学生管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="#">成绩管理</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body" >
            <iframe name="main" style="width: 100%;height: 100%">
                内容主体区域
            </iframe>
    </div>

    <div class="layui-footer" style="text-align: center">
        <!-- 底部固定区域 -->
        © nxu.com - 版权所有，盗版必究
    </div>
</div>
<script src="../layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function () {
        var layer = layui.layer
            , form = layui.form;

        layer.msg('Hello World');
    });
</script>
</body>
</html>
