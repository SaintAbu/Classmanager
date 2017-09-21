<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新选课</title>
</head>
<body>

<jsp:useBean id="db" class="bean.DBBean" scope="page" />
<%
		request.setCharacterEncoding("UTF-8");
		String cno = request.getParameter("cno");
		int cno1=Integer.parseInt(cno);
		String sno1 = request.getParameter("sno");

		if(sno1!=null&&cno!=null)
		{
			String sql = "insert into SC(sno,cno) values('"+sno1+"','"+cno+"')";
			int i = db.executeUpdate(sql);
			if (i == 1) {
				out.println("<script language='javaScript'> alert('添加成功,点击确定跳转到主页!');</script>");
				response.setHeader("refresh", "1;url=First.jsp");
				} else {
					out.println("<script language='javaScript'> alert('添加失败，点击确定返回添加页面！');</script>");
					response.setHeader("refresh", "1;url=First.jsp");
				}
			db.close();
		}
    %>
</body>
</html>