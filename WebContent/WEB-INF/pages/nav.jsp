<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<style>
			.nav{
				display: flex;
			flex-direction: row;
				width: 100%;
				height:45px;
				border: 1px red solid;
				background: #202329;
   				 box-shadow: 0 1px 8px rgba(0,0,0,.06);
			}
		.nav .logoup{
			margin-left: 450px;
		}
		.nav ul{
			display: flex;
			flex-direction: row;
			justify-content: space-around;
			list-style-type: none;
			width: 400px;
			height: 45px;
			margin-top:10px;
		}
		.nav ul li{
			
		}
		.nav ul a{
			text-decoration: none;
			color: floralwhite;
			font-size: large;
			font-family: "arial rounded mt bold";
		}
		.nav ul a:hover{
			color: red;
		}
		.nav .ling{
			margin: 5px 0px 0px 180px;
		}
		.nav .myself{
			margin: 5px 0px 0px 20px;
		}
	</style>
	<body>
		<div class="nav">
			<img class="logoup" src="dist/img/logoup.jpg" width="150px" height="45px"/>
			<ul>
				<li><a href="<%=request.getContextPath() %>/search.do">首页</a></li>
				<li><a href="<%=request.getContextPath() %>/searchtwo.do">热门职位</a></li>
				<li><a href="<%=request.getContextPath() %>/searchtwo.do">公司</a></li>
				<li><a href="<%=request.getContextPath() %>/vitae.do">我的简历</a></li>
				<li><a href="<%=request.getContextPath() %>/taste.do">求职攻略</a></li>
			</ul>
			<a href="<%=request.getContextPath() %>/messageup.do"><img class="ling" src="dist/img/ling.jpg" width="35px" height="35px"/></a>
			<a href="<%=request.getContextPath() %>/personalmess.do"><img class="myself" src="dist/img/tou.gif" width="35px" height="35px"/></a>
		</div>
	</body>
</html>