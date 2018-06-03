<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Story-Artical</title> 
	<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<link rel="stylesheet" href="my_css.css"> 
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="my_script.js"></script>
	<script LANGUAGE="JavaScript">
	function getvalue(){    
    var str=window.location.search;   //location.search是从当前URL的?号开始的字符串     
    if (str.indexOf(article_head)!=-1)//判断是否收到值
     {                
     var pos_start=str.indexOf(head)+head.length+1;  //解析获取值   
     var pos_end=str.indexOf("&",pos_start);        
     if (pos_end==-1){           
      alert( str.substring(pos_start));  //输出      
      }
     else{           
      alert("没有此值~~");    
         }  
      }
	</script>
</head>
<body >
<%
String a_head = request.getParameter("article_head");//用request得到 
String a_body = request.getParameter("article_body");//用request得到 
%>
 <%  
          //解决乱码  
          //request.setCharacterEncoding("utf-8");  
         //  1.取出name属性  对应的value值  
        // String name=request.getParameter("txtname");  
         //2.   取值   
        // String pwd=request.getParameter("txtpwd");  
       //  if(name.equals("中文")&&pwd.equals("1")){  
         //作用域保存name  
       //  request.setAttribute("name", name);  
         //跳转操作  
       //  request.getRequestDispatcher("/index.jsp").forward(request,response);  
   // }else{  
    //  request.setAttribute("name", name);  
    //  request.getRequestDispatcher("/register.jsp").forward(request,response);  
    // }  
	//String a=window.location.href.split(“=”)[1];

     
	// }

 %>  
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						 <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Story</a>
					</div>
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								 <a href="#">About us</a>
							</li>
							<li>
								 <a href="#">Contact us</a>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown">Common problems<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li>
										 <a href="#">Action</a>
									</li>
									<li>
										 <a href="#">Another action</a>
									</li>
									<li>
										 <a href="#">Something else here</a>
									</li>
									<li class="divider">
									</li>
									<li>
										 <a href="#">Separated link</a>
									</li>
									<li class="divider">
									</li>
									<li>
										 <a href="#">One more separated link</a>
									</li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li>
								 <a href="#">Register</a>
							</li>
							<li class="dropdown">
								 <a class="dropdown-toggle" href="#" data-toggle="dropdown">Login<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li>
										 <a href="#">QQ</a>
									</li>
									<li>
										 <a href="#">WeChat</a>
									</li>
									<li>
										 <a href="#">WeiBo</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-8 col-md-offset-1 column">
				<div class="send_message">
					<h2 id="artical_head" style="text-align:center"><%=a_head %></h2>
					<p id="artical_body"><%=a_body %></p>
				</div>
				
			</div>	
		</div>
	</div>
</body>























