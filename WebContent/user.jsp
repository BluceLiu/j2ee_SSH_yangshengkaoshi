<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"> 
</head>
<body>
<h3>欢迎您，用户${sessionScope.user.userName }!</h3>
<hr>
<br /><br /><br />
<form action="usergetByTitleOrContent" method="post">
标题：<input type="text"  class="form-control1" name="artGet.title" id="title1" />
内容：<input type="text" class="form-control1" name="artGet.content" id="content1" />
<input type="submit" name="chaxun" id="chaxun" value="查询" class="btn btn-primary" />
</form>
<hr>
<table style="border:1;" class="table table-hover">
	<tr>
		<td>序号</td>
		<td>文章标题</td>
		<td>发布时间</td>
		
	</tr>
<c:forEach items="${sessionScope.arts }" var="art" varStatus="vs" >
	<tr>
		<td>${vs.index+1 }</td>
		<td><a href="getOneAction?artId=${art.artId }&op=1">${art.title }</a></td>
		<td>${art.artDate }</td>
		
	</tr>
</c:forEach>	
</table>




</body>
</html>