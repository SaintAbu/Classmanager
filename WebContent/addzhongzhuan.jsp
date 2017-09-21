<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>中转页面</title>
</head>
<body>
<% 
    
    		String  xuanxiang = request.getParameter("xuanxiang");
   		    int xuanxiang1=Integer.parseInt(xuanxiang);
   		    out.println("xuanxiang1");
			if (xuanxiang1 == 0) 
			{
				response.setHeader("refresh", "0.1;url=add1.jsp");
			}
			if (xuanxiang1 ==1) 
			{
				response.setHeader("refresh", "0.1;url=add2.jsp");
			}
%>
</body>
</html>