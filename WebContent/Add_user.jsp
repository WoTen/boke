<%@page import="cn.zafu.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%
String namestr = request.getParameter("txtname");
String passwordstr = request.getParameter("txtpassword");
String emailstr = request.getParameter("txtemail");
int id=5;
Connection conn = ConnDB.GetConnection();

PreparedStatement st = conn.prepareStatement("insert into user(id,username, pwd, email) values(?,?,?,?)");
st.setInt(1, id);
st.setString(2,namestr);
st.setString(3, passwordstr);
st.setString(4,emailstr);

//UPDATE
st.executeUpdate();
st.close();
conn.close();
response.sendRedirect("Login.jsp");
%>