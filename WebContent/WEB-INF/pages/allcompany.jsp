<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 折叠面板</title>
	<link rel="stylesheet" href="dist/css/bootstrap.min.css">
	<script src="dist/js/jquery.min.js"></script>
	<script src="dist/js/bootstrap.min.js"></script>
	<style>

table {
    *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0;
    width: 100%;    
}

.bordered {
    border: solid #ccc 1px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0 1px 1px #ccc; 
    -moz-box-shadow: 0 1px 1px #ccc; 
    box-shadow: 0 1px 1px #ccc;         
}

.bordered tr:hover {
    background: #fbf8e9;
    -o-transition: all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;     
}    
    
.bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 10px;
    text-align: left;    
}

.bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
}

.bordered td:first-child, .bordered th:first-child {
    border-left: none;
}

.bordered th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;
}

.bordered th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.bordered th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}



/*----------------------*/

.zebra td, .zebra th {
    padding: 10px;
    border-bottom: 1px solid #f2f2f2;    
}

.zebra tbody tr:nth-child(even) {
    background: #f5f5f5;
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
}

.zebra th {
    text-align: left;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
    border-bottom: 1px solid #ccc;
    background-color: #eee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
    background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
    background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
    background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
    background-image:      -o-linear-gradient(top, #f5f5f5, #eee); 
    background-image:         linear-gradient(top, #f5f5f5, #eee);
}

.zebra th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;  
}

.zebra th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.zebra th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.zebra tfoot td {
    border-bottom: 0;
    border-top: 1px solid #fff;
    background-color: #f1f1f1;  
}

.zebra tfoot td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.zebra tfoot td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}

.zebra tfoot td:only-child{
    -moz-border-radius: 0 0 6px 6px;
    -webkit-border-radius: 0 0 6px 6px
    border-radius: 0 0 6px 6px
}
  
</style>
</head>
<body>

