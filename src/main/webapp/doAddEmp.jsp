<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.schang.entity.Emp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //设置编码方式  post请求 代码写到第一行
    request.setCharacterEncoding("utf-8");
    //获取add_emp.jsp传递的参数
    String firstname = request.getParameter("firstname");//规定firstname不能重复
    String sex = request.getParameter("sex");
    String birthday = request.getParameter("birthday");
    String hireDate = request.getParameter("hiredate");
    String idCard = request.getParameter("idcard");//身份证也不能重复
    String phone = request.getParameter("phone");//电话也不能重复
    String store = request.getParameter("store");
    String job = request.getParameter("job");
    String password = request.getParameter("password");
    //将参数封装到实体类Emp.java实体类中,需要导入Emp类alt+enter
    Emp emp = new Emp();
    emp.setFirstName(firstname);
    emp.setSex(sex);
    emp.setBirthday(birthday);
    emp.setHireDate(hireDate);
    emp.setIdCard(idCard);
    emp.setPhone(phone);
    emp.setStore(store);
    emp.setJob(job);
    emp.setPassword(password);

    //模拟将数据写入数据库
    //将emp封装到session中(内存中，重新启动服务器数据就会丢失)
    session.setAttribute("addempdata",emp);
    //进入数据显示页面
    response.sendRedirect("find_emp.jsp");

%>
</body>
</html>
