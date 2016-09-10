<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="been.ProductDao"%>
<%@page import="been.Product"%>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title> new document </title>
  <meta name="generator" content="editplus" />
  <meta name="author" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <style type="text/css">
	*{margin:0; padding:0;}
	a{text-decoration:none;}

    #main{width:1000px; margin:0 auto; }
	#top{width:900px; height:127px; margin:0 auto;background:#66ffff;}
    #center{width:900px; margin: auto; }
    #footer{width:900px; height:140px; margin:auto; background:#bfbfbf; clear:left;}
	#c_left{width:200px;float:left;}
	#c_right{width:700px;float:left;background:#bcfb57}


	/* 头部 */
	   /*总体布局 */
	#t_top{width:900px; height:73px; }
	#t_footer{width:900px;height:54px;clear:left;background:url(images/menu.png); background-position:center }
    #t_t_left{width:200px;height:73px;float:left;}
	#t_t_rt{width:700px; height:33px;float:right;}
	#t_t_rf{width:700px;height:40px; float:right;}
	   /*内容布局 */
	#t_t_left img{position:relative;top:20px; left:30px;}
	.welcome {background:#d1d1d1; color:#525252}
	#t_t_rt p{ line-height:33px; width:700px; text-align:center; font-size:16px; color:#3d3d3d}
	#t_t_rf form{ line-height:40px; float:left; position:relative; left:10px;}
	#go {background:url(images/go.png); width:24px; height:19px;background-position:center; border:none;}
	#t_t_rf img{float:right;}
	#t_footer ul{ list-style:none; width:auto; position:absolute; margin:0px 5px;}
    #t_footer ul li{ float:left;}
    #t_footer ul li a{ color:#dde4ec; line-height:60px;padding:4px 15px; text-decoration:none; font-size:16px}

     

	#c_l_top{width:200px; height:420px; background:url(images/n_leftbg1.png); background-repeat:no-repeat; background-position:0px 2px}
	#c_l_footer{width:200px; height:110px; }

      .menu_top{width:185px;height:140px;position:relative;top:6px;left:5px;border:solid 1px;}
	   .menu_top table{position:relative;top:4px;left:10px; text-align:center;}
	   .menu_top table tr td{font-size:14px;padding:0 4px; line-height:18px;}
	   .td_orange{background:#ff6820;}
	   .td_red{background:#cc0033;}
	   .menu_mid{width:185px;height:160px;position:relative;top:18px;left:5px;border:solid 1px;}
	   .menu_mid table{position:relative;top:4px;left:10px;}
	   .menu_mid table tr td{font-size:14px;padding:0 4px;line-height:18px;}
	   .menu_bottom{width:185px;height:80px;position:relative;top:32px;left:5px;border:solid 1px;}
	   .menu_bottom table{position:relative;top:4px;left:10px;}
	   .menu_bottom table tr td{font-size:14px;padding:0 4px; line-height:18px;}


	   .focusBox{width:200px;height:110px;position:relative;margin:0 auto;position:relative}
     .focusBox .bigPic{width:200px;height:110px;overflow:hidden;position:relative}
     .focusBox .bigPic li{width:200px;height:110px}
     .focusBox .bigPic img{width:200px;height:110px}
     .focusBox .btn{height:8px;position:absolute;left:8px;top:4px;z-index:11}
     .focusBox .btn ul li{width:15px;height:15px;line-height:15px;
      margin-right:4px;display:block;background:#fff;float:left;text-align:center;cursor:pointer}
     .indexFocus .focusBox .btn .sel{
	    width: 15px;
	    height: 15px;
	    background: #B90101;
	    color: #fff
       }

	/*footer布局*/
    #logof{width:260px; height:140px; float:left;}
    #logoft{position:relative;top:50px; left:80px;}
    #message{width:640px;height:90px;float:left;  text-align:center;  padding-top:50px; line-height:25px}

	hr{margin:3px 0px;}
	#center p {
	font-size: 18px;
	color:#ff0033;
	text-decoration: underline;
    }
	#center table{margin:0px 20px;} 
	#submit { 
	width:165px;
    height:34px; 
	border:0px;
	background:url("images/submit_order.JPG");
	margin-left:500px;
    }
   
    #cal h3 {
	margin-left:500px;
    }

  </style>
  <script type="text/javascript">
var cityList = new Array();
     cityList['北京市'] = ['朝阳区','东城区','西城区', '海淀区','宣武区','丰台区','怀柔','延庆','房山'];
	 cityList['上海市'] = ['宝山区','长宁区','丰贤区', '虹口区','黄浦区','青浦区','南汇区','徐汇区','卢湾区'];
	 cityList['广州省'] = ['广州市','惠州市','汕头市','珠海市','佛山市','中山市','东莞市'];
     cityList['深圳市'] = ['福田区', '罗湖区', '盐田区', '宝安区', '龙岗区', '南山区', '深圳周边'];
	 cityList['重庆市'] = ['俞中区', '南岸区', '江北区', '沙坪坝区', '九龙坡区', '渝北区', '大渡口区', '北碚区'];
     cityList['天津市'] = ['和平区', '河西区', '南开区', '河北区', '河东区', '红桥区', '塘古区', '开发区'];
	 cityList['江苏省'] = ['南京市','苏州市','无锡市'];
	 cityList['浙江省'] = ['杭州市','宁波市','温州市'];
	 cityList['四川省'] = ['巴中市','成都市'];
	 cityList['海南省'] = ['海口市'];
	 cityList['福建省'] = ['福州市','厦门市','泉州市','漳州市'];
	 cityList['山东省'] = ['济南市','青岛市','烟台市'];
	 cityList['江西省'] = ['江西省','南昌市'];
	 cityList['广西省'] = ['柳州市','南宁市'];
	 cityList['安徽省'] = ['安徽省','合肥市'];
	 cityList['河北省'] = ['邯郸市','石家庄市'];
	 cityList['河南省'] = ['郑州市','洛阳市'];
	 cityList['湖北省'] = ['武汉市','宜昌市'];
	 cityList['湖南省'] = ['湖南省','长沙市'];
	 cityList['陕西省'] = ['陕西省','西安市'];
	 cityList['山西省'] = ['山西省','太原市'];
	 cityList['黑龙江省'] = ['黑龙江省','哈尔滨市'];
	 cityList['其他'] = ['其他'];
	 
  function change(){
     var province=document.getElementById("province").value; 
	 var city=document.getElementById("city");
	 city.options.length=0; //清除当前city中的选项
	 for(var i in cityList){
	        if (i == province){
                for (var j in cityList[i]){
					city.add(new Option(cityList[i][j],cityList[i][j]),null);
                }
            }
       }
  } 
  function allCity(){
	  var province=document.getElementById("province");
      for (var i in cityList){
		 province.add(new Option(i, i),null); 
		}	
  }
    window.onload=allCity;
</script>
 </head>

 <body>
  <div id="main" class="">
  <div id="top" class="">
	   	<div id="t_t_left" class="">
		<img src="images/logo.png" width="125" height="36" alt="" />
	</div>
	<div id="t_t_rt" class="">
		<p><img src="images/daohang1.png"  /><a href="index.jsp">主页</a>|
			<img src="images/daohang2.png" alt="" />	
			<%Object user=session.getAttribute("user");
			if(user==null){
		     %>
			<%="<a href='login.jsp'>用户登录</a>"%>
			 <% }
			 if(user!=null){%>
			 <%="<a href='invoke.jsp'>用户注销</a>" %>
			 <%} %>			
			|
            <img src="images/daohang2.png"  alt="" /><a href="register.jsp">用户注册</a>|
			<img src="images/daohang2.png"  alt="" /><a href="#">热购商品</a>|
			<span class="welcome">[<%=session.getAttribute("user") %>]您好！欢迎来到ASA购物商场</span></p>
	</div>
	<div id="t_t_rf" class="">
		<form method="post" action="">
					查&nbsp;询:<select id="" >
					<option value="电子商物" selected="selected">电子商务</option>
					<option value="生活用品">生活用品</option>
				 </select>
				<input type="text" id="" />
				<input type="submit" id="go" value="" />
			</form>
			<img src="images/zhici.png"  alt="" />
				
			
  
	</div>
	
  <div id="t_footer" >
	<ul>
				<li><a href="#">新品上市</a></li>
				<li><a href="#">正在热销</a></li>
				<li><a href="#">手机专卖</a></li>
				<li><a href="#">生活用品</a></li>
				<li><a href="#">学习生涯</a></li>
				<li><a href="#">休闲娱乐</a></li>
   </ul>
  </div>

  </div>
  <div id="center" >
	  <div id="c_left" >
	      <div id="c_l_top">
			   <div class="menu_top">
		     <table>
			    <tr>
				   <td>华为荣耀</td>
				   <td class="td_orange">畅销热卖</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_red">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
			 </table>
		  </div>
		  <div class="menu_mid">
		     <table>
			    <tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>小米Nota3</td>
				   <td class="td_orange">热卖中...</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_red">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
			 </table>
		  </div>
		  <div class="menu_bottom">
		     <table>
			    <tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_red">wordword</td>
				</tr>
				<tr>
				   <td>wordword</td>
				   <td class="td_orange">wordword</td>
				</tr>
			 </table>
		  </div>
	      </div>

	   	<div id="n_l_footer" class="">
		<div id="movePic1" class="focusBox">
		   <div class="bigPic" id="oPic">
   <ul>
            <li><img src="images/n_l_footer1.png" /></li>
			<li><img src="images/n_l_footer1.png"  /></li>
			<li><img src="images/n_l_footer1.png" /></li>
   </ul>     
       </div>     
         <div class="btn" id="oBtn">
          <ul>
          <li>1</li>
         <li>2</li>
        <li>3</li>     
       </ul>
   </div>
	</div>

	</div>

	<!-- 同类商品 宽度200px -->
		
	</div>
		
	 


	  <div id="c_right" >
	  <hr />
		<p>收货地址</p>
<form action="buyover.jsp" mothed="post">
  <table width="363"  >
  
  <tr>
    <td width="88" height="35">*选择地区：
	</td>
    <td width="259">
	   <select name="province"  id="province" onchange="change( )" style="width:100px">
          <option>--选择省份--</option>
       </select>
       <select name="city"  id="city"  style="width:100px">
         <option>--选择市/区--</option>
       </select>
	</td>
  </tr>
  <tr>
    <td height="32">*详细地址：</td>
    <td><input type="text" size="30px" class="text_bg" name="address"></td>
  </tr>
  <tr>
    <td height="34">*收货人：</td>
    <td><input type="text" size="30px" class="text_bg" name="buyername"></td>
  </tr>
  <tr>
    <td height="34">*手机号码：</td>
    <td><input type="text" size="30px" placeholder="手机号码" class="text_bg" name="phone"></td>
  </tr>
</table>



<hr />
 <p>购物车详情</p>
 <br />
<table >
<%  int proid= Integer.parseInt(request.getParameter("proid")) ; 
    Product product=ProductDao.chaone(proid);
%>
  <tr>
    <th width="40">选择</th>
    <th width="200" height="26">商品缩略图</th>
    <th width="118">商品名称</th>
    <th width="103">商品种类</th>
    <th width="75">单价</th>
    <th width="65">数量</th>
    <th width="94">小计</th>
  </tr>
  <tr>
    <td align="center"><input type="radio" value="<%= proid %>" name="proid" /></td>
    <td align="center"><img src="<%=product.getPro_image_() %>" width="100" height="60" /></td>
    <td align="center"><%=product.getPro_name() %></td>
    <td align="center"><%=product.getPro_kind() %></td>
    <td align="center"><%=product.getPro_price() %></td>
    <td align="center">1</td>
    <td align="center"><%=product.getPro_price() %></td>
  </tr>
  <tr>
    <td align="center"></td>
                       
    <td height="79" align="center"><img src="images/htc.jpg" width="100" height="60" /></td>
    <td align="center">HTC手机</td>
    <td align="center">电子数码</td>
    <td align="center">2999</td>
    <td align="center">1</td>
    <td align="center">2999</td>
  </tr>
</table>

<hr />

<div id="cal">
<p>订单结算</p>
<br />
<h3>总计:&yen;<%=product.getPro_price() %></h3>

<input type="submit" id="submit" value="" /></div>
	  </div>
</from>


  </div>
  <div id="footer" >
	   <div id="logof" >
	<img  id="logoft" src="images/logo.png" alt="" />
  </div>

	<div id="message" class="">
		<p><a href="#">商城简介</a><i>|</i><a href="#">商城公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 SAS版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号
	京ICP证B1034-8373号</p><p>某市公安局XX分局备案编号：123456789123</p>
	</div>
  </div>
	
  </div>
 </body>
</html>
