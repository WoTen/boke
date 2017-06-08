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
<script>
$(function() {
    $('.banner').unslider();   
});
</script>
<script type="text/javascript">
function read1_check()
{
	//ConnDB.GetConnection();
	//Connection con=ConnDB.GetConnection();
	//Statement statement = con.createStatement(); 
	//String sql = "SELECT title FROM book" ;
	//ResultSet rs = statement.executeQuery(sql);
	//while (rs.next()) { 
	//	out.print(rs.getString(1)); 
	//}
	//var a= rs.getString(1);
window.location.href="read.jsp?title="+'十万个为什么';

}
</script>  
<style type="text/css">
    .menubar
        {line-height: 24px;}
    .menubar .menuend
        {clear: both;}
   /** .menuitem
        {background: #fff; border: 1px solid #c00; position: relative; float: left; margin-right: 1em;}
    .menuitem .submenu
        {background: #ccc; border: 1px solid #00c; position: absolute; top: 25px; left: -1px; width: 5em;}
    /** 下面的控制显示和隐藏 **/
    .menuitem .submenu
        {display: none;}
    .menuitem:hover .submenu
        {display: block;}
</style> 
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
        <%if(request.getParameter("username")!=null){ %>
        <div class="menubar">
    <div class="menuitem"><div>
        <%
        	  out.print("<li><a href='#' style='color:#fff'>"+""+"<span>"+request.getParameter("username")+"</span>"+"</a></li>");
        	 %>
        	  </div>
        
        <div class="submenu">
            <div><a href="./geren.jsp?name=<%= request.getParameter("username")%>">个人中心</a></div>
            <div>帮助</div>
        </div>
    </div>
    
  
        	  <%}
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
ConnDB.GetConnection();
Connection con=ConnDB.GetConnection();
Statement statement = con.createStatement(); 
String sql = "SELECT title FROM book" ;
ResultSet rs = statement.executeQuery(sql);  
%>
<table align="center">  
        <tr>  
            <th>  
                <%  
                    out.print("文章");  
                %>  
            </th>  
             </tr>
              <%  
            while (rs.next()) {  
        %>  
        <tr>  
        <%String name=rs.getString(1); %>
            <td>  <a  href="read.jsp?title=<%=rs.getString(1) %>">
                <%  
                    out.print(rs.getString(1));  
                %>  
                </a>
                
            </td>  
            </tr>
            <%  
            }  
        %>
</table>

</body>
</html>