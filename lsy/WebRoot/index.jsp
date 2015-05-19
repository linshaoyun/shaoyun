<%@ page language="java" import="java.util.*,com.zhbit.dao.* ,com.zhbit.biz.*,java.text.*,com.zhbit.entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>  
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>index</title>
    
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css">
	<link href="css/widgets.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet">	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
 
  </head>
  
  <body>
   <!-- container section start -->
  <section id="container" class="">
          
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>

            <!--logo start-->
            <a href="javascript:window.location.href='index.jsp'" class="logo"> ZHBIT <span class="lite"> --LAB </span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="javascript:window.location.href='index.jsp'">
                          <i class="icon_house_alt"></i>
                          <span>首页</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>通知管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:window.location.href='index.jsp'">查询通知</a></li>                          
                          <li><a class="" href="javascript:window.location.href='AddNote.jsp'">发布通知</a></li>
                          <li><a class="" href="javascript:window.location.href='AddNote.jsp'">删除通知</a></li>                          
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>机房管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="servlet/test0">查询机房</a></li>
                          <li><a class="" href="javascript:window.location.href='open_lab.jsp'">预定机房</a></li>
                          <li><a class="" href="">预订审核</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>课表管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">上传课表</a></li>
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">查询课表</a></li>   
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">删除课表</a></li> 
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">下载课表</a></li>                                                                          
                      </ul>
                  </li>
                  
                  <li>                     
                      <a class="" href="chart-chartjs.jsp">
                          <i class="icon_piechart"></i>
                          <span>报表查询</span>
                          
                      </a>
                                         
                  </li>
                             
                  <li class="sub-menu">
                      <a class="" href="javascript:;" class="">
                          <i class="icon_genius"></i>
                          <span>消息中心</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">任务查询</a></li>
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">信息查询</a></li>   
                          <li><a class="" href="javascript:window.location.href='form_component.jsp'">今日事件</a></li> 
                      </ul>                          
                     
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>个人主页</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">                          
                          <li><a class="" href="PersonalInformationServlet">个人信息</a></li>
                          <li><a class="" href="javascript:window.location.href='form_validation.jsp'"><span>修改密码</span></a></li>
                          <li><a class="" href="PersonalInformationServlet">修改资料</a></li>
                      </ul>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
        <%
      if((String)request.getAttribute("display")=="true"){
   %>
   <script type="text/javascript">
   alert("个人信息修改成功！");
   </script>
   <%
   }
    %>
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> 首页</h3>
					 	<div class="alert alert-success fade in">
                             <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                             </button><center>
                             <% SimpleDateFormat format=new SimpleDateFormat("yyyy- MM- dd 第(w)周   E"); String date=format.format(new Date()); %>
                             <strong><%out.println(date);%></strong> 
                             </center> 
                     	</div>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="javascript:window.location.href='index.jsp'">首页</a></li>											  	
					</ol>
				</div>
			</div>
			 		<section class="panel">
                          <header class="panel-heading tab-bg-primary">
                              <ul class="nav nav-tabs">
                                  <li>
                                      <a data-toggle="tab" href="#home-2">
                                          <i class="icon-home"></i>
                                          	使用情况
                                      </a>
                                  </li>
                                  <li class="active">
                                      <a data-toggle="tab" href="#about-2">
                                          <i class="icon-user"></i>
                                          	通知公告
                                      </a>
                                  </li>
                                  <li class="">
                                      <a data-toggle="tab" href="#contact-2">
                                          <i class="icon-envelope"></i>
                                          	机房课表
                                      </a>
                                  </li>
                              </ul>
                          </header>
                          <div class="panel-body">
                              <div class="tab-content">
                                  <div id="home-2" class="tab-pane ">
                                     <div class="col-lg-12">
				                      <section class="panel">
				                          <header class="panel-heading">
				                              	使用情况表
				                          </header>
				                          <div class="table-responsive">
				                            <table class="table">
				                              <thead>
				                                <tr>
				                                  <th>#</th>
				                                  <th>实验室ID</th>
				                                  <th>实验室名称</th>
				                                  <th>实验室类型</th>
				                                  <th>实验室大小</th>
				                                  <th>实验室地址</th>
				                                  <th>使用者ID</th>
				                                  <th>备注</th>
				                                </tr>
				                              </thead>
				                        		<tbody>
				                              	<% 
											 	 LabBiz selectLab=new LabBiz();
											 	 List lab=new ArrayList ();
											 	 lab=selectLab.labData(); 	 
											 	 for(int i=0;i<lab.size();i++){						 	 	
											 	 %>
											 	 	<tr>
				                                 	<td><%out.print(i+1); %></td>
				                                 	<td><%out.print(((Lab)lab.get(i)).getLabID());%></td> 
				                                 	<td><%out.print(((Lab)lab.get(i)).getLabName());%></td> 
				                                 	<td><%out.print(((Lab)lab.get(i)).getLabType());%></td> 
											 	 	<td><%out.print(((Lab)lab.get(i)).getLabSize());%></td> 
											 	 	<td><%out.print(((Lab)lab.get(i)).getLabAddress());%></td>
											 	 	<td><%out.print(((Lab)lab.get(i)).getUserID());%></td>
											 	 	<td><%out.print(((Lab)lab.get(i)).getMemo());%></td> 
							 	 								 	 	
											 	 <% }%>							 	                              
				                              </tbody>
				                            </table>
				                          </div>				
				                      </section>
                  					</div>
                                  </div>
                                  <div id="about-2" class="tab-pane active">
                                  <div class="col-lg-12">
				                      <section class="panel">
				                          <header class="panel-heading">
				                              	通知公告
				                          </header>
				                          <table class="table">
				                            <thead>
				                              <tr>
				                                <th>#</th>
				                                <th>标题</th>
				                                <th>发布人</th>
				                                <th>时间</th>
				                              </tr>
				                            </thead>
				                            <tbody>                           
				                              <% 
											 	 NoticeDao notice=new NoticeDao();
											 	 ArrayList lis=new ArrayList();
											 	 lis=notice.selectNotice();							 	 
											 	 for(int i=0;i<lis.size();i++){						 	 	
											  %>                           
				                              <tr class="success">
				                                <td><%out.print(i+1); %></td>
				                                <td><%out.print(((Notice)lis.get(i)).getTitle());%></td>
				                                <td><%out.print(((Notice)lis.get(i)).getTitle());%></td>    
				                                <td><%out.print(((Notice)lis.get(i)).getRelTime());%></td> 
				                                 <td>
				                                  <div class="btn-group">
				                                      <a class="btn btn-success" href="#"> 查看</a>
				                                  </div>
				                                  </td>
				                              </tr>                                                           
				                              <%} %>
				                              
				                            </tbody>
				                          </table>
				                      </section>
				                  </div>
								  </div>
                                  <div id="contact-2" class="tab-pane ">                                
									<div class="col-lg-12 portlets">
						            <div class="panel">
										  <header class="panel-heading">
				                              	机房课表
				                          </header><br><br><br>
						                  <div class="panel-body">
						                    <!-- Widget content -->
						                  
						                    <!-- Below line produces calendar. I am using FullCalendar plugin. -->
						                  <div id="calendar"></div>						                  
						                </div>
						              </div> 						               
						            </div>			      
								  </div>
                              </div>
                          </div>
                      </section>
                      <!--tab nav start-->							
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section start -->

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <<script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
	<script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js" ></script>
	<script src="assets/chart-master/Chart.js"></script>
   
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>	
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>	
	<script src="js/jquery.slimscroll.min.js"></script>
<script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		var calendar = $('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			selectable: true,
			selectHelper: true,
			select: function(start, end, allDay) {
				var title = prompt('Event Title:');
				if (title) {
					calendar.fullCalendar('renderEvent',
						{
							title: title,
							start: start,
							end: end,
							allDay: allDay
						},
						true // make the event "stick"
					);
				}
				calendar.fullCalendar('unselect');
			},
			editable: true,
			events: [
				{
					title: 'All Day Event',
					start: new Date(y, m, 1)
				},
				{
					title: 'Long Event',
					start: new Date(y, m, d-5),
					end: new Date(y, m, d-2)
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d-3, 16, 0),
					allDay: false
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false
				},
				{
					title: 'Meeting',
					start: new Date(y, m, d, 10, 30),
					allDay: false
				},
				{
					title: 'Lunch',
					start: new Date(y, m, d, 12, 0),
					end: new Date(y, m, d, 14, 0),
					allDay: false
				},
				{
					title: 'Birthday Party',
					start: new Date(y, m, d+1, 19, 0),
					end: new Date(y, m, d+1, 22, 30),
					allDay: false
				},
				{
					title: 'Click for Google',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://google.com/'
				}
			]
		});
		
	});

</script>
  </body>
</html>
