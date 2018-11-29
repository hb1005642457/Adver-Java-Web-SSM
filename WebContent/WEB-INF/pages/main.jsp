<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
			body{
				margin: 0;
			}
			.allimg{
				width: 65%;
				height: 550px;
				margin:0px auto;
				display: flex;
				flex-direction: row;
			}
			.allimg .menu{
				width:500px;
				height: 150px;
			}
			.search{
				width: 65%;
				height: 100px;
				margin:0px auto;
				position: relative;
			}
			.allcompany{
				width: 65%;
				margin:0px auto;
				position: relative;
			}
			.down{
				width: 65%;
				height: 300px;
				margin:0px auto;
				position: relative;
			}
		.search form{
			display: flex;
			flex-direction: row;
			position: relative;
			left: 380px;
			top: 25px;
		}
		.search .kuang{
			width: 300px;
			height: 40px;
		}
		.search .submit{
			width: 100px;
			height: 46px;
		}
		.allcompany ul{
			margin:auto;
			list-style-type: none;
			position: relative;
			left: 100px;
			top: 50px;
		}
		.allcompany ul li{
			width: 60%;
			height: 100px;
		}
		
		</style>
		
	</head>
	<body>
		<%@include file="nav.jsp" %>
		<div class="search">
			<form action="<%=request.getContextPath() %>/searchtwo.do" method="post">	
				<input class="kuang" type="text" name="cname" value="${cname}"/>
				<input type="submit" value="搜索" class="submit"/>
			</form>
		</div>
		<div class="allcompany">
			<%@include file="allcompany.jsp" %>
		</div>
		<div class="allcompany">
			<%@include file="down.jsp" %>
		</div>
	</body>
</html>