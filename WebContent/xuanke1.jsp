<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>选课页面</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 500px;
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
<table>
		<tr>
			<td>课程名</td>
			<td>学分</td>
			<td>学期</td>
			<td>管理</td>
		</tr>
		<jsp:useBean id="db" class="bean.DBBean" scope="page" />
		<%
			String s = "select * from course";
			ResultSet rs = db.executeQuery(s);
			String sno=request.getParameter("sno");
			while (rs.next()) {
				String cno = rs.getString(1);
				out.println("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) 
				+ "</td><td>" + rs.getString(4)  + "</td><td><a href=xuanke2.jsp?sno=" + sno+"&cno="+cno
						+ ">选课</a></td></tr>");
			}
			rs.close();
			db.close();
		%>
	</table>
</body>
</html>