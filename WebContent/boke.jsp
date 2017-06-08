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
<script type="text/javascript">
function delet(writerstr)
{	
	ConnDB.GetConnection();
	Connection con=ConnDB.GetConnection();
	Statement statement = con.createStatement(); 
	String sql = "DELETE FROM book WHERE title ='"+writerstr+"'";
	ResultSet rs = statement.executeQuery(sql);
}
</script> 
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
<%
String writerstr=request.getParameter("name");
ConnDB.GetConnection();
Connection con=ConnDB.GetConnection();
Statement statement = con.createStatement(); 
String sql = "SELECT title FROM book WHERE writer ='"+writerstr+"'";
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
            <tr>
             <th>
              <%  
            while (rs.next()) {  
        %>  
        <tr><th>
                <%  
                    out.print(rs.getString(1));  
                %>  
                </th>
                <th>
                <input type="button" id="update" value="删除" onclick="delet(('${rs.getString(1)}')">
                </th>
                </tr>
                <%  
            }  
        %>
         
        </th> </tr>
</table>

</body>
</html>