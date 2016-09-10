<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面 </title>
<style type="text/css">
#main {
	height: 400px;
	width:1100px;
	margin:0 auto;
}
#main {
	background-color: #DCF5FC;
}
#main {
	text-align: center;
}
#main table {
	line-height:63px;
	margin:0 auto;
}
*{margin:0px;}
#top{
	width:1100px;
	height:83px; 
	background:#0000ff;
	margin:0 auto;
	}
#logo{
	width:200px; 
	height:50px; 
	position:absolute; 
	left:300px; 
	top:15px; 
	float:left;
	}
.login{
    color:#ffffff; 
    font-size:36px;
    position:absolute;
    left:530px; 
    top:20px;
}
.footer{
    width:1100px;
    height:140px;
    background:#bfbfbf; 
    margin:0 auto;
}
#logof{
    width:300px; 
    height:140px; 
    float:left;
  }
#logoft{
    position:relative;
    top:50px;
    left:160px;
 }
#message{
    width:800px;
    height:90px;
    float:left; 
    text-align:center;  
    padding-top:50px; 
    line-height:25px
 }

#top #time {
	float: right;
	width: auto;
	margin-top: 8px;
	position: relative;
	top: 50px;
	right:3px;
}
</style>
</head>

<body>
<div id="top" class="">
  <div id="logo" class="">
		<img src="images/logo.png" width="200" height="50" alt="" />
	</div>
   <span class="login">欢迎注册</span>
  <div id="time">
  <script>
    setInterval("time.innerHTML='现在时间为：'+new Date().toLocaleString()",1000);
  </script>
  </div>
  </div>
<div id="main">

<table>
<form  method="post" action="register" >
<tr>
<td>用户名：</td>
<td><input type="text" name="username" ></td>
</tr>
<tr>
<td>密&nbsp;码：</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>再次输入：</td>
<td><input type="password"></td>
</tr>
<tr>
<td>邮&nbsp;箱：</td>
<td><input type="text" name="eamil"></td>
</tr>
<tr>
<td>性&nbsp;别：</td>
<td><input type="radio" checked="checked"  name="sex" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女">女</td>
</tr>
<tr>
<td>&nbsp;&nbsp;<input type="submit" value="提交"></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></td>
</tr>
</from>
</table>

</div>
 <div class="footer">
  <div id="logof" class="">
	<img  id="logoft" src="images/logo.png" width="122" height="32" alt="" />
  </div>

	<div id="message" class="">
		<p><a href="#">商城简介</a><i>|</i><a href="#">商城公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 SAS版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号
	京ICP证B1034-8373号</p><p>某市公安局XX分局备案编号：123456789123</p>
	</div>
</div>
</body>
</html>
