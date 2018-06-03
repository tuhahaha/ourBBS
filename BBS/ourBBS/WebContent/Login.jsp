<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, java.io.*, DB.*, java.sql.*"%>
<%@ page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Register</title>
</head>
<body>
<%


	String name = request.getParameter("user_name");
	String password = request.getParameter("password");
	//out.println(name + " " + password);
	String sql = "select * from user where (user_name=\"" + name + "\"and password=\"" + password + "\") or (phone_number=\"" + name + "\" and password=\"" + password + "\")"; 
	ResultSet rs = DBConn.executeQ(sql);
	
	String site;
	if(rs.next()){
		out.println("登陆成功，正在跳转");
		session.setAttribute("user_name", name);
		name = rs.getString(1);
		password = rs.getString(3);
		String phone = rs.getString(4);
		String logo_url = rs.getString("logo_url");
		session.setAttribute("user_name", name);
		session.setAttribute("icon_image",logo_url);
		
%>
	<meta http-equiv="refresh" content="1;url=home_page_login.jsp">	
<%		
	}else {
		out.println("账号或密码错误"); 
%>
	<meta http-equiv="refresh" content="3;url=Story_login.html">
<%
	}
%>

</body>
</html>