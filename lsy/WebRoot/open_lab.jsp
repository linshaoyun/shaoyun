<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
    <title>机房管理</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />   
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />


  </head>
  
  <body>
 
  <%
  if((String)request.getAttribute("show")=="true"){
   %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
       <script  type="text/javascript">
   alert("课表上传成功！");
   </script>
   <%
   }else if((String)request.getAttribute("show")=="false"){
    %>
       <script  charset="gb2312" language="javascript"  type="text/javascript">
   alert("课表上传失败");
   </script>
    <%
    }
     %>
    <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>

            <!--logo start-->
            <a href="javascript:window.location.href='index.jsp'" class="logo">ZHBIT <span class="lite">--LAB</span></a>
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
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> 开发实验室申请</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="javascript:window.location.href='index.jsp'">首页</a></li>
						<li><i class="icon_document_alt"></i>填写申请单</li>
					</ol>
				</div>
			</div>
			<form class="form-horizontal" role="form" action="" method="post">                                                  
	           <div class="form-group">
	               <label class="col-lg-2 control-label">用户名</label>
	               <div class="col-lg-2">
	                   <input type="text" name="userName" class="form-control" id="f-name" >
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">真实姓名</label>
	               <div class="col-lg-2">
	                   <input name="realName" type="text" class="form-control" id="l-name" placeholder=" ">
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">工作单位</label>
	               <div class="col-lg-2">
	                   <input name="workUnits" type="text" class="form-control" id="c-name" placeholder=" " value="" >
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">职位</label>
	               <div class="col-lg-2">
	                   <input name="position" value="" type="text" class="form-control" id="b-day" placeholder=" ">
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">性别</label>
	               <div class="col-lg-2">
	                   <input type="text" value="" name="userSex" class="form-control" id="occupation" placeholder=" ">
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">手机号码</label>
	               <div class="col-lg-2">
	                   <input type="text" value="" name="userPhone" class="form-control" id="email" placeholder=" ">
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">邮箱</label>
	               <div class="col-lg-2">
	                   <input type="text" value="" name="userEmail" class="form-control" id="mobile" placeholder=" ">
	               </div>
	           </div>
	           <div class="form-group">
	               <label class="col-lg-2 control-label">个人网站</label>
	               <div class="col-lg-2">
	                   <input type="text" value="" name="personalWeb" class="form-control" id="url" >
	               </div>
	           </div>
	
	           <div class="form-group">
	               <div class="col-lg-offset-2 col-lg-10">
	                   <button type="submit" class="btn btn-primary">Save</button>
	                   <button type="button" class="btn btn-danger">Cancel</button>
	               </div>
	           </div>
       		</form>
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

    <!-- jquery ui -->
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>

    <!--custom checkbox & radio-->
    <script type="text/javascript" src="js/ga.js"></script>
    <!--custom switch-->
    <script src="js/bootstrap-switch.js"></script>
    <!--custom tagsinput-->
    <script src="js/jquery.tagsinput.js"></script>
    
    <!-- colorpicker -->
   
    <!-- bootstrap-wysiwyg -->
    <script src="js/jquery.hotkeys.js"></script>
    <script src="js/bootstrap-wysiwyg.js"></script>
    <script src="js/bootstrap-wysiwyg-custom.js"></script>
    <!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
    <!-- custom form component script for this page-->
    <script src="js/form-component.js"></script>
    <!-- custome script for all page -->
    <script src="js/scripts.js"></script>
  	<script type="text/javascript"> </script>
  	
  </body>
  
</html>
