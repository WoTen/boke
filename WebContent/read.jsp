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
<script src="//unslider.com/unslider.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="./js/Chart/Chart.js"></script>
<style>
  .line{
     background:#fff;
     font:18px;
     width:100%;
  }

</style>
<script>
$(function() {
    $('.banner').unslider();   
});
</script>
<title>Insert title here</title>
</head>
<body>
<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#555555">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="color:#fff">boke</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


      <ul class="nav navbar-nav navbar-right">
        <li class="active" ><a href="#" >主页<span class="sr-only">Now choose</span></a></li>
        <%if(request.getParameter("username")!=null){ 
        	  out.print("<li><a href='#' style='color:#fff'>"+""+"<span>"+request.getParameter("username")+"</span>"+"</a></li>");
        }
        else{
        out.print("<li><a href='./Login.jsp' style='color:#fff'>登陆</a></li>");
        }  
        %>

      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<%
String titlestr=request.getParameter("title");

ConnDB.GetConnection();
Connection con=ConnDB.GetConnection();
Statement statement = con.createStatement(); 
String sql = "SELECT text FROM boke.book where title ='"+titlestr+"'" ;
ResultSet rs = statement.executeQuery(sql);  
%>

            <%  
            while (rs.next()) {  
        %>  
                <%  
                    out.print(rs.getString(1));  
                %>  
                <%  
            }  
        %> 
         
</body>
</html>