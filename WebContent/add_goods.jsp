

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title> add goods </title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
  <meta name="generator" content="editplus" />
  <meta name="author" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <style type="text/css">
     p{font-size:18px;color:#ff0033;}
	 table{background:##dedede;border:solid 1px;}
	 table tr td{border:solid 1px;}
	 .text_bg{background:#cecece;}
	 .col_one{width:100px;height:30px;font-size:14px;color:#676767;text-align:center;}
	 .col_two{width:680px;height:30px;}
	 .col_two select option{font-size:14px;color:#676767;}
	 .special_one{width:100px;height:250px;font-size:14px;color:#676767;text-align:center;}
	 .special_two{width:680px;height:250px;}
	 .text_area{width:670px;height:240px;}
	 .submit{background:#33ff33;color:#000033;}
	 .last{width:780px;height:30px;}
  </style>
 </head>
 <body>
    <p>商品添加</p>
	<form method="post" action="addgoods">
	   <table>
	      <tr>
		     <td class="col_one">商品名称</td>
			 <td class="col_two"><input class="text_bg" type="text" size="30" placeholder="请输入商品名称"  name="proname"/></td>
		  </tr>
		  <tr>
		     <td class="col_one">商品分类</td>
			 <td class="col_two">
			    <select name="prokind">				   
				   <option value="电子数码" >电子数码</option>
				   <option value="潮流衣服" >潮流衣物</option>
                   <option value="盆栽花卉" >盆栽花卉</option>
				   <option value="儿童玩具" >儿童玩具</option>
				</select>
			 </td>
		  </tr>
		  <tr>
		     <td class="col_one">商品货号</td>
			 <td class="col_two"><input class="text_bg" type="text" size="30" placeholder="请输入商品货号" /></td>
		  </tr>
		  <tr>
		     <td class="col_one">商品数量</td>
			 <td class="col_two"><input class="text_bg" type="text" placeholder="请输入商品数量" name="pronumber"/></td>
		  </tr>
		  <tr>
		     <td class="col_one">商品价格</td>
			 <td class="col_two"><input class="text_bg" type="text" placeholder="请输入商品价格" name="proprice" /></td>
		  </tr>
		  <tr>
		     <td class="special_one">商品描述</td>
			 <td class="special_two"><textarea class="text_area" name="desc"></textarea></td>
		  </tr>
		  <tr>
		     <td class="col_one">商品图像</td>
			 <td class="col_two"><input class="text_bg" type="text" size="100" placeholder="请输入图片路径用逗号隔开" name="image" /></td>
		  </tr>
		  <tr>
		     <td colspan="2" class="last"><input class="submit" type="submit" value="发布商品" /></td>
		  </tr>
	   </table>
	</form>
 </body>
</html>
