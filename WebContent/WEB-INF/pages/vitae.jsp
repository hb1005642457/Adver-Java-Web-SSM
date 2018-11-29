<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="nav.jsp" %>
	<form action="<%=request.getContextPath()%>/updateVitae.do" method="post">
	<table  border=5 bordercolor=#F0F8FF align=center>
			<tr height=70 bgcolor=#F0F8FF align='center'>
			<td width=720 colspan=6 align=center><font size=5><b>个人简历</b></font></td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=110 align=center><font size=5>姓名：</td>
			<td width=150 align=center><font size=5><input type="text" name="name" value="${member.name}"></td>
			<td width=110 align=center><font size=5>性别：</td>
			<td width=150 align=center><font size=5><input type="text" name="sex" value="${member.sex}"></td>
			<td width=200 colspan=2rowspan=4><img src="dist/img/niu.jpg" alt="照片" width=200 height=200></td>
			 </tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=110 align=center><font size=4 align=center>出生年月：</td>
			<td width=150 align=center><fontsize=5><input type="text" name="birth" value="${member.birth}"></td>
			<td width=110 align=center><fontsize=5>民族：</td>
			<td width=150 align=center><fontsize=5><input type="text" name="country" value="${via.country}"></td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=110 align=center><fontsize=5>学历：</td>
			<td width=150 align=center><fontsize=5><input type="text" name="record" value="${via.record}"></td>
			<td width=110 align=center><fontsize=5>专业：</td>
			<td width=150 align=center><fontsize=4><input type="text" name="professional" value="${via.professional}"></td>
			</tr>
			
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=110 align=center><fontsize=5>籍贯：</td>
			<td width=150 align=center><fontsize=4><input type="text" name="jiguan" value="${via.jiguan}"></td>
			<td width=110 align=center><fontsize=4>联系电话：</td>
			<td width=150 align=center><fontsize=3><input type="text" name="tel" value="${via.tel}"></td>
			</tr>
			
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=100 align=center><fontsize=4>毕业学校：</td>
			<td width=620 colspan=5 align=center><fontsize=5><input type="text" name="graschool" value="${member.graschool}"></td>
			</tr>
			
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=110 align=center><fontsize=5>住址：</td>
			<td width=610 colspan=5 align=center><fontsize=5><input type="text" name="address" value="${via.address}"></td>
			</tr>
			
			 
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=110 align=center><fontsize=4>电子邮箱：</td>
			<td width=610 colspan=5 align=center><fontsize=5><input type="text" name="email" value="${via.email}"></td>
			</tr>
			
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720 colspan=6 align=center><fontsize=5>教育历程</td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720  colspan=6align=center><input type="text" name="edu1" value="${via.edu1}"></td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720  colspan=6align=center><input type="text" name="edu2" value="${via.edu2}"></td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720 colspan=6 align=center><fontsize=5>工作经历</td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720  colspan=6align=center><input type="text" name="jobback" value="${via.jobback}"></td>
			</tr>
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720 colspan=6 align=center><fontsize=5>自我评价</td>
			</tr>
			
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720 colspan=6><input type="text" name="self" value="${via.self}"></td>
			</tr>
			
			
			<tr height=50 bgcolor=#F0F8FF>
			<td width=720 colspan=6 align=center><input type="submit" value="保存更改"></td>
			</tr>
			</table>
			</form>
</body>
</html>