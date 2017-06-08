<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String titlestr=request.getParameter("title");
out.print(titlestr);%>
<a  onclick="read1_check()">
555
</a>
<script type="text/javascript">
function read1_check()
{
window.location.href="index.jsp";
out.print(titlestr);
}
</script>  
</body>
</html>