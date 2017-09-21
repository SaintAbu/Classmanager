<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新成绩</title>
</head>
<body>
<jsp:useBean id="db" class="bean.DBBean" scope="page" />
<%
		request.setCharacterEncoding("UTF-8");
		String cno = request.getParameter("cno");
		String fenshu = request.getParameter("fenshu");
		String sql = "update SC set grade='" + fenshu 
				+ "' where cno=" + cno;
		int i = db.executeUpdate(sql);
		if (i == 1) {
			out.println("<script language='javaScript'> alert('打分成功，点击确定后自动跳到主页。');</script>");
			response.setHeader("refresh", "1;url=First.jsp");
		}
		db.close();
%>

</body>
</html>