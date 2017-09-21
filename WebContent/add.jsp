<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加学生或课程信息</title>
</head>
<body>

<form action="addzhongzhuan.jsp" method="post" name="form1"  >
<table align="center">
	<tr>
		<td>
			<select name="xuanxiang">
				<option value=0>添加学生的信息</option>
				<option value=1>添加课程信息</option>
			</select>
		</td>
	</tr>
</table>
<center><input type="submit"value="提交"></center>
</form>

</body>
</html> 