<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0" />

<title>夏天</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/favicon.ico" />

<link href="${pageContext.request.contextPath }/tools/sample/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/login/css/style.css" rel="stylesheet" />


<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery-2.0.3.min.js"> </script>
</head>
<body >

	
<div class="container-fluid" id="first_item" >
	 
	<div class="login-container" style="position: absolute;z-index:1;">
	
	
	<form method="post" id="loginForm" >
		<h1>欢迎使用夏天记账系统</h1>
		<div  id="msg" class="msg" style="color:red;padding-bottom:15px;font-size:15px;font-weight:bold;" >
		
		</div>  
		
		
		 <div>
			<input type="text" name="username" id="username"  placeholder="用户名" autocomplete="off" oncontextmenu="return false" onpaste="return false"/>
		</div>
		
		<div>
			
			<input type="password" name="password" id="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="login" type="button" >登 陆</button>
			
	</form>
		
	
	
	
	
	
	</div>
	 
</div>
 	
<script src="${pageContext.request.contextPath }/login/js/three.min.js"></script>
<script src="${pageContext.request.contextPath }/login/js/Stats.min.js"></script>
<!--轮播第1种效果  -->
<script src="${pageContext.request.contextPath }/login/js/first_effect.js"></script>
<script src="${pageContext.request.contextPath }/login/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath }/login/js/login.js"></script>

 	
</body>
</html>