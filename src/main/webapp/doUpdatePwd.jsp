<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 16:22
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
    //密码不要使用中文
    //获取update_pwd.jsp输入的原密码
    String oldPassword = request.getParameter("oldpassword");
    //获取新输入的密码
    String newPassword = request.getParameter("newpassword");
    //获取新输入的确认密码
    String againPassword = request.getParameter("againpassword");
    //用输入的密码和当前登录的密码（登录时保存到）做对比
    //获取登录的密码,登录时保存到了session中，名称叫upass doLogin.jsp中对应的代码为 session.setAttribute("upass",upass);
    String loginPwd = (String)session.getAttribute("upass");

    /*
       实际的工作中，页面输入的数据的校验，是在页面上，使用的前端语言javascript或者jquery来实现，不是在后台，所有考虑有可能
       没有学习前端语言，所以使用java语言  在后台进行校验
     */
    if(!"".equals(oldPassword)){//老密码输入后才能进入，老密码的校验
        if(!oldPassword.equals(loginPwd)) {//如果登录的密码和输入的密码不一致
            //给出错误信息
            request.setAttribute("error", "原密码必须输入或原密码输入不正确");
            //返回update_pwd.jsp重新输入,显示错误信息
            request.getRequestDispatcher("update_pwd.jsp").forward(request, response);
        }else{//原密码输入正确
            if(!"".equals(newPassword) && !"".equals(againPassword)){//新的密码和确认密码不能为空
                if(!newPassword.equals(againPassword)){//新密码和确认密码不一致
                    //给出错误信息
                    request.setAttribute("error", "新密码和确认密码不一致");
                    //返回update_pwd.jsp重新输入,显示错误信息
                    request.getRequestDispatcher("update_pwd.jsp").forward(request, response);
                }else{
                    //新密码和确认密码一致,进行修改密码，（前提是需要在员工管理中添加员工数据），修改的密码为员工添加的数据中的密码
                    //获取员工添加的数据中的密码信息
                    String empPassword = "";
                    Emp emp = (Emp)session.getAttribute("addempdata");
                    if(emp != null){
                        //获取到员工添加中的密码信息
                        empPassword = emp.getPassword();
                        //使用新的密码newPassword去取代员工信息中的密码password
                        emp.setPassword(newPassword);
                        //将修改后的emp的密码 password,重新封装到session中
                        session.setAttribute("addempdata",emp);
                        response.sendRedirect("find_emp.jsp");
                    }else{
                        //如果没有提前去添加员工数据，先去员工添加数据的界面，添加数据
                        response.sendRedirect("add_emp.jsp");
                    }

                }
            }else{//新的密码或确认密码为空
                request.setAttribute("error", "新密码或确认密码不能为空");
                //返回update_pwd.jsp重新输入,显示错误信息
                request.getRequestDispatcher("update_pwd.jsp").forward(request, response);
            }
        }
    }else{
        //给出错误信息
        request.setAttribute("error", "原密码必须输入或原密码输入不正确");
        //返回update_pwd.jsp重新输入,显示错误信息
        request.getRequestDispatcher("update_pwd.jsp").forward(request, response);
    }

%>
</body>
</html>
