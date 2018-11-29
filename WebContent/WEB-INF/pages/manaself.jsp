<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="dist/css/bootstrap.min.css">
<script src="dist/js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
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
		.container .row{
			display: flex;
			flex-direction: row;
		}
		.container .row .col-xs-3 ul li a{
			background: #202329;
   			box-shadow: 0 1px 8px rgba(0,0,0,.06);
		}
		.container .row .col-xs-9 form{
			margin-left: 100px;
		}
		.container ul.nav-tabs{
        width: 140px;
        margin-top: 20px;
        border-radius: 4px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    }
    .container ul.nav-tabs li{
        margin: 0;
        border-top: 1px solid #ddd;
    }
    .container ul.nav-tabs li:first-child{
        border-top: none;
    }
    .container ul.nav-tabs li a{
        margin: 0;
        padding: 8px 16px;
        border-radius: 0;
    }
    .container ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
        color: #fff;
        background: #0088cc;
        border: 1px solid #0088cc;
    }
    .container ul.nav-tabs li:first-child a{
        border-radius: 4px 4px 0 0;
    }
    .container ul.nav-tabs li:last-child a{
        border-radius: 0 0 4px 4px;
    }
    .container ul.nav-tabs.affix{
        top: 30px; /* Set the top position of pinned element */
    }
    .down{
				width: 65%;
				height: 300px;
				margin:0px auto;
				border: 1px pink solid;
				position: relative;
			}
	</style>
	<body data-spy="scroll" data-target="#myScrollspy">
		<%@include file="nav.jsp" %>
		<div class="container">
   			<div class="jumbotron">
        		<h1> 欢迎你，超级管理员</h1>
   			 </div>
   			 <div class="row">
		        <div class="col-xs-9">
		            <h2 id="section-1">公司</h2>
		            <hr>
		            <c:forEach items="${comlist}" var="com">
		            	<h2 id="section-1">${com.cname}</h2>
		            	<p>地址:${com.address}</p>
						<p>电话:${com.tel}</p>
						<p>招聘岗位:${com.job}</p>
						<p>联系人:${com.boss}</p>
						<p>相关介绍:${com.message}</p>
						<a href="<%=request.getContextPath() %>/deletecom.do?username=${com.username}">删除</a>
						<hr>
		            </c:forEach>
		        </div>
		         <div class="col-xs-9">
		            <h2 id="section-1">会员（投递者）</h2>
		            <hr>
		             <c:forEach items="${memlist}" var="mem">
		            	<h2 id="section-1">${mem.name}</h2>
		            	<p>出生日期:${mem.birth}</p>
						<p>性别:${mem.sex}</p>
						<p>毕业院校:${mem.graschool}</p>
						<a href="<%=request.getContextPath() %>/deletemem.do?username=${mem.username}">删除</a>
						<hr>
		            </c:forEach>
		        </div>
		    </div>
		</div>
		<div class="down">
			<%@include file="down.jsp" %>
		</div>
	</body>
</html>