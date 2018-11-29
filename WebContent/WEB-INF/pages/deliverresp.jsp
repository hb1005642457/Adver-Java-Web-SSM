<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.success{
		margin: 150px auto;
	}
</style>
</head>

<body>
<%@include file="nav.jsp" %>
	<div align="center" class="success">
	<h1><p>投递成功</p></h1>
	</div>
	<div align="center" class="success">
		<h3><a href="javascript:history.back(-1)">返回上一页</a></h3>&nbsp;&nbsp;&nbsp;&nbsp;
		<h3><a href="<%=request.getContextPath() %>/searchtwo.do">返回浏览其他公司</a></h3>
	</div>
<%@include file="down.jsp" %>
</body>
</html>