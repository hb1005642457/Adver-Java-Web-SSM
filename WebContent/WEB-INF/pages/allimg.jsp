<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"> 
    <title>Bootstrap 实例 - 简单的轮播（Carousel）插件</title>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <script src="dist/js/jquery.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
</head>
<body>
​
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="dist/img/t1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="dist/img/t2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="dist/img/t3.jpg" alt="Third slide">
        </div>
        <div class="item">
            <img src="dist/img/t4.jpg" alt="Four slide">
        </div>
        
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
       data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" 
       data-slide="next">&rsaquo;</a>
</div> 
​
</body>
</html>