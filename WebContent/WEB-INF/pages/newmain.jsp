<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>万招</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles --> 
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body>
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6" style="font-size:16px;margin-top:7px">Welcome!<strong>${user.username}</strong></div>
	<div class="span6">
	<div class="pull-right">
		<span class="btn btn-mini"><a href="<%=request.getContextPath() %>/messageup.do"><img class="ling" src="dist/img/ling.jpg" width="35px" height="35px"/></a></span>
		<a href="product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini"><a href="<%=request.getContextPath() %>/personalmess.do"><img class="myself" src="dist/img/tou.gif" width="35px" height="35px"/></a></span>
		<a href="product_summary.html"><span class="">$</span></a>
		<a href="<%=request.getContextPath() %>/pay-ui.do"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i>升级成为VIP</span> </a> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><h1>万招招聘网</h1></a>
		<form class="form-inline navbar-search" method="post" action="<%=request.getContextPath() %>/searchtwo.do" >
		<input class="srchTxt" type="text" name="cname"/>
		  <select class="srchTxt" name="job">
			<option>所有</option>
			<option>开发 </option>
			<option>运营</option>
			<option>测试</option>
			<option>人事</option>
			<option>销售</option>
		</select> 
		  <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="special_offer.html">热门职位</a></li>
	 <li class=""><a href="<%=request.getContextPath() %>/searchtwo.do">公司</a></li>
	 <li class=""><a href="<%=request.getContextPath() %>/vitae.do">我的简历</a></li>
	 
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  <div class="item active">
		  <div class="container">
			<a href="register.html"><img style="width:100%" src="themes/images/carousel/lb1.png" alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="register.html"><img style="width:100%" src="themes/images/carousel/lb2.png" alt=""/></a>
				<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="register.html"><img src="themes/images/carousel/lb3.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="register.html"><img src="themes/images/carousel/lb4.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		   
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="register.html"><img src="themes/images/carousel/lb5.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="register.html"><img src="themes/images/carousel/lb6.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	  </div> 
</div>
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
		<c:forEach items="${menuo}" var="menuo" begin="0" end="0" step="1">
			<li ><a>${menuo.name}</a>
				<ul>
				<c:forEach items="${menut1}" var="menut1" begin="0" end="0" step="1">
				<li><a class="active" href="<%=request.getContextPath() %>/searchtwo.do?job=${menut1.name}"><i class="icon-chevron-right"></i>${menut1.name}</a></li>
				</c:forEach>
				<c:forEach items="${menut1}" var="menut1" begin="1" step="1">
				<li><a href="<%=request.getContextPath() %>/searchtwo.do?job=${menut1.name}"><i class="icon-chevron-right"></i>${menut1.name}</a></li>				
				</c:forEach>
				</ul>
			</li>
			</c:forEach>
			<c:forEach items="${menuo}" var="menuo" begin="1" end="1" step="1">
			<li ><a>${menuo.name}</a>
			<ul >
				<c:forEach items="${menut2}" var="menut2">
				<li><a href="<%=request.getContextPath() %>/searchtwo.do?job=${menut2.name}"><i class="icon-chevron-right"></i>${menut2.name}</a></li>				
				</c:forEach>												
			</ul>
			</li>
			</c:forEach>
			<c:forEach items="${menuo}" var="menuo" begin="2" end="2" step="1">
			<li ><a>${menuo.name}</a>
				<ul >
				<c:forEach items="${menut3}" var="menut3">
				<li><a href="<%=request.getContextPath() %>/searchtwo.do?job=${menut3.name}"><i class="icon-chevron-right"></i>${menut3.name}</a></li>				
				</c:forEach>													
			</ul>
			</li>
			</c:forEach>
			<c:forEach items="${menuo}" var="menuo" begin="3" end="3" step="1">
			<li ><a>${menuo.name}</a>
				<ul >
				<c:forEach items="${menut4}" var="menut4">
				<li><a href="<%=request.getContextPath() %>/searchtwo.do?job=${menut4.name}"><i class="icon-chevron-right"></i>${menut4.name}</a></li>				
				</c:forEach>													
			</ul>
			</li>
			</c:forEach>
			<c:forEach items="${menuo}" var="menuo" begin="4" end="4" step="1">
			<li ><a>${menuo.name}</a>
				<ul >
				<c:forEach items="${menut5}" var="menut5">
				<li><a href="<%=request.getContextPath() %>/searchtwo.do?job=${menut5.name}"><i class="icon-chevron-right"></i>${menut5.name}</a></li>				
				</c:forEach>													
			</ul>
			</li>
			</c:forEach>
			<c:forEach items="${menuo}" var="menuo" begin="5" end="5" step="1">
			<li ><a>${menuo.name}</a>
				<ul >
				<c:forEach items="${menut6}" var="menut6">
				<li><a href="<%=request.getContextPath() %>/searchtwo.do?job=${menut6.name}"><i class="icon-chevron-right"></i>${menut6.name}</a></li>				
				</c:forEach>													
			</ul>
			</li>
			</c:forEach>
		</ul>
		<br/>
		  <div class="thumbnail">
			<div class="am-panel-bd">
          <h2><span class="am-icon-bookmark"></span>${announce.activity}</h2>
          <p>${announce.content}</p>
        </div>
		  </div><br/>
	</div>
