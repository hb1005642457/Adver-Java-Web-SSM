<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>投递页面</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    @media only screen and (min-width: 1200px) {
      .blog-g-fixed {
        max-width: 1200px;
      }
    }

    @media only screen and (min-width: 641px) {
      .blog-sidebar {
        font-size: 1.4rem;
      }
    }

    .blog-main {
      padding: 20px 0;
    }

    .blog-title {
      margin: 10px 0 20px 0;
    }

    .blog-meta {
      font-size: 14px;
      margin: 10px 0 20px 0;
      color: #222;
    }

    .blog-meta a {
      color: #27ae60;
    }

    .blog-pagination a {
      font-size: 1.4rem;
    }

    .blog-team li {
      padding: 4px;
    }

    .blog-team img {
      margin-bottom: 0;
    }

    .blog-content img,
    .blog-team img {
      max-width: 100%;
      height: auto;
    }

    .blog-footer {
      padding: 10px 0;
      text-align: center;
    }
  </style>
</head>
<body>
<%@include file="nav.jsp" %>
<div class="am-g am-g-fixed blog-g-fixed">
  <div class="am-u-md-8">
    <ul class="am-list am-list-static am-list-border am-list-striped">
		  <li><h1>${com.cname}</h1></li>
		  <li><h4><a href="#">公司地址: ${com.address}</a></h4></li>
		  <li><h4><a href="#">联系电话: ${com.tel}</a></h4></li>
		  <li><h4><a href="#">招聘岗位: ${com.job}</a></h4></li>
		  <li><h4><a href="#">联系人: ${com.boss}</a></h4></li>
		  <li><h4><a href="#">公司信息: ${com.message}</a></h4></li>
		  <li><h4><a href="#">职位工作内容描述</a></h4></li>
		  <li><a href="#">${com.jobdescribe}</a></li>
		  <li><h4><a href="#">融资上市情况: ${com.moneycondition}</a></h4></li>
		  <li><h4><a href="#">薪酬福利待遇</a></h4></li>
		  <li><a href="#">${com.weal}</a></li>
		  <li><h3><a href="<%=request.getContextPath() %>/deliverup.do?id=${com.id}" style="color:#00FFFF">确认投递</a></h3></li>
	</ul>
	<br/>
	<br/>
		<ul class="am-comments-list am-comments-list-flip" style="border-top: 1px solid #808080;">
		<h2 style="color:#D0D0D0">评论区</h2>
	<c:forEach items="${asslist}" var="ass">
  <li class="am-comment">
    <article class="am-comment">
	  <div class="am-comment-main">
	    <header class="am-comment-hd">
	      <!--<h3 class="am-comment-title">评论标题</h3>-->
	      <div class="am-comment-meta">
	        <a href="#link-to-user" class="am-comment-author">${ass.memid}</a>
	      </div>
	    </header>
	    <div class="am-comment-bd">
	      ${ass.text}
	    </div>
	  </div>
	</article>
  </li>
  </c:forEach>
	</ul>
	<br/><br/><br/>
	<ul class="am-comments-list am-comments-list-flip" style="border-top: 1px solid #808080;">
		<h2 style="color:#D0D0D0">说说你的看法</h2>
  <li class="am-comment">
  <form action="<%=request.getContextPath() %>/assess.do?comid=${com.id}" method="post">
   <textarea name="text" style="width:500px;height:100px;margin-left: 60px"></textarea><br/>
	<input type="submit" value="我要评论" style="margin-left: 60px">
	</form>
  </li>
   <li class="am-comment">
  <form action="<%=request.getContextPath() %>/report.do?comid=${com.id}" method="post">
   <textarea name="text" style="width:500px;height:100px;margin-left: 60px" ></textarea><br/>
	<input type="submit" value="我要举报" style="margin-left: 60px">
	</form>
  </li>
	</ul>
<!-- 模态框（Modal） -->
  </div>

  <div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">
      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">公告（${announce.activity}）</div>
        <div class="am-panel-bd">
          <p>${announce.content}</p>
          <a class="am-btn am-btn-success am-btn-sm" href="#">查看更多 →</a>
        </div>
      </section>
      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">相关公司</div>
        <ul class="am-list blog-list">
        <c:forEach items="${comlist }" var="com">
          <li><a href="<%=request.getContextPath() %>/deliversub.do?id=${com.id}">${com.cname }</a></li>
          </c:forEach>
        </ul>
      </section>

    </div>
  </div>

</div>
<br/><br/><br/>
<%@include file="down.jsp" %>
<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>

</body>
</html>