<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除学生或课程信息</title>
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
<jsp:useBean id="db" class="bean.DBBean" scope="page" />
	<%
		request.setCharacterEncoding("UTF-8");
		int i = db.executeUpdate("delete from Student where sno="+scno1);
		if (i == 1) {
			out.println("<script language='javaScript'> alert('删除成功，点击确定后自动跳到主页！');</script>");
			response.setHeader("refresh", "1;url=First.jsp");
		} else {
			out.println("<script language='javaScript'> alert('删除失败，点击确定后自动跳到主页！');</script>");
			response.setHeader("refresh", "1;url=First.jsp");
		}
		db.close();
	%>
<%
    }
    if(xuanxiang1==1)
    {
%>
<jsp:useBean id="db1" class="bean.DBBean" scope="page" />
	<%
		request.setCharacterEncoding("UTF-8");
		int i = db1.executeUpdate("delete from Course where cno="+scno1);
		if (i == 1) {
			out.println("<script language='javaScript'> alert('删除成功，点击确定后自动跳到主页！');</script>");
			response.setHeader("refresh", "1;url=First.jsp");
		} else {
			out.println("<script language='javaScript'> alert('删除失败，点击确定后自动跳到主页！');</script>");
			response.setHeader("refresh", "1;url=First.jsp");
		}
		db1.close();
	%>
<%
    }
%>
</body>
</html>