<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	支付成功！<br/>
商户编号：${p1_MerId }<br/>
支付金额：${r3_Amt}<br/>
商户订单号：${r6_Order}<br/>
支付成功时间：${rp_PayDate}
<a href="<%=request.getContextPath() %>/search.do">返回首页</a>
</body>
</html>