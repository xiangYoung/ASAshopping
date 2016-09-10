<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title> new document </title>
  <meta name="generator" content="editplus" />
  <meta name="author" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <style type="text/css">
	 body{font-size:13px;line-height:20px;}
	 a{font-size:13px;color:#000000;text-decoration:none;}
	 a:hover{color:#ff0033;}
	 li{list-style:none;line-height:30px;}
	 p{font-size:16px;color:#009933;}
	 img{vertical-align:middle;border:0;}
	 .no_show{display:none;}
  </style>
  <script type="text/javascript">
     function show(id)
	 {
	    if(document.getElementById(id).style.display=='block')
           document.getElementById(id).style.display='none';
		else
		   document.getElementById(id).style.display='block';
	 }
  </script>
 </head>
 <body>
    <p>后台管理</p> 
	<ul><a href="javascript:onclick=show('goods_manage')"><img src="images/add.gif">&nbsp;&nbsp;商品管理</a></ul>
	<ul id="goods_manage" class="no_show">
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="add_goods.jsp" target="contentFrame">商品添加</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">商品修改</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">商品信息</a></li>
	</ul>
    <ul><a href="javascript:onclick=show('user_manage')"><img src="images/add.gif">&nbsp;&nbsp;用户管理</a></ul>
	<ul id="user_manage" class="no_show">
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="user_list.jsp" target="contentFrame">用户信息</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">用户注销</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">用户修改</a></li>
	</ul>
	 <ul><a href="javascript:onclick=show('order_manage')"><img src="images/add.gif">&nbsp;&nbsp;订单管理</a></ul>
	<ul id="order_manage" class="no_show">
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">订单信息</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">订单添加</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">订单修改</a></li>
	</ul>
	<ul><a href="javascript:onclick=show('admin_manage')"><img src="images/add.gif">&nbsp;&nbsp;管理员管理</a></ul>
	<ul id="admin_manage" class="no_show">
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">管理员信息</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">管理员注销</a></li>
	   <li><img src="images/to.gif">&nbsp;&nbsp;<a href="#">管理员修改</a></li>
	</ul>
 </body>
</html>
