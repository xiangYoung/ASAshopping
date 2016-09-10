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
    
    <title>My JSP 'product.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
  <style type="text/css">
	*{margin:0; padding:0;}
	a{text-decoration:none;}

    #main{width:900px; margin:0 auto;background:#ccffff;}
	#top{width:900px; height:127px; margin:0 auto;}
    #center{width:900px; margin: auto;position:relative;}
    #footer{width:900px; height:140px; margin:auto; background:#bfbfbf;
	clear:left;}
	#c_left{width:200px;float:left;background:#ffccff;}
	#c_center{width:350px;float:left; }
	#c_right{width:350px;float:right;}
	#c_footer{width:700px;float:right;margin:60px 0px 0px 0px;}


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

     

	#c_l_top{width:200px; height:420px; background:url(images/n_leftbg.png); background-repeat:no-repeat; background-position:0px 2px}
	#c_l_footer{width:200px; height:110px; }

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
     
	 .clearfix:after{ visibility:hidden; display:block; font-size:0; content:" "; clear:both; height:0;}
*html .clearfix{ zoom:1;}

.preview{width:300px; height:300px; margin:40px 0px 0px 40px; }
/* smallImg */
.smallImg{position:relative; height:52px; margin-top:1px;  padding:6px 15px; width:340px; overflow:hidden;float:left;}
.scrollbutton{width:14px; height:50px; overflow:hidden; position:relative; float:left; cursor:pointer; }
.scrollbutton.smallImgUp , .scrollbutton.smallImgUp.disabled{background:url(images/d_08.png) no-repeat;}
.scrollbutton.smallImgDown , .scrollbutton.smallImgDown.disabled{background:url(images/d_09.png) no-repeat; margin-left:250px; margin-top:-50px;}

#imageMenu {height:50px; width:300px; overflow:hidden; margin-left:0; float:left;}
#imageMenu li {height:50px; width:60px; overflow:hidden; float:left; text-align:center;}
#imageMenu li img{width:50px; height:50px;cursor:pointer;}
#imageMenu li#onlickImg img, #imageMenu li:hover img{ width:44px; height:44px; border:3px solid #959595;}
/* bigImg */
.bigImg{position:relative; float:left; width:300px; height:300px; overflow:hidden;}
.bigImg #midimg{width:300px; height:300px;}
.bigImg #winSelector{width:150px; height:150px;}
#winSelector{position:absolute; cursor:crosshair; filter:alpha(opacity=15); -moz-opacity:0.15; opacity:0.15; background-color:#000; border:1px solid #fff;}
/* bigView */
#bigView{position:absolute;border: 1px solid #959595; overflow: hidden; z-index:999;}
#bigView img{position:absolute;width:700px; height:700px;}

#c_rhr{margin-top:45px;}
#c_right table{margin:auto}
#c_right table td{line-height:30px; text-align:center;}


	/*footer布局*/
    #logof{width:260px; height:140px; float:left;}
    #logoft{position:relative;top:50px; left:80px;}
    #message{width:640px;height:90px;float:left;  text-align:center;  padding-top:50px; line-height:25px}
  </style>

  <script type="text/javascript">
