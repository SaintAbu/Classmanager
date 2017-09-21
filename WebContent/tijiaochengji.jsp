<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>提交成绩</title>
</head>
<body>
<form action="tijiaochengji1.jsp" method="post" name="form1" >
<table align="center">
	<tr>
		<td>
			请输入要打分的课程号：
		</td>
		<td>
			<input name="cno" type="text">
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="submit" value="开始打分">
		</td>
	</tr>
</table>
</form>
</body>
</html>