{% load static %}
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link rel="icon" href="{% static "image/Favicon.png" %}" type="image/png"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>## bella's kitchen admin ## | </title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Font Awesome -->
<link href="{% static "gentelella/font-awesome/css/font-awesome.min.css" %}" rel="stylesheet">
<!-- NProgress -->
<link href="{% static "gentelella/nprogress/nprogress.css" %}" rel="stylesheet">
<!-- iCheck -->
<link href="{% static "gentelella/iCheck/skins/flat/green.css" %}" rel="stylesheet">

<!-- bootstrap-progressbar -->
<link href="{% static "gentelella/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" %}" rel="stylesheet">
<!-- JQVMap -->
<link href="{% static "gentelella/jqvmap/dist/jqvmap.min.css" %}" rel="stylesheet"/>
<!-- bootstrap-daterangepicker -->
<link href="{% static "gentelella/bootstrap-daterangepicker/daterangepicker.css" %}" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="{% static "gentelella/custom.css" %}" rel="stylesheet">
</head>
<body class="nav-md">
	  <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Bella's kitchen</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>정병철</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>관리</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-edit"></i> 사용자관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 주문관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> 통계관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
         	여기에 이제 페이지 보여주자!!!!!!!!!!!
        </div>
        <!-- /page content -->

      </div>
    </div>
	


    <!-- jQuery -->
    <script src="{% static "gentelella/jquery/dist/jquery.min.js" %}"></script>
    <!-- Bootstrap -->
    <script src="{% static "gentelella/bootstrap/dist/js/bootstrap.min.js" %}"></script>
    <!-- FastClick -->
    <script src="{% static "gentelella/fastclick/lib/fastclick.js" %}"></script>
    <!-- NProgress -->
    <script src="{% static "gentelella/nprogress/nprogress.js" %}"></script>
    <!-- Chart.js -->
    <script src="{% static "gentelella/Chart.js/dist/Chart.min.js" %}"></script>
    <!-- gauge.js -->
    <script src="{% static "gentelella/gauge.js/dist/gauge.min.js" %}"></script>
    <!-- bootstrap-progressbar -->
    <script src="{% static "gentelella/bootstrap-progressbar/bootstrap-progressbar.min.js" %}"></script>
    <!-- iCheck -->
    <script src="{% static "gentelella/iCheck/icheck.min.js" %}"></script>
    <!-- Skycons -->
    <script src="{% static "gentelella/skycons/skycons.js" %}"></script>
    <!-- Flot -->
    <script src="{% static "gentelella/Flot/jquery.flot.js" %}"></script>
    <script src="{% static "gentelella/Flot/jquery.flot.pie.js" %}"></script>
    <script src="{% static "gentelella/Flot/jquery.flot.time.js" %}"></script>
    <script src="{% static "gentelella/Flot/jquery.flot.stack.js" %}"></script>
    <script src="{% static "gentelella/Flot/jquery.flot.resize.js" %}"></script>
    <!-- Flot plugins -->
    <script src="{% static "gentelella/flot.orderbars/js/jquery.flot.orderBars.js" %}"></script>
    <script src="{% static "gentelella/flot-spline/js/jquery.flot.spline.min.js" %}"></script>
    <script src="{% static "gentelella/flot.curvedlines/curvedLines.js" %}"></script>
    <!-- DateJS -->
    <script src="{% static "gentelella/DateJS/build/date.js" %}"></script>
    <!-- JQVMap -->
    <script src="{% static "gentelella/jqvmap/dist/jquery.vmap.js" %}"></script>
    <script src="{% static "gentelella/jqvmap/dist/maps/jquery.vmap.world.js" %}"></script>
    <script src="{% static "gentelella/jqvmap/examples/js/jquery.vmap.sampledata.js" %}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{% static "gentelella/moment/min/moment.min.js" %}"></script>
    <script src="{% static "gentelella/bootstrap-daterangepicker/daterangepicker.js" %}"></script>

</body>
</html>