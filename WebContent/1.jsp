<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="cn.zafu.*"%>   
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="./js/Chart/Chart.js"></script>
<style>
  .line{
     background:#fff;
     font:18px;
     width:100%;
  }

</style>
<title>喵の窝</title>
</head>

<body>

<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#f8f8f8">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <a class="navbar-brand" href="#" style="color:#19ADEC">喵の客服系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li ><a href="./config.jsp" style="color:#19ADEC">喵の配置</a></li>
        <li class="active" ><a href="#" >喵の客服</a></li>
        <li><a href="./adminlogin.jsp" style="color:#19ADEC"><%=session.getAttribute("workername") %></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

<div class="container-fluid" id="wrapper" style="width:220px;margin-top:-20px;display:block;padding-left:220px;position:relative">
	<div style="margin-left:-220px;display:block;float:left" id="wrapper-sidebar" >
 		<nav  class="navbar navbar-default" style="background:#f8f8f8;border-color:#e7e7e7">
		 <div id="navbar-default-sidebar-collapse" class="collapse navbar-collapse"  style="width:220px;position:relative;">
				<ul id="side-bar" class="nav nav-stack">
				 		<li>
				 			<a href="./admin.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-signal"></span>&nbsp;仪表盘
				 			</a>
				 		</li>
				 		<li>
				 			<a href="./chat.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-comment"></span>&nbsp;聊天界面
				 			</a>
				 		</li>
				 		<li>
				 			<a href="./config.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-cog"></span>&nbsp;常用设置
				 			</a>
				 		</li>
				</ul>
		</div>
 	</nav>
  </div>

		 	 	<ol class="breadcrumb" style="width:280px">
		 	 	 	<li><a href="./admin.jsp">首页</a></li>	
		 	 	 	<li class="active">Now Chat</li>		 	 	 	
		 	 	</ol>
<meta charset="UTF-8" />
<div class="menubar">
    <div class="menuitem">
        <div>菜单1</div>
        <div class="submenu">
            <div>子菜单1</div>
            <div>子菜单2</div>
        </div>
    </div>
    <div class="menuitem">
        <div>菜单2</div>
        <div class="submenu">
            <div>子菜单1</div>
            <div>子菜单2</div>
            <div>子菜单3</div>
        </div>
    </div>
    <div class="menuend"></div>
</div>
<p>
lsjflsjlajlsa;djflqjwwlejrflsjdlfjwqoo;lnsdl;fgnsl;rjwjeflsdjfljl;jfowei
</p>
<style type="text/css">
    .menubar
        {line-height: 24px;}
    .menubar .menuend
        {clear: both;}
    .menuitem
        {background: #fff; border: 1px solid #c00; position: relative; float: left; margin-right: 1em;}
    .menuitem .submenu
        {background: #ccc; border: 1px solid #00c; position: absolute; top: 25px; left: -1px; width: 5em;}
    /** 下面的控制显示和隐藏 **/
    .menuitem .submenu
        {display: none;}
    .menuitem:hover .submenu
        {display: block;}
</style>
</body>
</html>