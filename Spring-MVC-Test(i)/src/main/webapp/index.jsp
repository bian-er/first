<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <title>登录</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script>
        $(function () {
            $("#submit").on('click', function () {
                $.ajax({
                    url: "/login",
                    type: 'POST',
                    data: {'uername': $("#name").val(), 'password': $("#password").val()},
                    success: function (data) {
                        alert(data);
                    }
                });
            })
        });

    </script>
</head>
<body>
<h2>登录</h2>
<a href="${pageContext.request.contextPath}/registryPage">还没注册？</a>
<%--<% System.out.println(pageContext.request.contextPath);%>--%>
用户名<input id="name" type="text"/>
密码<input id="password" type="password"/>
<input id="submit" type="submit" value="提交"/>
</body>
</html>
