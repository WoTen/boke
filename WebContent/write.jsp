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
<script type="text/javascript" src="apps.bdimg.com/lib/htmlbox/htmlbox.colors.js"></script>  
    <script type="text/javascript" src="apps.bdimg.com/lib/htmlbox/htmlbox.styles.js"></script>  
    <script type="text/javascript" src="apps.bdimg.com/lib/htmlbox/htmlbox.syntax.js"></script>  
    <script type="text/javascript" src="apps.bdimg.com/lib/htmlbox/htmlbox.undoredomanager.js"></script>  
    <script type="text/javascript" src="apps.bdimg.com/lib/htmlbox/htmlbox.min.js"></script> 
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<style>
  .line{
     background:#fff;
     font:18px;
     width:100%;
  }

</style>
<script src="lib/jquery-1.8.3.min.js"></script>  
    <script type="text/javascript" src="lib/htmlbox/htmlbox.colors.js"></script>  
    <script type="text/javascript" src="lib/htmlbox/htmlbox.styles.js"></script>  
    <script type="text/javascript" src="lib/htmlbox/htmlbox.syntax.js"></script>  
    <script type="text/javascript" src="lib/htmlbox/htmlbox.undoredomanager.js"></script>  
    <script type="text/javascript" src="lib/htmlbox/htmlbox.min.js"></script>  
<title></title>
</head>

<body>

<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#f8f8f8">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <a class="navbar-brand" href="./index.jsp" style="color:#19ADEC">boke</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li ><a href="./config.jsp" style="color:#19ADEC">帮助中心</a></li>
        <li><a href="./index.jsp" style="color:#19ADEC"><%=request.getParameter("name") %></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<div >
<center><input name="title" type="text"/></center>
</div>
<br>
<br>
<center><textarea name="content" row="500" cols="200"></textarea></center>
<script type="text/javascript">CKEDITOR.replace('content');</script>
<div></div>
<div class="container-fluid" id="wrapper" style="width:220px;margin-top:20px;display:block;padding-left:220px;position:relative">
	<div style="margin-right:20px;display:block;float:left" id="wrapper-sidebar" >
 		<nav  class="navbar navbar-default" style="background:#f8f8f8;border-color:#e7e7e7">
		 <div id="navbar-default-sidebar-collapse" class="collapse navbar-collapse"  style="width:220px;position:relative;">
				<ul id="side-bar" class="nav nav-stack">
				 		
				 		<li>
				 			<a href="./boke.jsp?name=<%= request.getParameter("name")%>" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-comment"></span>&nbsp;发表
				 			</a>
				 		</li>
				 		</ul>
		</div>
 	</nav>
  </div>
</body>
</html>