<div class="panel-group" id="accordion">
		<c:forEach items="${com.data }" var="com" begin="0" end="0" step="1">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseOne">
						<h3>${com.cname}</h3>
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
			<table class="bordered">
			    <thead>
			
			    <tr>
			        <th>#</th>        
			        <th>介绍</th>
			        <th>备注</th>
			    </tr>
			    </thead>
			    <tr>
			        <td>招聘岗位</td>        
			        <td>${com.job}</td>
			        <td></td>
			    </tr>        
			    <tr>
			        <td>地址</td>         
			        <td>${com.address}</td>
			        <td></td>
			    </tr>
			    <tr>
			
			        <td>电话</td>         
			        <td>${com.tel}</td>
			        <td></td>
			    </tr>    
			    <tr>
			        <td>职位发布人</td> 
			        <td>${com.boss}</td>
			        <td></td>
			
			    </tr>
			    <tr>
			        <td>描述</td> 
			        <td>${com.message}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>工作内容</td> 
			        <td>${com.jobdescribe}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>融资上市情况</td> 
			        <td>${com.moneycondition}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>薪酬待遇</td> 
			        <td>${com.weal}</td>
			        <td></td>
			    </tr>
			</table>
			<h3><a href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">立即投递</a></h3>
			</div>
		</div>
		</c:forEach>
		<c:forEach items="${com.data }" var="com" begin="1" end="1" step="1">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseTwo">
						<h3>${com.cname}</h3>
					</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<table class="bordered">
			    <thead>
			
			    <tr>
			        <th>#</th>        
			        <th>介绍</th>
			        <th>备注</th>
			    </tr>
			    </thead>
			    <tr>
			        <td>招聘岗位</td>        
			        <td>${com.job}</td>
			        <td></td>
			    </tr>        
			    <tr>
			        <td>地址</td>         
			        <td>${com.address}</td>
			        <td></td>
			    </tr>
			    <tr>
			
			        <td>电话</td>         
			        <td>${com.tel}</td>
			        <td>1974</td>
			    </tr>    
			    <tr>
			        <td>职位发布人</td> 
			        <td>${com.boss}</td>
			        <td>1966</td>
			
			    </tr>
			    <tr>
			        <td>描述</td> 
			        <td>${com.message}</td>
			        <td>1994</td>
			    </tr>
			    <tr>
			        <td>工作内容</td> 
			        <td>${com.jobdescribe}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>融资上市情况</td> 
			        <td>${com.moneycondition}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>薪酬待遇</td> 
			        <td>${com.weal}</td>
			        <td></td>
			    </tr>
			</table>
			<h3><a href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">立即投递</a></h3>
			</div>
		</div>
		</c:forEach>
		<c:forEach items="${com.data }" var="com" begin="2" end="2" step="1">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseThree">
						<h3>${com.cname}</h3>
					</a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<table class="bordered">
			    <thead>
			
			    <tr>
			        <th>#</th>        
			        <th>介绍</th>
			        <th>备注</th>
			    </tr>
			    </thead>
			    <tr>
			        <td>招聘岗位</td>        
			        <td>${com.job}</td>
			        <td></td>
			    </tr>        
			    <tr>
			        <td>地址</td>         
			        <td>${com.address}</td>
			        <td></td>
			    </tr>
			    <tr>
			
			        <td>电话</td>         
			        <td>${com.tel}</td>
			        <td>1974</td>
			    </tr>    
			    <tr>
			        <td>职位发布人</td> 
			        <td>${com.boss}</td>
			        <td>1966</td>
			
			    </tr>
			    <tr>
			        <td>描述</td> 
			        <td>${com.message}</td>
			        <td>1994</td>
			    </tr>
			    <tr>
			        <td>工作内容</td> 
			        <td>${com.jobdescribe}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>融资上市情况</td> 
			        <td>${com.moneycondition}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>薪酬待遇</td> 
			        <td>${com.weal}</td>
			        <td></td>
			    </tr>
			</table>
			<h3><a href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">立即投递</a></h3>
			</div>
		</div>
		</c:forEach>
		<c:forEach items="${com.data }" var="com" begin="3" end="3" step="1">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseFour">
						<h3>${com.cname}</h3>
					</a>
				</h4>
			</div>
			<div id="collapseFour" class="panel-collapse collapse">
				<table class="bordered">
			    <thead>
			
			    <tr>
			        <th>#</th>        
			        <th>介绍</th>
			        <th>备注</th>
			    </tr>
			    </thead>
			    <tr>
			        <td>招聘岗位</td>        
			        <td>${com.job}</td>
			        <td></td>
			    </tr>        
			    <tr>
			        <td>地址</td>         
			        <td>${com.address}</td>
			        <td></td>
			    </tr>
			    <tr>
			
			        <td>电话</td>         
			        <td>${com.tel}</td>
			        <td>1974</td>
			    </tr>    
			    <tr>
			        <td>职位发布人</td> 
			        <td>${com.boss}</td>
			        <td>1966</td>
			
			    </tr>
			    <tr>
			        <td>描述</td> 
			        <td>${com.message}</td>
			        <td>1994</td>
			    </tr>
			    <tr>
			        <td>工作内容</td> 
			        <td>${com.jobdescribe}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>融资上市情况</td> 
			        <td>${com.moneycondition}</td>
			        <td></td>
			    </tr>
			    <tr>
			        <td>薪酬待遇</td> 
			        <td>${com.weal}</td>
			        <td></td>
			    </tr>
			</table>
			<h3><a href="<%=request.getContextPath() %>/deliver.do?id=${com.id}">立即投递</a></h3>
			</div>
		</div>
		</c:forEach>
		<tr>
				<td>
                	总共【${com.pagecount}】页 &nbsp;&nbsp;${com.pageno}/${com.pagecount}&nbsp;&nbsp; <a href="${pageContext.request.contextPath}/searchtwo.do?pageno=1">首页</a> 
                	<c:choose>
                    <c:when test="${com.pageno > 1}">
                        <a href="${pageContext.request.contextPath}/searchtwo.do?pageno=${com.pageno-1}">上一页</a>
                    </c:when>
                    <c:otherwise>
                        	上一页
                    </c:otherwise>
                </c:choose>

                <c:choose>
                    <c:when test="${com.pageno < com.pagecount}">
                        <a href="${pageContext.request.contextPath}/searchtwo.do?pageno=${com.pageno+1}">下一页</a>
                    </c:when>
                    <c:otherwise>
                      	  下一页
                    </c:otherwise>
                </c:choose>
                  <a href="${pageContext.request.contextPath}/searchtwo.do?pageno=${com.pagecount}">尾页</a>          
                  </td>
            </tr>
</div>
</body>
</html>