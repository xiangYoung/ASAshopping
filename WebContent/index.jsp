<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="servlet.logoin"%>
<%@page import="org.omg.PortableInterceptor.USER_EXCEPTION"%>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title> new document </title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
  <meta name="generator" content="editplus" />
  <meta name="author" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
<style type="text/css">
	*{margin:0; padding:0;}
	a{text-decoration:none;}
	/* 整体框架 */
	#main{width:1000px; margin:0 auto;}
	#top{width:900px; height:127px; margin:0 auto;}
	#nav{width:900px; height:530px; margin:2px auto; }
	#pro{width:900px; height:260px; margin:2px auto; }
	#ban{width:900px; height:642px; margin:auto; }
	#footer{width:900px; height:140px; margin:auto; background:#b7b7b7;}
	
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
    /*商品总介 */
        /*总体布局 */
	#n_left{width:200px; height:530px; float:left; }
	#n_center{width:500px;height:530px; background:url(images/c-cenbg.png); float:left;}
	#n_right{width:200px; height:530px; float:right; }
	#n_l_top{width:200px; height:420px; background:url(images/n_leftbg.png); background-repeat:no-repeat; background-position:0px 2px}
	#n_l_footer{width:200px; height:110px; }
	#n_c_top{width:500px; height:280px;}
	#n_c_center{width:500px; height:75px;}
	#n_c_footer{width:500px; height:175px;
	background:url(images/cc_ffbg.png);background-repeat:no-repeat; background-position:center;}
	#n_r_top{ width:200px; height:160px; background:url(images/cl_bg.png);  background-repeat:no-repeat; background-position:center;}
    #n_r_footer{ width:200px; height:370px; background:url(images/Best_bg.png);background-repeat:no-repeat; background-position:center;}

    .menu_top{width:180px;height:140px;position:relative;top:6px;left:10px;border:solid 1px;}
	   .menu_top table{position:relative;top:4px;left:10px; text-align:center;}
	   .menu_top table tr td{font-size:14px;padding:0 4px; line-height:18px;}
	   .td_orange{background:#ff6820;}
	   .td_red{background:#cc0033;}
	   .menu_mid{width:180px;height:160px;position:relative;top:18px;left:10px;border:solid 1px;}
	   .menu_mid table{position:relative;top:4px;left:10px;}
	   .menu_mid table tr td{font-size:14px;padding:0 4px;line-height:18px;}
	   .menu_bottom{width:180px;height:80px;position:relative;top:32px;left:10px;border:solid 1px;}
	   .menu_bottom table{position:relative;top:4px;left:10px;border:solid 1px;}
	   .menu_bottom table tr td{font-size:14px;padding:0 4px; line-height:18px;}

      .clearfix:after{content: ".";display: block;height: 0;clear: both;visibility: hidden;}
      .clearfix{zoom:1;}

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

img{border:0;}
	   #focus{
	width: 490px;
	height: 270px;
	overflow: hidden;
	position: relative;
	top:5px;
	left:5px;
}
#focus ul{
	height: 380px;
	position: absolute;
}
#focus ul li{
    list-style:none;
	float: left;
	width: 490px;
	height: 280px;
	overflow: hidden;
	position: relative;
	background: #000;
}
#focus ul li div{
	position: absolute;
	overflow: hidden;
}
#focus .btnBg{
	position: absolute;
	width: 490px;
	height: 20px;
	left: 0;
	bottom: 0;
	background: #000;
}
#focus .btn{
	position: absolute;
	width: 490px;
	height: 10px;
	padding: 5px 10px;
	right: 0;
	bottom: 0;
	text-align: right;
}
#focus .btn span{
	display: inline-block;
	_display: inline;
	_zoom: 1;
	width: 25px;
	height: 10px;
	_font-size: 0;
	margin-left: 5px;
	cursor: pointer;
	background: #fff;
}
#focus .preNext{
	width: 45px;
	height: 100px;
	position: absolute;
	top: 90px;
	background: url(images/sprite.bmp) no-repeat 0 0;
	cursor: pointer;
}
#focus .pre{
	left: 0;
}
#focus .next{
	right: 0;
	background-position: right top;
}      
       

	 #span{width:487px;height:76px;margin:0px 8px;}
	    
	   #n_c_footer table{border:solid 1px;}
	   #n_c_footer table tr td{font-size:10px;padding:4px 39px;border:solid 1px;}
	   .td_green{background:#00cc00;}
	   .td_blue{background:#00ccff;}
	   .glasses,.tent,.pc,.phone{width:120px;height:102px;}
	   .glasses{background:url("images/glasses.png") no-repeat;}
	   .tent{background:url("images/tent.png") no-repeat 10px 0px;}
	   .pc{background:url("images/pc.png") no-repeat 4px 14px;}
	   .phone{background:url("images/phone.png") no-repeat -70px -5px;}
        
		#n_r_top p{font-size:12px;width:50px;text-align:center;
		margin-left:10px;border:solid 1px;}
	   .more_butt{width:30px;height:10px;float:right;position:relative;bottom:14px;right:10px;border:solid 1px;}
	   .more_list{width:160px;height:88px;position:relative;top:20px;left:18px;border:solid 1px;}
	   .more_list li{border:solid 1px;font-size:12px;line-height:20px;}
        
	   .best_top{width:180px;height:110px;position:relative;top:44px;left:6px;border:solid 1px;}
	   .best_bottom{width:180px;height:202px;position:relative;top:48px;left:6px;border:solid 1px;}
	   //.best_bottom table{border:solid 1px;}
	   .best_bottom table tr td{padding:1px 5px;}

    

        .brand_shop{width:200px;height:260px;background:url(images/band_bg.png); float:left;}
	   .brand_header{width:124px;height:14px;position:relative;top:10px;left:6px;border:solid 1px;}
	   .brand_icon{width:8px;height:12px;background:url("images/class_icon.png") -2px -6px;border:solid 1px;}
	   .brand_header p{font-size:12px;float:right;position:relative;bottom:14px;right:42px;}
	   .brand_content{width:194px;height:214px;position:relative;top:14px;border:#ff0066 solid 1px;}
	   /*.brand_content tr {width:190px;height:52px;background:url("images/brand_bg.png");}*/
       .brand_content table{ width:194px; height:214px; }
	   .brand_img1{background:url("images/brand1.png") 2px 5px; width:90px; background-repeat:no-repeat;}
	   .brand_img2{background:url("images/brand2.png") 2px 5px; width:100px;background-repeat:no-repeat;}
	   .brand_img3{background:url("images/brand3.png") 2px;
	   background-repeat:no-repeat;}
	   .brand_img4{background:url("images/brand4.png") 10px 5px;
	   background-repeat:no-repeat;}
	   .text{width:80px;font-size:12px;}
          
	   
	   
	   


	   .hit_zone{width:700px;height:258px;background:url(images/hit_bg.png); float:left;}
        .hitzone_header{width:124px;height:14px;position:relative;top:10px;left:6px;border:solid 1px;}
	   .hitzone_icon{width:8px;height:12px;background:url("images/class_icon.png") -2px -6px;border:solid 1px;}
	   .hitzone_header p{font-size:12px;float:right;position:relative;bottom:14px;right:42px;}
	   .hitzone_content{width:696px;height:218px;position:relative;top:14px;background:#efefef;border:#ff0066 solid 1px;}
       .hitzone_content table{position:relative;top:15px;left:20px; text-align:center;}
	   .hitzone_content table tr td{padding:2px 10px;}
	   .describe{width:140px;height:75px;}
	   .camera,.shoe,.broad,.bag{width:140px;height:100px;}
	   .camera{background:url("images/hit_camera.png") no-repeat 14px 4px;}
	   .shoe{background:url("images/hit_shoe.png") no-repeat 24px 0px;}
	   .broad{background:url("images/hit_broad.png") no-repeat 10px -22px;}
	   .bag{background:url("images/hit_bag.png") no-repeat 13px 4px;}
    

     /*ban布局*/
	 #b_t_left{width:450px; height:321px; float:left; background-image:url(images/b_t_leftbg.png); background-repeat:no-repeat;background-position:center;}
     #b_t_right{width:450px; height:321px; float:left;background-image:url(images/b_t_rightbg.png); background-repeat:no-repeat;background-position:center;}
	 #b_f_left{width:450px; height:321px; float:left;background-image:url(images/b_f_leftbg.png); background-repeat:no-repeat;background-position:center;}
	 #b_f_right{width:450px; height:321px; float:left;background-image:url(images/b_f_rightbg.png); background-repeat:no-repeat;background-position:center;}

	 #b_t_l_left{width:150px; height:321px; background:url(images/b_t_left1.png); float:left;
	 background-repeat:no-repeat;background-position:-40px 52px;}
	 

	 #b_t_r_left{width:150px; height:321px; background:url(images/b_t_right1.png); float:left;
	 background-repeat:no-repeat;background-position:4px 55px;}
	 

	 #b_f_l_left{width:150px; height:321px; background:url(images/b_f_left1.png); float:left;
	 background-repeat:no-repeat;background-position:4px 45px;}
	

	 #b_f_r_left{width:150px; height:321px; background:url(images/b_f_right1.png); float:left;
	 background-repeat:no-repeat;background-position:bottom;}
	 
     .b_t_l_right{width:285px; height:296px; background:url(images/b_t_l_abg.png);margin:13px 0px;float:left}

	 .b_t_l_r_top{width:265px; height:105px;margin:10px 10px;background:url(images/b_t_l_aabg.png);}
	 .goods{width:270px;height:165px;  text-align:center; margin:0px 7px;}
	 .g_name{width:100px;}
	 .g_desc{width:170px;}
	 .inline td{border-bottom:dotted 1px #969696;}
	 

     
	/*footer布局*/
    #logof{width:260px; height:140px; float:left;}
    #logoft{position:relative;top:50px; left:80px;}
    #message{width:640px;height:90px;float:left;  text-align:center;  padding-top:50px; line-height:25px}


	



</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function() {
  var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
  var len = $("#focus ul li").length; //获取焦点图个数
  var index = 0;
  var picTimer;
  
  //以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
  var btn = "<div class='btnBg'></div><div class='btn'>";
  for(var i=0; i < len; i++) {
	  btn += "<span></span>";
  }
  btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
  $("#focus").append(btn);
  $("#focus .btnBg").css("opacity",0.5);

  //为小按钮添加鼠标滑入事件，以显示相应的内容
  $("#focus .btn span").css("opacity",0.4).mouseover(function() {
	  index = $("#focus .btn span").index(this);
	  showPics(index);
  }).eq(0).trigger("mouseover");

  //上一页、下一页按钮透明度处理
  $("#focus .preNext").css("opacity",0.2).hover(function() {
	  $(this).stop(true,false).animate({"opacity":"0.5"},300);
  },function() {
	  $(this).stop(true,false).animate({"opacity":"0.2"},300);
  });

  //上一页按钮
  $("#focus .pre").click(function() {
	  index -= 1;
	  if(index == -1) {index = len - 1;}
	  showPics(index);
  });

  //下一页按钮
  $("#focus .next").click(function() {
	  index += 1;
	  if(index == len) {index = 0;}
	  showPics(index);
  });

  //图片为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
  $("#focus ul").css("width",sWidth * (len));
  
  //鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
  $("#focus").hover(function() {
	  clearInterval(picTimer);
  },function() {
	  picTimer = setInterval(function() {
		  showPics(index);
		  index++;
		  if(index == len) {index = 0;}
	},2000); //此4000代表自动播放的间隔，单位：毫秒
  }).trigger("mouseleave");
  
  //显示图片函数，根据接收的index值显示相应的内容
  function showPics(index) { //普通切换
	var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
	//使用animate()方法调整ul元素滚动到计算出的position
	$("#focus ul").stop(true,false).animate({"left":nowLeft},300); 
	//为当前的按钮切换到选中的效果
	$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300)
	.eq(index).stop(true,false).animate({"opacity":"1"},300); 
  }
});




