<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
     <title> back management </title>
     <meta name="generator" content="editplus" />
     <meta name="author" content="" />
     <meta name="keywords" content="" />
     <meta name="description" content="" />
	 <style type="text/css">
	 *{margin:0px;padding:0px;}
	 li{list-style:none;}
	 a{text-decoration:none;}
     #header{
	width:1100px;
	height:83px; 
	background:#51e673;
	
	margin:0 auto;
	}
     .logo{
	width:200px; 
	height:50px; 
	position:absolute; 
	left:300px; 
	top:15px; 
	float:left;}
	 .back_word{
    color:#ffffff; 
    font-size:36px;
 position:relative; 
    left:530px; 
    top:20px;}
	.nav{width:1100px;height:32px;margin:4px auto;background:#d6d6d6;border:solid 1px;}
	.topic{width:300px;height:30px;line-height:30px;}
	.link{width:510px;height:30px;float:right;position:relative;bottom:32px;}
	.link ul li{width:100px;font-size:14px;line-height:30px;float:left;}
	#container{width:1100px;height:600px;margin:4px auto;position:relative;}
    .left_menu{width:300px;height:600px;background:#d0e250;}
	.show_content{width:790px;height:600px;float:right;position:absolute;top:0px;left:306px;background:#bda8dd;}
	.menu_frame{width:300px;height:600px;}
	.content_frame{width:790px;height:600px;}

	#footer{
    width:1100px;
    height:140px;
    background:#bfbfbf; 
    margin:10px auto;}
	.logof{
    width:300px; 
    height:140px; 
    float:left;
  }
    .logoft{
    position:relative;
    top:50px;
    left:160px;
 }
    .info{
    width:800px;
    height:90px;
    float:left; 
    text-align:center;  
    padding-top:50px; 
    line-height:25px
 }
	</style>
   </head>
   <body>
      <div id="header">
         <div class="logo">
		   <img src="images/logo.png" width="200" height="50" alt="" />
	     </div>
         <span class="back_word" width="200px">ASA后台管理</span>
      管理员：<%=request.getParameter("user") %>
      </div>
	  <div class="nav">
	     <div class="topic">ASA&nbsp;&nbsp;&gt;&gt;&nbsp;&nbsp;后台管理&nbsp;&nbsp;&gt;&gt;商品管理</div>
		 <div class="link">
		    <ul>
			   <li><img src="images/home.png">&nbsp;&nbsp;<a href="index.jsp">home</a></li>
			   <li><img src="images/forward.png">&nbsp;&nbsp;<a href="#">forward</a></li>
			   <li><img src="images/backward.png">&nbsp;&nbsp;<a href="#">backward</a></li>
			   <li><img src="images/refresh.png">&nbsp;&nbsp;<a href="#">refresh</a></li>
			   <li><img src="images/exit.png">&nbsp;&nbsp;<a href="#">exit</a></li>
			</ul>
		 </div>
	  </div>
	  <div id="container">
	     <div class="left_menu"><iframe class="menu_frame" src="left_menu.jsp" name="menuFrame" scrolling="no"></iframe></div>
		 <div class="show_content"><iframe class="content_frame" src="add_goods.jsp" name="contentFrame" scrolling="no"></iframe></div>
	  </div>
	  <div id="footer">
         <div class="logof">
	        <img class="logoft" src="images/logo.png" width="122" height="32" alt="" />
         </div>
	     <div class="info">
		   <p>
		      <a href="#">商城简介</a><i>|</i><a href="#">商城公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234
		   </p>
	       <p>Copyright &copy; 2006 - 2014 SAS版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号
	京ICP证B1034-8373号
	       </p>
		   <p>某市公安局XX分局备案编号：123456789123</p>
	    </div>
     </div>
   </body>
</html>
