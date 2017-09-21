<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除学生或课程信息</title>
</head>
<body>
<form name="form1" method="post"action="delete1.jsp">
<table align="center">
	<tr>
		<td>
			<select name="xuanxiang">
				<option value=0>删除学生的信息</option>
				<option value=1>删除课程信息</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			请输入要进行删除的学号/课程号：
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