<%@ page import="com.schang.entity.Emp" %><%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<p>加入了doLogin.jsp页面  因为本次没有使用数据库，所以讲账号和密码写死的 规定zs为账号，123为密码</p>
<!--在下面写java代码  name="username"  name="password"-->
<%
    //doLogin.jsp页面，获取登录页面输入的账号和密码，判读是否正确，根据结果决定，成功就进入main.jsp,失败回到login.jsp页面重新登录
    //获取账号和密码
    String uname = request.getParameter("username");
    String upass = request.getParameter("password");
    //获取员工中的密码信息,需要保证emp有值 ，否则有空指针异常（保留异常，没有处理）
    Emp emp = (Emp)session.getAttribute("addempdata");

    //模拟从数据库中获取正确的账号和密码
    if("zs".equals(uname) && ("123".equals(upass) || upass.equals(emp.getPassword()))){//登录成功
        //保存登录的人的账号，需要在main.jsp页面显示当前登录人的账号
        session.setAttribute("uname",uname);
        //将登陆人的密码保存到session
        session.setAttribute("upass",upass);
        //进入main.jsp
        response.sendRedirect("main.jsp");
    }else{//登录失败
        //保存错误提示信息，进入login.jsp页面，显示错误信息
        request.setAttribute("error","登录的账号或密码错误");
        //进入login.jsp页面
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
%>
</body>

</html>
