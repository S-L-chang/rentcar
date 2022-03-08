<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.schang.entity.Emp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%
    /*
     * 如果使用数据库：先根据id获取数据，保存数据，进入update_emp.jsp，在update_emp.jsp显示数据，提交数据到doUpdateEmp.jsp
     * doUpdateEmp.jsp获取页面update_emp.jsp提交的数据，关键需要获取到id属性，封装到Emp,再到数据库中根据id修改盖上数据
     * 修改完成后需要重新从数据库查询所有的修改后的新的数据，进入find_emp.jsp显示新的数据
     */

    //修改的逻辑和添加很接近
    //设置编码方式  post请求 代码写到第一行 ，处理中文乱码 默认的编码为iso-8859-1(不支持中文，所以需要设置为utf-8才支持中文)
    request.setCharacterEncoding("utf-8");
    //获取update_emp.jsp传递的参数(修改后的数据)
    String firstname = request.getParameter("firstname");//规定firstname不能重复
    String sex = request.getParameter("sex");
    String birthday = request.getParameter("birthday");
    String hireDate = request.getParameter("hiredate");
    String idCard = request.getParameter("idcard");//身份证也不能重复
    String phone = request.getParameter("phone");//电话也不能重复
    String store = request.getParameter("store");
    String job = request.getParameter("job");
    //修改员工没有修改密码
    //String password = request.getParameter("password");
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
    //emp.setPassword(password);

    //将原来保存的数据移除
    session.removeAttribute("addempdata");
    //重新添加修改后新的数据
    session.setAttribute("addempdata",emp);
    //重新进入myself_mess.jsp获取修改后的新的数据
    response.sendRedirect("myself_mess.jsp");
%>
</body>

</html>
