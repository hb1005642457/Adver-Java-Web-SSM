<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        		<h1> ${user.username}的公司主页</h1>
   			 </div>
   			 <div class="row">
       			 <div class="col-xs-3" id="myScrollspy">
           			 <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
		                <li class="active"><a href="#section-1">公司名称</a></li>
		                <li><a href="#section-2">公司地址</a></li>
		                <li><a href="#section-3">联系方式</a></li>
		                <li><a href="#section-4">招聘岗位</a></li>
		                <li><a href="#section-5">联系人</a></li>
		                <li><a href="#section-6">公司信息</a></li>
		                <li><a href="#section-7">工作内容</a></li>
		                <li><a href="#section-8">融资上市情况</a></li>
		            </ul>
		        </div>
		        <div class="col-xs-9">
		        <form action="${pageContext.request.contextPath}/updatecom.do?username=${user.username}" method="post">
		            <h2 id="section-1">公司名称</h2>
		            <input type="text" value="${user.cname }" name="cname">
		            <hr>
		            <h2 id="section-2">公司地址</h2>
		            <input type="text" value="${user.address }" name="address">
		            <hr>
		            <h2 id="section-3">联系方式</h2>
		            <input type="text" value="${user.tel }" name="tel">
		            <hr>
		            <h2 id="section-4">招聘岗位</h2>
		             <input type="text" value="${user.job}" name="job">
		            <hr>
		            <h2 id="section-5">联系人</h2>
		             <input type="text" value="${user.boss}" name="boss">
		             <h2 id="section-6">公司信息</h2>
		             <input type="text" value="${user.message}" name="message">
		             <h2 id="section-7">工作内容</h2>
		             <textarea name="jobdescribe" style="width:350px;height:200px;">${user.jobdescribe}</textarea>
		             <h2 id="section-7">融资上市情况</h2>
		             <input type="text" value="${user.moneycondition}" name="moneycondition">
		             <h2 id="section-7">薪酬待遇</h2>
		             <textarea name="weal" style="width:350px;height:200px;">${user.weal}</textarea>
		             <h2 id="section-7">登录密码</h2>
		             <input type="text" value="${user.password}" name="password">
		             <h3 id="section-8">
		             <input type="submit" value="修改提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		             <a href="${pageContext.request.contextPath}/leave.do">退出登录</a>
		             </h3>
		        </form>
		        </div>
		    </div>
		</div>
		<div class="down">
			<%@include file="down.jsp" %>
		</div>
	</body>
</html>