$(document).ready(function(){
	// 图片上下滚动
	var count = $("#imageMenu li").length - 5; /* 显示 6 个 li标签内容 */
	var interval = $("#imageMenu li:first").width();
	var curIndex = 0;
	
	$('.scrollbutton').click(function(){
		if( $(this).hasClass('disabled') ) return false;
		
		if ($(this).hasClass('smallImgUp')) --curIndex;
		else ++curIndex;
		
		$('.scrollbutton').removeClass('disabled');
		if (curIndex == 0) $('.smallImgUp').addClass('disabled');
		if (curIndex == count-1) $('.smallImgDown').addClass('disabled');
		
		$("#imageMenu ul").stop(false, true).animate({"marginLeft" : -curIndex*interval + "px"}, 600);
	});	
	// 解决 ie6 select框 问题
	$.fn.decorateIframe = function(options) {
        if ($.browser.msie && $.browser.version < 7) {
            var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
            $(this).each(function() {
                var $myThis = $(this);
                //创建一个IFRAME
                var divIframe = $("<iframe />");
                divIframe.attr("id", opts.iframeId);
                divIframe.css("position", "absolute");
                divIframe.css("display", "none");
                divIframe.css("display", "block");
                divIframe.css("z-index", opts.iframeZIndex);
                divIframe.css("border");
                divIframe.css("top", "0");
                divIframe.css("left", "0");
                if (opts.width == 0) {
                    divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                if (opts.height == 0) {
                    divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                divIframe.css("filter", "mask(color=#fff)");
                $myThis.append(divIframe);
            });
        }
    }
    $.fn.decorateIframe.defaults = {
        iframeId: "decorateIframe1",
        iframeZIndex: -1,
        width: 0,
        height: 0
    }
    //放大镜视窗
    $("#bigView").decorateIframe();
    //点击到中图
    var midChangeHandler = null;
	
    $("#imageMenu li img").bind("click", function(){
		if ($(this).attr("id") != "onlickImg") {
			midChange($(this).attr("src").replace("small", "mid"));
			$("#imageMenu li").removeAttr("id");
			$(this).parent().attr("id", "onlickImg");
		}
	}).bind("mouseover", function(){
		if ($(this).attr("id") != "onlickImg") {
			window.clearTimeout(midChangeHandler);
			midChange($(this).attr("src").replace("small", "mid"));
			$(this).css({ "border": "3px solid #959595" });
		}
	}).bind("mouseout", function(){
		if($(this).attr("id") != "onlickImg"){
			$(this).removeAttr("style");
			midChangeHandler = window.setTimeout(function(){
				midChange($("#onlickImg img").attr("src").replace("small", "mid"));
			}, 1000);
		}
	});
    function midChange(src) {
        $("#midimg").attr("src", src).load(function() {
            changeViewImg();
        });
    }
    //大视窗看图
    function mouseover(e) {
        if ($("#winSelector").css("display") == "none") {
            $("#winSelector,#bigView").show();
        }
        $("#winSelector").css(fixedPosition(e));
        e.stopPropagation();
    }
    function mouseOut(e) {
        if ($("#winSelector").css("display") != "none") {
            $("#winSelector,#bigView").hide();
        }
        e.stopPropagation();
    }
    $("#midimg").mouseover(mouseover); //中图事件
    $("#midimg,#winSelector").mousemove(mouseover).mouseout(mouseOut); //选择器事件

    var $divWidth = $("#winSelector").width(); //选择器宽度
    var $divHeight = $("#winSelector").height(); //选择器高度
    var $imgWidth = $("#midimg").width(); //中图宽度
    var $imgHeight = $("#midimg").height(); //中图高度
    var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度

    function changeViewImg() {
        $("#bigView img").attr("src", $("#midimg").attr("src").replace("mid", "big"));
    }
    changeViewImg();
    $("#bigView").scrollLeft(0).scrollTop(0);
    function fixedPosition(e) {
        if (e == null) {
            return;
        }
        var $imgLeft = $("#midimg").offset().left; //中图左边距
        var $imgTop = $("#midimg").offset().top; //中图上边距
        X = e.pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
        Y = e.pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
        X = X < 0 ? 0 : X;
        Y = Y < 0 ? 0 : Y;
        X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
        Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;

        if ($viewImgWidth == null) {
            $viewImgWidth = $("#bigView img").outerWidth();
            $viewImgHeight = $("#bigView img").height();
            if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                $viewImgWidth = $viewImgHeight = 800;
            }
            $height = $divHeight * $viewImgHeight / $imgHeight;
            $("#bigView").width($divWidth * $viewImgWidth / $imgWidth);
            $("#bigView").height($height);
        }
        var scrollX = X * $viewImgWidth / $imgWidth;
        var scrollY = Y * $viewImgHeight / $imgHeight;
        $("#bigView img").css({ "left": scrollX * -1, "top": scrollY * -1 });
        $("#bigView").css({ "top": 20, "left":550 });

        return { left: X, top: Y };
    }
});
</script>
 </head>

 <body>
  <div id="main" class="">
  <div id="top" class="">
	   	<div id="t_t_left" class="">
		<img src="images/logo.png" width="125" height="36" alt="" />
	</div>
	<div id="t_t_rt" class="">
		<p><img src  /><a href="#">购物车</a>|
			<img src="images/daohang2.png" alt="" /><a href="#">个人页面</a>|
            <img src="images/daohang2.png"  alt="" />		
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
      <% 
        int id=Integer.parseInt(request.getParameter("id"));
         Product product= ProductDao.chaone(id);
         
       %>
      
	</div>
	</div>
	<div id="c_center" class="">
		  <div class="preview">
	<div id="vertical" class="bigImg">
		<img src="<%=product.getPro_image_() %>"  width="300" height="300" alt="" id="midimg" />
		<div style="display:none;" id="winSelector"></div>
	</div><!--bigImg end-->	
	<div class="smallImg">
		<div class="scrollbutton smallImgUp disabled"></div>
		<div id="imageMenu">
			<ul>
				<li id="onlickImg"><img src="<%=product.getPro_image_() %>" width="68" height="68" /></li>
				<li><img src="<%=product.getPro_image_1() %>" width="68" height="68" /></li>
				<li><img src="<%=product.getPro_image_2() %>"  width="68" height="68" /></li>
				<li><img src="<%=product.getPro_image_3() %>"  width="68" height="68" /></li>
				
				
			</ul>
		</div>
		<div class="scrollbutton smallImgDown"></div>
	</div><!--smallImg end-->	
	<div id="bigView" style="display:none;"><img width="600" height="600" alt="" src="" /></div>
</div>


	</div>
    <div id="c_right" class="">
	<hr id="c_rhr"/>
	   <p><h3><%=product.getPro_name() %></h3></p>
	 <hr />
		<table border="1px">
			<tr>
				<td width="80px">产品ID </td>
				<td width="250px"><%=product.getPro_id() %></td>
			</tr>
			<tr>
				<td>价格</td>
				<td><%=product.getPro_price() %></td>
			</tr>
			<tr>
				<td>产品类型</td>
				<td><%=product.getPro_kind() %></td>
			</tr>
			<tr>
				<td>产品数量</td>
				<td><%=product.getPro_number() %></td>
			</tr>
            <tr>
				<td>产品简介</td>
				<td><%=product.getDesc() %></td>
			</tr>
			<tr>
				<td colspan="2" height="50px"><a href="gobuy?proid=<%=request.getParameter("id")%>">加入购物车</a></td>
			</tr>
		</table>

	</div>
	<hr />
    <div id="c_footer" style="line-height:30px" >
		<h3>详细介绍：</h3>
		&nbsp;&nbsp;为号召全院学生向科技创新靠拢，在第十届科技创新开始阶段，
		准备召开一次全院范围的动员会作为科技创新的启动仪式，
		一来希望这一届科创比赛能够继往开来走向更好，二来愿广大的电信学子能够积极参加进来，
		三来为本次科技创新大赛的顺利进行做好前期宣传讲解工作。启动仪式具体安排如下

    </div>

		
  <div id="footer" style="clear:both;">
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