</script>
 </head>

 <body>
  <div id="main" >
  <div id="top" >
  <div id="t_top">
	<div id="t_t_left" class="">
		<img src="images/logo.png" width="125" height="36" alt="" />
	</div>
	<% session.setAttribute("user", request.getParameter("user")); %>
	<div id="t_t_rt" class="">
		<p><img src="images/daohang1.png"  /><a href="buy.jsp">购物车</a>|
			<img src="images/daohang2.png" alt="" />
			<%Object user=session.getAttribute("user");
			if(user==null){
			user="";
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
		<form method="post" action="listPro.jsp">
					查&nbsp;询:<select id=""  name="kind">
					<option value="电子数码" selected="selected">电子数码</option>
					<option value="儿童玩具">儿童玩具</option>
				 </select>
				<input type="text" id=""  name="name"/>
				<input type="submit" id="go" value="" />
			</form>
			<img src="images/zhici.png"  alt="" />
				
			
	</div>
  </div>
  <div id="t_footer" >
	<ul>
				<li><a href="product.jsp?id=1">新品上市</a></li>
				<li><a href="product.jsp?id=2">正在热销</a></li>
				<li><a href="product.jsp?id=3">手机专卖</a></li>
				<li><a href="product.jsp?id=4">生活用品</a></li>
				<li><a href="product.jsp?id=5">学习生涯</a></li>
				<li><a href="product.jsp?id=6">休闲娱乐</a></li>
   </ul>
  </div>	
  </div>



  <div id="nav" >
	<div id="n_left" >
	<div id="n_l_top" >
		 <div class="menu_top">
		     <table>
			    <tr>
				   <td>华为荣耀6</td>
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
		
	</div>


	<div id="n_center" class="">
	  <div id="n_c_top" class="">
		<div id="focus">
    <ul>
      <li><a href="" target="_blank"><img src="images/01.jpg" alt="QQ商城焦点图效果下载" /></a></li>
      <li><a href="" target="_blank"><img src="images/02.jpg" alt="QQ商城焦点图效果教程" /></a></li>
      <li><a href="" target="_blank"><img src="images/03.jpg" alt="jquery商城焦点图效果" /></a></li>
      <li><a href="" target="_blank"><img src="images/04.jpg" alt="jquery商城焦点图代码" /></a></li>
      <li><a href="" target="_blank"><img src="images/05.jpg" alt="jquery商城焦点图源码" /></a></li>
    </ul>
  </div>
	  </div>
	  <div id="n_c_center" class="">
		<div id="span" class="">
			<img src="images/ccc.png"  alt="" />
		</div>
	  </div>
	  <div id="n_c_footer">
			  <table>
			    <tr>
				   <td class="td_green">word</td>
				   <td class="td_red">word</td>
				   <td class="td_orange">word</td>
				   <td class="td_blue">word</td>
				</tr>
				<tr>
				   <td>describe</td>
				   <td>describe</td>
				   <td>describe</td>
				   <td>describe</td>
				</tr>
				<tr>
				   <td class="glasses"></td>
				   <td class="tent"></td>
				   <td class="pc"></td>
				   <td class="phone"></td>
				</tr>
			 </table>
			
	  </div>
		
	</div>
	<div id="n_right" class="">
	<div id="n_r_top" class="">
		<p>word</p>
		  <div class="more_butt"><img src="images/more.png" /></div>
		  <ul class="more_list">
		     <li>wordwordword...</li>
			 <li>wordwordword...</li>
			 <li>wordwordword...</li>
			 <li>wordwordword...</li>
		  </ul>
	</div>
	<div id="n_r_footer" class="">
		<div class="best_top"><img src="images/Best01.png" /></div>
		  <div class="best_bottom">
		     <table>
			    <tr><td><img src="images/Best02.png" /></td><td>手表</td></tr>
				<tr><td><img src="images/Best03.png" /></td><td>手机</td></tr>
				<tr><td><img src="images/Best04.png" /></td><td>盆栽</td></tr>
			 </table>
		  </div>
	</div>
		
	</div>

  </div>


  <div id="pro" class="">
	 <div class="brand_shop">
	      <div class="brand_header">
		     <div class="brand_icon"></div>
			 <p>Brand Shop</p>
		  </div>
		  <div class="brand_content">
		      
			  <table>
			    <tr>
				   <td class="brand_img1"></td>
				   <td class="text">古玩天地</td>
				</tr>
				<tr>
				   <td class="brand_img2"></td>
				   <td class="text">皮包专区</td>
				</tr>
				<tr>
				   <td class="brand_img3"></td>
				   <td class="text">电子产品</td>
				</tr>
				<tr>
				   <td class="brand_img4"></td>
				   <td class="text">植物花卉</td>
				</tr>
			 </table>
		  </div>
	   </div>
	   <div class="hit_zone">
          <div class="hitzone_header">
		     <div class="hitzone_icon"></div>
			 <p>HIT ZONE</p>
		  </div>
		  <div class="hitzone_content">
		     <table>
			    <tr>
				   <td class="camera"></td>
				   <td class="shoe"></td>
				   <td class="broad"></td>
				   <td class="bag"></td>
				</tr>
				<tr>
				   <td class="describe">索尼Ns56相机3000万像素+32GB内存卡+专用支架<br /></td>
				   <td class="describe">索尼Ns56相机3000万像素+32GB内存卡+专用支架</td>
				   <td class="describe">索尼Ns56相机3000万像素+32GB内存卡+专用支架</td>
				   <td class="describe">索尼Ns56相机3000万像素+32GB内存卡+专用支架</td>
			    </tr>
			 </table>
		  </div>
	   </div>

</div>
  </div>

  <div id="ban" >
	<div id="b_t_left" >
	 <div id="b_t_l_left" >
		
	 </div>
	 <div class="b_t_l_right" >
		<div class="b_t_l_r_top">
			<div id="" class="" style="position:relative;height:100px; width:265px;" >
				<img src="images/b_tbig.png" width="160" height="106" alt="" />
				<div  class="b_t_images"  style="text-align:center;position:absolute; left:120px;top:0px; width:150px; font-size:16px;"  >
				努比亚（nubia）<br>超清超大音量</br>998￥<br>货到付款，全国统一配货
			</div>
			</div>
			
		 </div>
		 <table class="goods" >
			<tr class="inline">
				<td class="g_name"><img src="images/b_t11.png" /></td>
				<td class="g_desc">台式电脑</td>
			</tr>
			<tr class="inline">
				<td class="g_name"><img src="images/b_t12.png" /></td>
				<td class="g_desc">耳机、键盘、鼠标</td>
			</tr>
			<tr>
				<td class="g_name"><img src="images/b_t13.png" /></td>
				<td class="g_desc">平板笔记本</td>
			</tr>
		 </table>
			
		 
	 </div>
		
	</div>
	<div id="b_t_right" class="">
		<div id="b_t_r_left" >
		
	 </div>
	 <div class="b_t_l_right" >
		 <div class="b_t_l_r_top">
				<div id="" class="" style="position:relative;height:100px; width:265px;" >
				<img src="images/b_lbig1.png" alt="" />
                <div  class="b_t_images"  style="text-align:center;position:absolute; left:120px;top:0px; width:150px; font-size:16px;"   >
				努比亚（nubia）<br>超清超大音量</br>998￥<br>货到付款，全国统一配货
			</div>
			</div>
            

			</div>
			 <table class="goods" >
			<tr class="inline">
				<td class="g_name"><img src="images/b_t21.png" /></td>
				<td class="g_desc">时尚提包</td>
			</tr>
			<tr class="inline">
				<td class="g_name"><img src="images/b_t22.png" /></td>
				<td class="g_desc">女性鞋服专卖</td>
			</tr>
			<tr>
				<td class="g_name"><img src="images/b_t23.png" /></td>
				<td class="g_desc">首饰、项链、古玩</td>
			</tr>
		 </table>
		 
	 </div>
	</div>
	<div id="b_f_left" class="">
	<div id="b_f_l_left" >
		
	 </div>
	 <div class="b_t_l_right" >
			<div class="b_t_l_r_top">
				<div id="" class="" style="position:relative;height:100px; width:265px;" >
				<img src="images/b_l_big.png" width="108" height="110" alt="" />
				<div  class="b_t_images"  style="text-align:center;position:absolute; left:120px;top:0px; width:150px; font-size:16px;" >
				努比亚（nubia）<br>超清超大音量</br>998￥<br>货到付款，全国统一配货
			</div>
			</div>
			</div>
			 <table class="goods" >
			<tr class="inline">
				<td class="g_name"><img src="images/b_l1.png" /></td>
				<td class="g_desc">情人节玫瑰花</td>
			</tr>
			<tr class="inline">
				<td class="g_name"><img src="images/b_l2.png" /></td>
				<td class="g_desc">向日葵盆景、籽种</td>
			</tr>
			<tr>
				<td class="g_name"><img src="images/b_l3.png" /></td>
				<td class="g_desc">盆栽玫瑰，送肥料</td>
			</tr>
		 </table>
		 	
	 </div>
		
	</div>
	<div id="b_f_right" class="">
	<div id="b_f_r_left" >
		
	 </div>
	 <div class="b_t_l_right" >
		<div  class="b_t_l_r_top">
			<div id="" class="" style="position:relative;height:100px; width:265px;" >
				<img src="images/l_fbig.png" alt="" />
				<div  class="b_t_images"  style="text-align:center;position:absolute; left:120px;top:0px; width:150px; font-size:16px;"  >
				努比亚（nubia）<br>超清超大音量</br>998￥<br>货到付款，全国统一配货
			</div>
			</div>
		 </div>
		 <table class="goods" >
			<tr  class="inline">
				<td class="g_name"><img src="images/b_r1.png" /></td>
				<td class="g_desc">儿童服装，热销专卖</td>
			</tr>
			<tr  class="inline">
				<td class="g_name"><img src="images/b_f2.png" /></td>
				<td class="g_desc">回忆童年（小熊玩具）</td>
			</tr>
			<tr>
				<td class="g_name"><img src="images/b_f3.png" /></td>
				<td class="g_desc">儿童休闲鞋&nbsp;&nbsp;￥88</td>
			</tr>
		 </table>
	 </div>
		
	</div>
  </div>

  <div id="footer" class="">
	 <div id="logof" class="">
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
