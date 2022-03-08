<%--
  Created by IntelliJ IDEA.
  User: xiaoc
  Date: 2022/2/25
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>添加员工-add_emp.jsp</title>
  <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
  <link rel="shortcut icon" href="favicon.ico">
  <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
  <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
  <link href="css/plugins/chosen/chosen.css" rel="stylesheet">
  <link href="css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
  <link href="css/plugins/cropper/cropper.min.css" rel="stylesheet">
  <link href="css/plugins/switchery/switchery.css" rel="stylesheet">
  <link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
  <link href="css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
  <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
  <link href="css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
  <link href="css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
  <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
  <link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
  <link href="css/animate.css" rel="stylesheet">
  <link href="css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
    <div class="col-sm-12">
      <div class="ibox float-e-margins">
        <div class="ibox-title">
          <h5>添加员工</h5>
        </div>
        <div class="ibox-content">
          <form class="form-horizontal m-t" id="signupForm" method="post" action="doAddEmp.jsp">
            <div class="form-group">
              <label class="col-sm-3 control-label">姓名：</label>
              <div class="col-sm-8">
                <input id="firstname" name="firstname" class="form-control" type="text" style="width:150px;height:35px;"> <span class="help-block m-b-none"><i
                      class="fa fa-info-circle"></i> 请输入身份证上真实姓名</span>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">性别：</label>
              <div class="col-sm-8">
                <label>
                  <input type="radio" value="男" name="sex" checked="checked">
                  男 </label> &nbsp;&nbsp;
                <label>
                  <input type="radio" name="sex" value="女"> 女 </label>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">出生年月：</label>
              <div class="col-sm-3">
                <div class="form-group" id="data_3">
                  <div class="input-group date">
                                    <span class="input-group-addon"><i
                                            class="fa fa-calendar"></i>
                                 </span> <input type="text" name="birthday" class="form-control" value="" style="width:120px;height:35px;">
                  </div>
                </div>

              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">入职日期：</label>
              <div class="col-sm-3">
                <div class="form-group" id="data_3">
                  <div class="input-group date">
                                    <span class="input-group-addon"><i
                                            class="fa fa-calendar"></i>
                                 </span> <input type="text" name="hiredate" class="form-control" value="" style="width:120px;height:35px;">
                  </div>
                </div>

              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">身份证号：</label>
              <div class="col-sm-8">
                <input id="text" name="idcard" class="form-control" type="text" style="width:250px;height:35px;">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">手机号：</label>
              <div class="col-sm-8">
                <input  name="phone" class="form-control" type="phone" style="width:250px;height:35px;">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">所属门店：</label>
              <div class="col-sm-9">
                <select class="form-control" name="store" style="height:35px;width:150px;">
                  <option value="成都南门店">成都南门店</option>
                  <option value="成都北门店">成都北门店</option>
                  <option value="成都东门店">成都东门店</option>
                  <option value="成都西门店">成都西门店</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">职位：</label>
              <div class="col-sm-8">
                <label>
                  <input type="radio"  value="店员" name="job" checked="checked">店员
                </label> &nbsp;&nbsp;
                <label>
                  <input type="radio"  value="店长" name="job" >店长
                </label>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">登录密码：</label>
              <div class="col-sm-8">
                <input  name="password" class="form-control" type="password" style="width:250px;height:35px;">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-8 col-sm-offset-3">
                <button class="btn btn-info" type="submit">提交</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</div>

<!-- 全局js -->
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<!-- 自定义js -->
<script src="js/content.js?v=1.0.0"></script>
<!-- jQuery Validation plugin javascript-->
<script src="js/plugins/validate/jquery.validate.min.js"></script>
<script src="js/plugins/validate/messages_zh.min.js"></script>
<!-- Chosen -->
<script src="js/plugins/chosen/chosen.jquery.js"></script>
<!-- JSKnob -->
<script src="js/plugins/jsKnob/jquery.knob.js"></script>
<!-- Input Mask-->
<script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>
<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
<!-- Prettyfile -->
<script src="js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
<!-- NouSlider -->
<script src="js/plugins/nouslider/jquery.nouislider.min.js"></script>
<!-- Switchery -->
<script src="js/plugins/switchery/switchery.js"></script>
<!-- IonRangeSlider -->
<script src="js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>
<!-- MENU -->
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- Color picker -->
<script src="js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- Clock picker -->
<script src="js/plugins/clockpicker/clockpicker.js"></script>
<!-- Image cropper -->
<script src="js/plugins/cropper/cropper.min.js"></script>
<script src="js/demo/form-advanced-demo.js"></script>

</body>

</html>
