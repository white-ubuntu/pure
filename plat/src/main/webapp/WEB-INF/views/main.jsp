<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":"
            + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0; minimum-scale=1.0; user-scalable=no; target-densityDpi=device-dpi">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title>IJOY无线数字医疗系统</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=path %>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="<%=path %>/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="<%=path %>/assets/morris.js-0.4.3/morris.css" rel="stylesheet" />
    <link rel="<%=path %>/stylesheet" href="css/owl.carousel.css" type="text/css">
    <!-- Custom styles for this template -->
    <link href="<%=path %>/css/style.css" rel="stylesheet">
    <link href="<%=path %>/css/style-responsive.css" rel="stylesheet" />
    <link href="<%=path %>/css/res-style.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    
    </style>
    
   
  </head>

  <body>
  <section id="main-content">
          <section class="wrapper ">
              <!--state overview start-->
              <div class="row" style="padding: 0px; ">
                      <!--breadcrumbs start -->
                      <ul class="breadcrumb" >
                          <li class="active"><a href="#"><i class="icon-home"></i> 首页</a></li>
                      </ul>
                      <!--breadcrumbs end -->
              </div>
              <div class="row state-overview" style="padding: 0px; ">
                  <div class="col-lg-8 col-md-8 col-sm-8">
                      <div class="row">
                          <div class="col-lg-3 col-md-3 col-sm-3">
                              <section class="panel">
                                  <div class="symbol terques">
                                      <i class="icon-user"></i>
                                  </div>
                                  <div class="value">
                                      <h4>1293689</h4>
                                      <p>新用户</p>
                                  </div>
                              </section>
                          </div> 
                          <div class="col-lg-3 col-md-3 col-sm-3">
                              <section class="panel">
                                  <div class="symbol red">
                                      <i class="icon-user-md"></i>
                                  </div>
                                  <div class="value">
                                      <h4>2489663</h4>
                                      <p>就诊人次</p>
                                  </div>
                              </section>
                          </div>
                          <div class="col-lg-3 col-md-3 col-sm-3">
                              <section class="panel">
                                  <div class="symbol yellow">
                                      <i class="icon-paste"></i>
                                  </div>
                                  <div class="value">
                                      <h4>31</h4>
                                      <p>我的任务</p>
                                  </div>
                              </section>
                          </div>
                          <div class="col-lg-3 col-md-3 col-sm-3">
                              <section class="panel">
                                  <div class="symbol blue">
                                      <i class="icon-unlock"></i>
                                  </div>
                                  <div class="value">
                                      <h4>6</h4>
                                      <p>已授权应用</p>
                                  </div>
                              </section>
                          </div>
                      </div><!-- / -->
                      <!--custom chart start-->
                      <section class="panel">
                          <header class="panel-heading">
                              用户数
                          </header>
                          <div class="panel-body">
                              <div id="hero-bar" class="graph"></div>
                          </div>
                      </section>
                      <!--custom chart end-->
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4">
                      <!--weather statement start-->
                      <!-- <section class="panel">
                          <div class="weather-bg">
                              <div class="panel-body weather">
                                  <div class="row">
                                      <div class="col-xs-6">
                                        <i class="icon-cloud"></i>
                                          成都市
                                      </div>
                                      <div class="col-xs-6">
                                          <div class="degree">
                                              24°
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <footer class="weather-category">
                              <ul>
                                  <li class="active">
                                      <h5>湿度</h5>
                                      56%
                                  </li>
                                  <li>
                                      <h5>雾霾</h5>
                                      中度 152
                                  </li>
                                  <li>
                                      <h5>风</h5>
                                      南风 微风
                                  </li>
                              </ul>
                          </footer>

                      </section> -->
                      <!--weather statement end-->
                      <section class="panel">
                          <div class="panel-body user-info">
                              <a href="#" class="task-thumb">
                                  <img src="<%=path %>/img/avatar1.jpg" alt="">
                              </a>
                              <div class="task-thumb-details">
                                  <h1><a href="#">${session.user.name}</a></h1>
                                  <p>高级医师</p>
                              </div>
                          </div>
                          <table class="table table-hover personal-task">
                              <tbody>
                                <tr>
                                    <td>
                                        <i class=" icon-tasks"></i>
                                    </td>
                                    <td>新的任务</td>
                                    <td> 02</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="icon-warning-sign"></i>
                                    </td>
                                    <td>任务待定</td>
                                    <td> 14</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="icon-envelope"></i>
                                    </td>
                                    <td>收件箱</td>
                                    <td> 45</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class=" icon-bell-alt"></i>
                                    </td>
                                    <td>新的通知</td>
                                    <td> 09</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class=" icon-bell-alt"></i>
                                    </td>
                                    <td>新的通知</td>
                                    <td> 09</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class=" icon-bell-alt"></i>
                                    </td>
                                    <td>新的通知</td>
                                    <td> 09</td>
                                </tr>
                              </tbody>
                          </table>
                      </section>
                  </div>
              </div>
              <!--state overview end-->

              <div class="row" style="padding: 0px; ">
                  <div class="col-lg-6 col-md-6 col-sm-6">
                      <!--revenue start-->
                      <section class="panel panel-m0">
                          <div class="revenue-head has">
                              <span>
                                  <i class="icon-bar-chart"></i>
                              </span>
                              <h3>已授权应用</h3>
                              <span class="rev-combo pull-right">
                                 更多
                              </span>
                          </div>
                          <div class="panel-body">
                              <div class="row">
                                  <div class="col-lg-12 col-md-12 col-sm-12">
                                      <section class="panel panel-m0">
                                          <div class="panel-body">
                                              <ul class="summary-list">
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app10.png" alt="">
                                                          移动查房
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app06.png" alt="">
                                                          移动心电
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app11.png" alt="">
                                                          婴儿防盗
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app01.png" alt="">
                                                          药品权限
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app12.png" alt="">
                                                          危值管理
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app13.png" alt="">
                                                          产孕关怀
                                                      </a>
                                                  </li>
                                              </ul>
                                          </div>
                                      </section>
                                  </div>
                              </div>
                          </div>
                      </section>
                      <!--revenue end-->
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-6">
                      <!--revenue start-->
                      <section class="panel">
                          <div class="revenue-head">
                              <span>
                                  <i class="icon-bar-chart"></i>
                              </span>
                              <h3>未授权应用</h3>
                              <span class="rev-combo pull-right">
                                 更多
                              </span>
                          </div>
                          <div class="panel-body">
                              <div class="row">
                                  <div class="col-lg-12 col-md-12 col-sm-12">
                                      <section class="panel panel-m0">
                                          <div class="panel-body">
                                              <ul class="summary-list">
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          院长决策
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          预约挂号
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          移动护理
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          无线定位
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          无线考勤
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          移动会诊
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          家庭医生
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          医院物流
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          无线输液
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          语音呼叫
                                                      </a>
                                                  </li>
                                                  <!-- <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          院长决策
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          自动配药
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          资产管理
                                                      </a>
                                                  </li> -->
                                                  <!-- <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          上门巡诊
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          无线对讲
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          医疗看护
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          病人识别
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          设备定位
                                                      </a>
                                                  </li>
                                                  <li>
                                                      <a href="javascript:;">
                                                          <img src="<%=path %>/img/app14.png" alt="">
                                                          智能导医
                                                      </a>
                                                  </li> -->
                                              </ul>
                                          </div>
                                      </section>
                                  </div>
                              </div>
                          </div>
                      </section>
                      <!--revenue end-->
                  </div>
                  <div id="examplefirst"  class="col-lg-12 col-md-12 col-sm-12" style="height: 250px;width: 100%;padding: 0px; "></div>
              </div>
    </section>
  </section>
      <!--main content end-->
  <!-- js placed at the end of the document so the pages load faster -->
    <script src="<%=path %>/js/jquery.js"></script>
    <script src="<%=path %>/js/jquery-1.8.3.min.js"></script>
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script src="<%=path %>/js/jquery.scrollTo.min.js"></script>
    <script src="<%=path %>/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="<%=path %>/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="<%=path %>/js/owl.carousel.js" ></script>
    <script src="<%=path %>/js/jquery.customSelect.min.js" ></script>

    <!--common script for all pages-->
    <script src="<%=path %>/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="<%=path %>/js/easy-pie-chart.js"></script>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<%=path %>/assets/morris.js-0.4.3/morris.min.js" type="text/javascript"></script>
    <script src="<%=path %>/assets/morris.js-0.4.3/raphael-min.js" type="text/javascript"></script>
    <script src="<%=path %>/assets/chart-master/Chart.js"></script>

    <!-- script for this page only-->
    <script src="<%=path %>/js/morris-script.js"></script>
    <script src="<%=path %>/js/all-chartjs.js"></script>
    <script src="<%=path %>/js/sparkline-chart.js"></script>
   
  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });
      //custom select box
      $(function(){
          $('select.styled').customSelect();
      });
  </script>
  </body>
</html>