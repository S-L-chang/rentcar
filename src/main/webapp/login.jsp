<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0">
    <title>易行租车系统 - 用户登录</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
</head>
<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-left" style="font-size:21px;">
                <i class="fa fa-car"></i> 易行租车系统
            </div>
        </div>
        <div class="col-sm-12 signup-footer">
            <div style="color: red;">${requestScope.error}</div>
            <form method="post" action="doLogin.jsp">
                <h4 class="no-margins">用户登录：</h4>
                <input type="text" class="form-control uname" placeholder="用户名" name="username" />
                <input type="password" class="form-control pword m-b" placeholder="密码" name="password" />
                <button type="submit" class="btn btn-success btn-block">登录</button>
            </form>
        </div>
    </div>
</div>
</body>

</html>