<!-- Sidebar end=============================================== -->
		<div class="span9">		
			<div class="well well-small">
			<h4>特色公司 <small class="pull-right">200+ 特色公司等你挑战</small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
			  <c:forEach items="${com}" var="com" begin="0" end="3" step="1">
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="product_details.html"><img src="themes/images/products/555.jpg" alt=""></a>
					<div class="caption">
					  <h5>${com.cname}</h5>
					  <h4><a class="btn" href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">投递</a> <span class="pull-right">${com.job}</span></h4>
					</div>
				  </div>
				</li>
				</c:forEach>
			  </ul>
			  </div>
			  <div class="item">
			  <ul class="thumbnails">
			  <c:forEach items="${com}" var="com" begin="4" end="7" step="1">
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="product_details.html"><img src="themes/images/products/555.jpg" alt=""></a>
					<div class="caption">
					  <h5>${com.cname}</h5>
					  <h4><a class="btn" href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">投递</a> <span class="pull-right">${com.job}</span></h4>
					</div>
				  </div>
				</li>
				</c:forEach>
			  </ul>
			  </div>
			  </div>
			  <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">›</a>
			  </div>
			  </div>
		</div>
		</div>
		<div class="span9">		
			<div class="well well-small">
			<h4>猜你喜欢 <small class="pull-right">350+ 公司等你投递</small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
			  <c:forEach items="${com}" var="com" begin="8" end="11" step="1">
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="product_details.html"><img src="themes/images/products/333.jpg" alt=""></a>
					<div class="caption">
					  <h5>${com.cname}</h5>
					  <h4><a class="btn" href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">投递</a> <span class="pull-right">${com.job}</span></h4>
					</div>
				  </div>
				</li>
				</c:forEach>
			  </ul>
			  </div>
			  </div>
			  </div>
			  </div>
		</div>
		</div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
	<%@include file="down.jsp" %>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
<script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">Style Selector</div>
	<div class="themeName">Oregional Skin</div>
	<div class="images style">
	<a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
	<a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">Bootswatch Skins (11)</div>
	<div class="images style">
		<a href="themes/css/#" name="amelia" title="Amelia"><img src="themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spruce" title="Spruce"><img src="themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
		<a href="themes/css/#" name="superhero" title="Superhero"><img src="themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cyborg"><img src="themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cerulean"><img src="themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="journal"><img src="themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="readable"><img src="themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
		<a href="themes/css/#" name="simplex"><img src="themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="slate"><img src="themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spacelab"><img src="themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="united"><img src="themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
		<p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
	</div>
	<div class="themeName">Background Patterns </div>
	<div class="images patterns">
		<a href="themes/css/#" name="pattern1"><img src="themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
		<a href="themes/css/#" name="pattern2"><img src="themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern3"><img src="themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern4"><img src="themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern5"><img src="themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern6"><img src="themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern7"><img src="themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern8"><img src="themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern9"><img src="themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern10"><img src="themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern11"><img src="themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern12"><img src="themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern13"><img src="themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern14"><img src="themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern15"><img src="themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern16"><img src="themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern17"><img src="themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern18"><img src="themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern19"><img src="themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern20"><img src="themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>
		 
	</div>
	</div>
</div>
<span id="themesBtn"></span>
</body>
</html>