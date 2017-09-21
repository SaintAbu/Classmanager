<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查找</title>
</head>
<body>
<form name="form1" method="post"action="find1.jsp">
<table align="center">
	<tr>
		<td>
			<select name="xuanxiang">
				<option value=0>根据学号，查看学生个人信息</option>
				<option value=1>根据学号，查看学生的学习情况</option>
				<option value=2>根据课程号，查看个人信息</option>
				<option value=3>根据课程号，查看选修情况</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			请输入要进行查询的学号/课程号：
		</td>
		<td>
			<input name="scno" type="text" id="scno">
		</td>
	</tr>
</table>
<center><input type="submit"value="提交"></center>
</form>
</body>
</html>