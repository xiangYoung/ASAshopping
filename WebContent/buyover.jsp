<%@page import="been.ProductDao"%>
<%@page import="been.Product"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buyover.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <% int id=Integer.parseInt(request.getParameter("proid")); 
     Product product=ProductDao.chaone(id);
  %>
   亲爱的<%=session.getAttribute("user") %>您好:
   <br/>
   &nbsp;&nbsp;您购买的<b><%=product.getPro_name() %></b>已经成功提交。
   <br>
   我们正在为您配货中...请耐心等待！
   <a href="index.jsp"> 返回主页</a>
</body>
</html>