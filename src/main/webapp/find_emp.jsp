<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.schang.entity.Emp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>员工查询</title>
    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <!-- Data Tables -->
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>员工查询</h5>
                </div>
                <div class="ibox-content">

                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>员工姓名</th>
                            <th>性别</th>
                            <th>出生年月</th>
                            <th>入职日期</th>
                            <th>身份证号</th>
                            <th>手机号</th>
                            <th>所属门店</th>
                            <th>职位</th>
                            <th>密码</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%--${addempdata.firstName}  .firstName为实体类Emp中的属性的名称，要求大小写都要一样 private String firstName--%>
                        <tr>
                            <td>${addempdata.firstName}</td>
                            <td>${addempdata.sex}</td>
                            <td>${addempdata.birthday}</td>
                            <td>${addempdata.hireDate}</td>
                            <td>${addempdata.idCard}</td>
                            <td>${addempdata.phone}</td>
                            <td>${addempdata.store}</td>
                            <td>${addempdata.job}</td>
                            <td>${addempdata.password}</td>
                            <td>
                                <a class="btn btn-info" href="update_emp.jsp" title="修改"><i class="fa fa-pencil"></i></a>
                                <a class="btn btn-primary" href="doDeleteEmp.jsp" title="删除"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/plugins/jeditable/jquery.jeditable.js"></script>
<!-- Data Tables -->
<script src="js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
<!-- 自定义js -->
<script src="js/content.js?v=1.0.0"></script>
</body>
</html>
