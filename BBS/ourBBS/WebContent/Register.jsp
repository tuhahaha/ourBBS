<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*, DB.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Register</title>
</head>
<body>

<%

	String UPLOAD_DIRECTORY = "userImage";
	String user_name=request.getParameter("user_name");
	
	String phone=request.getParameter("phone");
	String password=request.getParameter("password");
	String sql = "select * from USER where user_name=\"" + user_name+ "\"";	
	ResultSet rs = DBConn.executeQ(sql);
	if(rs.next()){
		out.println("用户名已经存在，即将跳转回注册页面");
%>
	<meta http-equiv="refresh" content="1;url=Story_register.html">
<%
	}else {		
		sql = "insert into user(user_name,logo_url,phone_number,password) values(\"" + user_name + "\"," + "\"" + "user_image//default.jpg\"" + ",\"" + phone + "\",\"" + password + "\");";
		DBConn.executeU(sql);
		out.println("注册成功,即将跳转");		
	}
	rs.close();
	session.setAttribute("username",user_name);
	session.setAttribute("icon_image","user_image/default.jpg");
%>
	<meta http-equiv="refresh" content="1;url=home_page_login.jsp">
</body>
</html>
<% 	
	
	//String search = "?user_name=" + user_name +"&logo_icon=" + "user_image" + File.separator + "default.jpg";
	//response.sendRedirect(site + search); 
	//response.setHeader("refresh", "3;url="+site);
	//user_name="+user_name+"&logo_icon=" + getServletContext().getRealPath("/") + "user_image" + File.separator + "default.jpg" + "&phone=" + phone + "&password=" + password
%> 
<% 
	
	//UploadServlet upload = new UploadServlet();
	//upload.doPost(request, response);
	//String image_name = request.getQueryString();
	//image_name = image_name.substring(image_name.indexOf("&image=")+7, image_name.indexOf("&phone="));
	//String type = image_name.substring(image_name.lastIndexOf("."));
	//String image_url = getServletContext().getRealPath("/") + "user_image" + File.separator + user_name + type;
	
%>
