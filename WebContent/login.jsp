<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title> new document </title>
  <meta name="generator" content="editplus" />
  <meta name="author" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
*{margin:0px;}
#top{width:1100px;height:83px; background:#0000ff;margin:0 auto;}
#logo{width:200px; height:50px; position:absolute; left:300px; top:15px; float:left;}
.login{color:#ffffff; font-size:36px;position:absolute; left:530px; top:20px;}
.footer{width:1100px; height:140px; background:#bfbfbf; margin:0 auto;}
#logof{width:300px; height:140px; float:left;}
#logoft{position:relative;top:50px; left:160px;}
#message{width:800px;height:90px;float:left;  text-align:center;  padding-top:50px; line-height:25px}

.textd{width:200px; height:25px; text-indent:5px;}
td{ font-family:����; font-size:20px; font-weight:500}

</style>

 </head>

 <body>
  <div id="top" class="">
	<div id="logo" class="">
		<img src="images/logo.png" width="200" height="50" alt="" />
	</div>
     <span class="login">用户登录</span>
  </div>


<div id="content" style="background-image:url(../pic/formback.png); background-repeat:no-repeat;  width:1100px; height:400px; margin:0 auto; text-align:center; ">
    	<center>
    	<% Object message=request.getAttribute("message"); 
    	if(message==null)
    	message="";
    	%>
    	<%=message %>
    	<%Object user=session.getAttribute("user");
    	if( user==null){
    	user="";
    	}
    	
    	%>
    	
        <form style="padding-top:100px; " method="post" action="logoin">
       	  <table>
            	<tr><td>用户名</td>			<td><input type="text"  placeholder="用户名/手机/邮箱" class="textd" name="user" value="<%=user%>"/></td></tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>密码</td>	<td><input type="password" placeholder="请输入密码" class="textd" name="password" /></td></tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>验证码</td>			<td><input type="text" placeholder="输入右面验证码" style="width:110px;"class="textd" name="yanzheng"/> 
                   <img  src="AuthImageServlet" width="114" height="38" title="验证码"/></td></tr> 
                <tr><td>&nbsp;</td></tr>    	
            	<tr><td colspan="2"><input type="submit" style=" font-size:18px; font-weight:500; background-image:url(images/submit.png); width:290px; height:30px; border:hidden" value="登录" /></tr>
            
            </table>
        </form>
   		</center>
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
