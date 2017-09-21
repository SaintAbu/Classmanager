<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示查询信息</title>
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
<%
	String scno=request.getParameter("scno");
    int scno1=Integer.parseInt(scno);
    String xuanxiang=request.getParameter("xuanxiang");
    int xuanxiang1=Integer.parseInt(xuanxiang);
    if(xuanxiang1==0)
    {
%>
	<table align="center">
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>年龄</td>
			<td>专业</td>
		</tr>
		<jsp:useBean id="db" class="bean.DBBean" scope="page" />
		<%
			String s = "select * from student where sno="+scno1;
			ResultSet rs = db.executeQuery(s);
			while (rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td><td>" 
						+ rs.getString(2) + "</td><td>"+ rs.getString(3) + "</td><td>"
					    + rs.getString(4) + "</td><td>" + rs.getString(5) +"</td></tr>");
			}
			rs.close();
			db.close();
		%>
	</table>
<%
    }
    if(xuanxiang1==1)
    {
%>
	<table align="center">
		<tr>
			<td>课程号</td>
			<td>课程名</td>
			<td>学分</td>
			<td>学期</td>
			<td>分数</td>
		</tr>
		<jsp:useBean id="db1" class="bean.DBBean" scope="page" />
		<%
			String s = "select Course.cno,cname,ccredit,semester,grade from Course join SC on Course.cno=SC.cno join student on SC.sno=student.sno where SC.sno="+scno1;
			ResultSet rs = db1.executeQuery(s);
			while (rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td><td>" 
						+ rs.getString(2) + "</td><td>"+ rs.getString(3) + "</td><td>"
					    + rs.getString(4) + "</td><td>" + rs.getString(5) +"</td></tr>");
			}
			rs.close();
			db1.close();
		%>
	</table>
<%
   }
    if(xuanxiang1==2)
    {
%>
	<table align="center">
		<tr>
			<td>课程号</td>
			<td>课程名</td>
			<td>学分</td>
			<td>学期</td>
		</tr>
		<jsp:useBean id="db2" class="bean.DBBean" scope="page" />
		<%
			String s = "select cno,cname,ccredit,semester from Course  where cno="+scno1;
			ResultSet rs = db2.executeQuery(s);
			while (rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td><td>" 
						+ rs.getString(2) + "</td><td>"+ rs.getString(3) + "</td><td>"
					     + rs.getString(4) +"</td></tr>");
			}
			rs.close();
			db2.close();
		%>
	</table>
<%
   }
    if(xuanxiang1==3)
    {
%>
	<table align="center">
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>专业</td>
			<td>分数</td>
		</tr>
		<jsp:useBean id="db3" class="bean.DBBean" scope="page" />
		<%
			String s = "select student.sno,sname,sdept,grade from student join SC on SC.sno=student.sno join Course on SC.cno=Course.cno  where SC.cno="+scno1;
			ResultSet rs = db3.executeQuery(s);
			while (rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td><td>" 
						+ rs.getString(2) + "</td><td>"+ rs.getString(3) + "</td><td>"
					     + rs.getString(4) +"</td></tr>");
			}
			rs.close();
			db3.close();
		%>
		
	</table>
<%
   }
%>

	<center><p><a href=First.jsp>回到首页</a></p></center>
		
</body>
</html>
