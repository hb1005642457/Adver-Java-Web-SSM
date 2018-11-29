<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/payServlet.do" method="POST">
		商品订单号：<input type="text" name="p2_Order"><br/>
		支付金额：<input type="text" name="p3_Amt"><br/>
		选择银行：<br/>
		中国农业银行<input type="radio" name="pd_FrpId" value="ABC-NET-B2C">
		建设银行<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"><br/>
		<input type="submit" value="支付">
	</form>
</body>
</html>