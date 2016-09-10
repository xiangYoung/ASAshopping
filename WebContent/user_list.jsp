<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="been.UserDao"%>
<%@page import="been.User"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title> new document </title>
  <meta name="generator" content="editplus" />
  <meta name="author" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <style type="text/css">
     p{font-size:18px;color:#ff0033;}
	 table{background:#c4c4c4;border:solid 1px;}
	 table tr td{width:120px;height:30px;font-size:14px;color:#676767;text-align:center;border:solid 1px;}
  </style>
 </head>
 <body>
    <p>用户信息</p> 
	<table>
	   <tr>
	      <td>用户id</td>
		  <td>用户姓名</td>
		  <td>用户密码</td>
		  <td>用户邮箱</td>
		  <td>性别</td>
		  <td>操作</td>
	   </tr>
	   <%List<User> users=UserDao.chaxu();
	   for(User user:users){%>
	     <tr>
	      <td><%=user.getUserid() %></td>
		  <td><%=user.getUsername() %></td>
		  <td><%=user.getPassword() %></td>
		  <td><%=user.getEmail() %></td>
		  <td><%=user.getSex() %></td>
		  <td><a href="delete?id=<%=user.getUserid()%>">删除</a></td>
	   </tr>
	   <% } %>
	</table>
 </body>
</html>
