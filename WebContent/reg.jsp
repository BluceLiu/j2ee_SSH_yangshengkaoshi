<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"> 
<script>
    function check(f){
        if( f.userName.value == '' ){
            alert('�û�������Ϊ��')
            return false;
        }
        if( f.userPwd.value == '' ){
            alert('���벻��Ϊ�� ')
            return false;
        }
        if( f.reuserPwd.value == '' ){
            alert('ȷ�����벻��Ϊ��')
            return false;
        }
        if( f.realName.value == '' ){
            alert('��������Ϊ��')
            return false;
        }
        if( f.phone.value == '' ){
            alert('�绰����Ϊ��')
            return false;
        }
        if( f.address.value == '' ){
            alert('��ַ����Ϊ��')
            return false;
        }
        if( f.userPwd.value != f.reuserPwd.value ){
            alert('������д���벻һ��')
            return false;
        }
    }
</script>
</head>
<body>
<h3>ע��ҳ��</h3>
<hr>
<form action="regAction" method="post" onsubmit="return check(this)">
	<table >
		<tr>
			<td>�û�����</td>
			<td><input  type="text" id="userName" name="userName"/></td>
			<td></td>
		</tr>
		<tr>
			<td>���룺</td>
			<td><input type="text" id="userPwd" name="userPwd"/></td>
			<td></td>
		</tr>
		<tr>
			<td>ȷ�����룺</td>
			<td><input type="text" id="reuserPwd" name="reuserPwd"/></td>
			<td></td>
		</tr>
		<tr>
			<td>��ʵ������</td>
			<td><input type="text" id="realName" name="realName"/></td>
			<td></td>
		</tr>
		<tr>
			<td>�绰��</td>
			<td><input type="text" id="phone" name="phone"/></td>
			<td></td>
		</tr>
		<tr>
			<td>��ַ��</td>
			<td><input type="text" id="address" name="address"/></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" id="tijiao" name="tijiao" value="��¼"/></td>
			<td></td>
		</tr>
		
	</table>
</form>
</body>
</html>