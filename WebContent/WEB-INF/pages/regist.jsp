<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${ctx}/dist/css/lyz.calendar.css" rel="stylesheet" type="text/css" />
		
	</head>
	<style>
		body{
			background-image: url(dist/img/loginbacko.jpg);
		}
		.mid{
			margin: 100px 0px 100px 1325px ;
			border: 1px white solid;
			width: 450px;
			height: 800px;
			background-color: ghostwhite;
			border-radius: 20px;
			box-shadow: 0 4px 8px 0 rgba(7,17,27,.1);
			
		}
		form{
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		form .logo{
			margin-top: 60px;
		}
		form .btn btn-primary btn-lg{
			width: 80px;
			height: 45px;
			margin-top: 20px;
		}
	</style>
	<body>
		<div class="mid">
			<form  method="post">
				<img class="logo" src="dist/img/logo.jpg" width="240px" height="150px"/>
				<div><p>姓名：</p><input type="text" name="name" id="name"/></div>
				<div><p>出生日期：</p><input type="text" class="showDate" value="点击选择日期" name="birth" id="birth"/></div><br>
				<div>性别：男：<input type="radio" value="man" name="sex" id="sex">女：<input type="radio" value="women" name="sex" id="sex">&nbsp;&nbsp;&nbsp;</div>
				<div><p>毕业院校：</p><input type="text" name="graschool" id="graschool"/></div>
				<div><p>账号：</p><input type="text" name="username" id="username" onblur="checkusername();"/><span id="checkuser"></span></div>
				<div><p>密码：</p><input type="password" name="password" id="password" onblur="checkpassword(this.id);"/><span id="passcheck"></span></div>
				<span style="font-size: 14px">(密码是以字母开头的5-20位)</span>
				<div><p>验证码：<img id="num" src="checkcode.do" />
						<a href="javascript:;" onclick="checkcode();">换一张</a></p>
						<input type="text"  id="code" onblur="comparecode();"/>
						<span id="showcode"></span>

				</div>
				<%@include file="registresp.jsp" %>
				<input id="zhuce" onclick="registup();" value="注册" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"/>
				<br>
				<a href="<%=request.getContextPath() %>/exit.do" style="text-align:center">返回登录页面</a>
			</form>
		</div>
	<script type="text/javascript" src="dist/js/jquery-1.5.1.js"></script>
	<script src="${ctx}/dist/js/lyz.calendar.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	var boo=true;
	function registup(){
		var name=document.getElementById("name").value;
		var birth=document.getElementById("birth").value;
		var sex=document.getElementById("sex").value;
		var graschool=document.getElementById("graschool").value;
		var username=document.getElementById("username").value;
		var password=document.getElementById("password").value;
		$.ajax({
			type:"post",
			url:"registup.do",
			dataType: "json",
			 data:{name:name,birth:birth,sex:sex,graschool:graschool,username:username,password:password},  
			success:function(t){
				
				if(t=="1"){
					
				}else{
					
				}
			}
		})
	}
	$(function(){
		$("#birth").calendar({
            controlId: "divDate",                                 // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"
            speed: 200,                                           // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200
            complement: true,                                     // 是否显示日期或年空白处的前后月的补充,默认：true
            readonly: true,                                       // 目标对象是否设为只读，默认：true
            upperLimit: new Date(),                               // 日期上限，默认：NaN(不限制)
            lowerLimit: new Date("2011/01/01"),                   // 日期下限，默认：NaN(不限制)
            callback: function () {                               // 点击选择日期后的回调函数
                alert("您选择的日期是：" + $("#birth").val());
            }
        });
	})
	function checkusername(){
		var username=document.getElementById("username").value;
		var checkuser=document.getElementById("checkuser");
		$.ajax({
			type:"get",
			url:"username.do?username="+username,
			success:function(t){
				
				if(t=="1"){
					checkuser.innerHTML="√";
				}else{
					checkuser.innerHTML="用户名已存在";
				}
			}
		})
	}
	function checkpassword(id){
		var password=document.getElementById(id).value;
		var reg=new RegExp("^[a-zA-Z]{1}([0-9a-zA-Z]|[._]){4,19}$");
		var boo=reg.test(password);
		var span=document.getElementById("passcheck");
		if(boo){
			span.innerHTML="√";
		}else{
			span.innerHTML="×";
		}
	}
	
	function checkcode(){
		if(boo){
			var num=document.getElementById("num");
			num.src="checkcode.do?"+Math.random();
			boo=false;
			setTimeout(function(){
				boo=true;
				},2000)
		}
	}
	function comparecode(){
		var code=document.getElementById("code").value;
		var showcode=document.getElementById("showcode");
		$.ajax({
			type:"get",
			url:"lookcode.do",
			success:function(t){
				if(t==code){
					showcode.innerHTML="√";
				}else{
					showcode.innerHTML="验证码不正确";
				}
			}
		})
	}
	</script>
	</body>
</html>