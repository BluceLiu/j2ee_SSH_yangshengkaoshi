<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"> 
</head>
<body>
<h3>�鿴����ҳ��</h3>
<hr>
<div style="width:50%;">
    <div   align="center">
        <h4>${sessionScope.art1.title }</h4><br>
        
    </div>


    <div  align="right">
       <h5>${sessionScope.art1.artDate }</h5>
    </div>


    <div  align="left">
    ����<b>ժҪ��</b>
        ${sessionScope.art1.artSummary }
    </div>
<br>

    <div   align="left">
        ����<b>���ģ�</b>
        ${sessionScope.art1.content }
    </div>

</div>
</body>
</html>