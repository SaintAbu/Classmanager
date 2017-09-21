<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>提交成绩页面</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 400px;
}
th, td {
	border: solid #333 1px;
	height: 20px;
}
div {
	text-align: center;
}
</style>
</head>
<body>
<jsp:useBean id="db" class="bean.DBBean" scope="page" />
	<%
		request.setCharacterEncoding("UTF-8");
		String cno = request.getParameter("cno");
		ResultSet rs = db.executeQuery("select sno ,SC.cno,cname from SC join Course on SC.cno=Course.cno  where SC.cno="+cno);
		rs.next();
	%>
	<form action="tijiaochengji2.jsp" method="post" name="form1" >
		<table>
			<caption>打分</caption>
			<tr>
				<th>学号</th>
				<td><%=rs.getString(1) %></td>
			</tr>
			<tr>
				<th>课程号：</th>
				<td><%=rs.getString(2) %></td>
			</tr>
			<tr>
				<th>课程名：</th>
				<td><%=rs.getString(3) %></td>
			</tr>
			<tr>
				<th>分数：</th>
				<td><input name="fenshu" type="text"></td>
			</tr>
			<tr>
			
				<th colspan="2"><input type="hidden" name="cno" value="<%=rs.getString(2) %>">
					<input type="submit" value="提交"> <input type="reset"
					value="重置"></th>
			</tr>
		</table>
	</form>
	<%
		db.close();
	%>
</body>
</html>