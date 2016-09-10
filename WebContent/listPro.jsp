<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="been.ProductDao"%>
<%@page import="been.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listPro.jsp' starting page</title>
    
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
  
    <table border="1px">
    <tr  align="center">
    <td  align="center">商品id</td>
    <td  align="center">商品名</td>
    <td width="160px" height="60px"  align="center">实例图</td>
    <td  align="center">种类</td>
    <td  align="center">价格</td>
    </tr>
    <tr>
  <td><% 
  request.setCharacterEncoding("utf-8");
  String kind=request.getParameter("kind");
  String name=request.getParameter("name");
  	String sql="select * from product where pro_kind=\""+kind+"\" and pro_name like\"%"+name+"%\";";
  List<Product> products=ProductDao.chakind(sql);
    for(Product product:products){%>
  <tr>
    
                 <td><%= product.getPro_id() %></td>
                 <td><%=product.getPro_name() %></td>
                 <td><img src="<%=product.getPro_image_3() %>" width="150px" height="60px"/></td>
                 <td><%=product.getPro_image_() %></td>
                 <td><%=product.getPro_price() %></td>
                 </tr>
   <% }
   
   %>
  </tr>
  <%=kind+name %>
    
    </table>
  </body>
</html>
