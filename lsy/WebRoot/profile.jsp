<%@ page language="java" import="java.util.*,com.zhbit.dao.*,com.zhbit.biz.*,com.zhbit.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Profile</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
  </head>
  
  <body>
    <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
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
                          <li><a class="" href="">查询机房</a></li>
                          <li><a class="" href="">预定机房</a></li>
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
   }else if((String)request.getAttribute("display")=="false"){
    %>
       <script type="text/javascript">
   alert("个人信息修改失败错误");
   </script>
    <%
    }
     %>
        <%
                                 String userName=request.getSession().getAttribute("userName").toString();
                                 String userPw=request.getSession().getAttribute("userPw").toString();
                                 InfoDao info=new InfoDao();
                                 ArrayList list=new ArrayList();
                                 list=info.selectUserInformation(userName,userPw);
                                 JudgeBiz j=new JudgeBiz();
                                 String name=j.judge(((User)list.get(0)).getUserName());
                                 String realName=j.judge(((User)list.get(0)).getRealName());
                                 String personalDes=j.judge(((User)list.get(0)).getPersonDes());
                                 String workUnits=j.judge(((User)list.get(0)).getWorkUnits());
                                 String position=j.judge(((User)list.get(0)).getPosition());
                                 String userSex=j.judge(((User)list.get(0)).getUserSex());
                                 String userPhone=j.judge(((User)list.get(0)).getUserPhone());
                                 String userEmail=j.judge(((User)list.get(0)).getUserEmail());
                                 String personalWeb=j.judge(((User)list.get(0)).getPersonalWeb());
                                 String userType=j.judge(((User)list.get(0)).getUserType());
                                  %> 
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="javascript:window.location.href='index.jsp'">首页</a></li>
						<li><i class="icon_documents_alt"></i>Pages</li>
						<li><i class="fa fa-user-md"></i>Profile</li>
					</ol>
				</div>
			</div>
              <div class="row">
                <!-- profile-widget -->
                <div class="col-lg-12">
                    <div class="profile-widget profile-widget-info">
                          <div class="panel-body">
                            <div class="col-lg-2 col-sm-2">
                              <h4><%=name %></h4>               
                              <div class="follow-ava">
                                  <img src="img/profile-widget-avatar.jpg" alt="">
                              </div>
                              <h6><%=userType %></h6>
                            </div>
                            <div class="col-lg-4 col-sm-4 follow-info">
                                <p><%=personalDes %>.</p>
								<p><i class="fa fa-twitter">jenifertweet</i></p>
                                <h6>
                                    <span><i class="icon_clock_alt"></i>11:05 AM</span>
                                    <span><i class="icon_calendar"></i>25.10.13</span>
                                    <span><i class="icon_pin_alt"></i>NY</span>
                                </h6>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                      <ul>
                                          <li class="active">
                                              
                                              <i class="fa fa-comments fa-2x"> </i><br>
											  
											  Contrary to popular belief, Lorem Ipsum is not simply
                                          </li>
										   
                                      </ul>
                            </div>
							<div class="col-lg-2 col-sm-6 follow-info weather-category">
                                      <ul>
                                          <li class="active">
                                              
                                              <i class="fa fa-bell fa-2x"> </i><br>
											  
											  Contrary to popular belief, Lorem Ipsum is not simply 
                                          </li>
										   
                                      </ul>
                            </div>
							<div class="col-lg-2 col-sm-6 follow-info weather-category">
                                      <ul>
                                          <li class="active">
                                              
                                              <i class="fa fa-tachometer fa-2x"> </i><br>
											  
											  Contrary to popular belief, Lorem Ipsum is not simply
                                          </li>
										   
                                      </ul>
                            </div>
                          </div>
                    </div>
                </div>
              </div>
              <!-- page start-->
              <div class="row">
                 <div class="col-lg-12">
                    <section class="panel">
                          <header class="panel-heading tab-bg-info">
                              <ul class="nav nav-tabs">
                                  <li class="active">
                                      <a data-toggle="tab" href="#recent-activity">
                                          <i class="icon-home"></i>
                                                                                                                待定
                                      </a>
                                  </li>
                                  <li>
                                      <a data-toggle="tab" href="#profile">
                                          <i class="icon-user"></i>
                                                                                                               个人信息
                                      </a>
                                  </li>
                                  <li class="">
                                      <a data-toggle="tab" href="#edit-profile">
                                          <i class="icon-envelope"></i>
                                                                                                                 编辑
                                      </a>
                                  </li>
                              </ul>
                          </header>
                          <div class="panel-body">
                              <div class="tab-content">
                                  <div id="recent-activity" class="tab-pane active">
                                      <div class="profile-activity">                                          
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">

                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">                                                  
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                      
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                     
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                      
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                                                                      
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                     
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                     
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="act-time">                                      
                                              <div class="activity-body act-in">
                                                  <span class="arrow"></span>
                                                  <div class="text">
                                                      
                                                  </div>
                                              </div>
                                          </div>

                                      </div>
                                  </div>
                                  <!-- profile -->
                                  
                                  <div id="profile" class="tab-pane">
                                    <section class="panel">
                                      <div class="bio-graph-heading">
                                                <%=personalDes %>.
                                      </div>
                                      <div class="panel-body bio-graph-info">
                                          <h1>Bio Graph</h1>
                                          <div class="row">
                                              <div class="bio-row">
                                                  <p><span>用户名 </span>: <%=name %> </p>
                                              </div>
                                              <div class="bio-row">
                                                  <p><span>真实姓名 </span>: <%=realName %></p>
                                              </div>                                              
                                              <div class="bio-row">
                                                  <p><span>用户类型</span>: <%=userType %></p>
                                              </div>
                                              <div class="bio-row">
                                                  <p><span>联系电话 </span>: <%=userPhone %></p>
                                              </div>
                                              <div class="bio-row">
                                                  <p><span>性别 </span>: <%=userSex %></p>
                                              </div>
                                              <div class="bio-row">
                                                  <p><span>邮箱 </span>: <%=userEmail %></p>
                                              </div>
                                              <div class="bio-row">
                                                  <p><span>工作地点</span>: <%=workUnits %></p>
                                              </div>
                                              <div class="bio-row">
                                                  <p><span>个人网站 </span>:  <%=personalWeb %></p>
                                              </div>
                                          </div>
                                      </div>
                                    </section>
                                      <section>
                                          <div class="row">                                              
                                          </div>
                                      </section>
                                  </div>
                               
                                  <!-- edit-profile -->                         
                                  <div id="edit-profile" class="tab-pane">
                                    <section class="panel">                                          
                                          <div class="panel-body bio-graph-info">
                                              <h1> Profile Info</h1>
                                              <form class="form-horizontal" role="form" action="AlterInfoServlet" method="post">                                                  
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">用户名</label>
                                                      <div class="col-lg-6">
                                                          <input type="text" name="userName" class="form-control" id="f-name" placeholder=" " value="<%=name %>">
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">真实姓名</label>
                                                      <div class="col-lg-6">
                                                          <input name="realName" type="text" class="form-control" value="<%=realName %>" id="l-name" placeholder=" ">
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">个人描述</label>
                                                      <div class="col-lg-10">
                                                          <textarea  name="personalDes" id="" class="form-control" cols="30"  rows="5"><%=personalDes %></textarea>
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">工作单位</label>
                                                      <div class="col-lg-6">
                                                          <input name="workUnits" type="text" class="form-control" id="c-name" placeholder=" " value="<%=workUnits %>" >
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">职位</label>
                                                      <div class="col-lg-6">
                                                          <input name="position" value="<%=position %>" type="text" class="form-control" id="b-day" placeholder=" ">
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">性别</label>
                                                      <div class="col-lg-6">
                                                          <input type="text" value="<%=userSex %>" name="userSex" class="form-control" id="occupation" placeholder=" ">
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">手机号码</label>
                                                      <div class="col-lg-6">
                                                          <input type="text" value="<%=userPhone %>" name="userPhone" class="form-control" id="email" placeholder=" ">
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">邮箱</label>
                                                      <div class="col-lg-6">
                                                          <input type="text" value="<%=userEmail %>" name="userEmail" class="form-control" id="mobile" placeholder=" ">
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label class="col-lg-2 control-label">个人网站</label>
                                                      <div class="col-lg-6">
                                                          <input type="text" value="<%=personalWeb %>" name="personalWeb" class="form-control" id="url" placeholder="http://www.demowebsite.com ">
                                                      </div>
                                                  </div>

                                                  <div class="form-group">
                                                      <div class="col-lg-offset-2 col-lg-10">
                                                          <button type="submit" class="btn btn-primary">Save</button>
                                                          <button type="button" class="btn btn-danger">Cancel</button>
                                                      </div>
                                                  </div>
                                              </form>
                                          </div>
                                      </section>
                                  </div>
                              </div>
                          </div>
                      </section>
                 </div>
              </div>

              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- jquery knob -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>

  <script>

      //knob
      $(".knob").knob();

  </script>


  </body>
</html>
