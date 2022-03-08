<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%
    // doAddEmp.jsp模拟将数据写入数据库
    //将emp封装到session中(内存中，重新启动服务器数据就会丢失)
    //session.setAttribute("addempdata",emp);

    //模拟删除数据：  该处就是将session中的名称addempdata，移除，就删除了数据
    session.removeAttribute("addempdata");
    //回到find_emp.jsp页面
    response.sendRedirect("find_emp.jsp");

%>
</body>

</html>
