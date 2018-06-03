<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Story-HomePage</title> 
	<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<link rel="stylesheet" href="my_css.css"> 
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="my_script.js"></script>
//	<script type="text/javascript">  
  
	//获取Location对象的search属性值  
//	var searchStr = location.search;  
  
	//由于searchStr属性值包括“?”，所以除去该字符  
//	searchStr = searchStr.substr(1);  
  
	//将searchStr字符串分割成数组，数组中的每一个元素为一个参数和参数值  
//	var searchs = searchStr.split("&");  
  
	//获得第一个参数和值  
//	var address = searchs[0].split("=");   
	
//	document.getElementById("head_picture").src = address;	
	</script> 
	
	
	
	
</head>
<body data-spy="scroll" data-target="#myScrollspy">
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
								<%
									String url = (String)session.getAttribute("icon_image");
									out.println("<img src=\"" + url + "\"" + " id=\"head_picture\""+" style=\"height:40px;width:40px;padding-top:2px;\" />");
								%>	
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
			<div class="col-md-3 column" id="myScrollspy">
				<ul class="nav nav-tabs nav-stacked" id="myNav">
					<li class="active"><a href="#section-1">顶部</a></li>
					<li><a href="#section-2">体育</a></li>
					<li><a href="#section-3">经济</a></li>
					<li><a href="#section-4">娱乐</a></li>
					<li><a href="#section-5">校园</a></li>
					<li><a href="#section-6">社会</a></li>
					<li><a href="#section-7">健身</a></li>
					<li><a href="#section-8">美妆</a></li>
					<li><a href="#section-9">游戏</a></li>
				</ul>
			</div>
			<div class="col-md-9 column">
				<div class="send_message">
					<h4>分享ider</h4>
					<p><strong>标题</strong>标题不能为空</p>
					<input id="mymessage_head" style="width:700px;height:20px;"/>
					<p><strong>正文</strong>正文不能为空</p>
					<input id="mymessage_body" style="width:700px;height:100px;"/>
					<button type="button" id="button_add"style="background-color:7fffd4;width:50px;height:30px;float:right;border-radius:5px;" onclick="add_head()">发布</button>
				</div>
				<div class="send_message" id="section-1">
					<h2>我的文章</h2>
					<ul id="my_ul">
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						
					</ul>
				</div>
				<div class="send_message" id="section-2">
					<h2>体育</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-3">
					<h2>经济</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-4">
					<h2>娱乐</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-5">
					<h2>校园</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-6">
					<h2>社会</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-7">
					<h2>健身</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-8">
					<h2>美妆</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
				<div class="send_message" id="section-9">
					<h2>游戏</h2>
					<ul>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
						<li>
							<p> <a href="#">一条新闻</a></p>
						</li>
					</ul>
				</div>
			</div>	
		</div>
		
	
	</div>
</body>























