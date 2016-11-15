<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Auto-Tuning Website | Home :: </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="http://localhost:8080/cartuning/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<script type="text/javascript" src="http://localhost:8080/cartuning/js/modernizr.custom.53451.js"></script>
<script type="text/javascript" src="http://localhost:8080/cartuning/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/cartuning/js/jquery.gallery.js"></script>
<script type="text/javascript">
		$(function() {
		$('#dg-container').gallery({
		autoplay	:	true
	});
});
</script>
</head>
<body>
<div class="wrap">
  <div class="header">
    <div class="logo">
      <h1><a href="http://localhost:8080/cartuning/index.jsp"><img src="http://localhost:8080/cartuning/images/logo.png" alt=""></a></h1>
    </div>
    <div class="h_right">
      <div class="drp-dwn">
        <ul>
          <li>
            <h3> 选择语言 :</h3>
          </li>
          <li>
            <select onChange="window.location=this.options[this.selectedIndex].value">
              <option value="">英语</option>
              <option value="">德语</option>
              <option value="">法语</option>
            </select>
          </li>
          <li>
            <h3 style="margin-left: 10px;">货币 :</h3>
          </li>
          <li>
            <select onChange="window.location=this.options[this.selectedIndex].value">
              <option value="">美元</option>
              <option value="">欧元</option>
              <option value="">卢比</option>
            </select>
          </li>
        </ul>
      </div>
      <div class="header_top_right">
        <div class="login">
        	<span>
        		<a href="http://localhost:8080/cartuning/html/login.html">
        			<img src="http://localhost:8080/cartuning/images/login.png" alt="" title="login">
        		</a>
        	</span>
        </div>
        <div class="shopping_cart">
          <div class="cart_img">
          	<img src="http://localhost:8080/cartuning/images/header_cart.png">
          </div>
          <div class="cart">
          	<a href="#" title="View my shopping cart" rel="nofollow">
          		<span class="cart_title">Cart</span>
          		<span class="no_product">(empty)</span>
          	</a>
          </div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
    <div class="clear"></div>
    <div class="copyrights">Collect from <a href="#">免费模板</a></div>
    <div class="h_main">
      <ul class="nav">
        <li class="active"><a href="http://localhost:8080/cartuning/index.jsp">主页</a></li>
        <li><a href="http://localhost:8080/cartuning/html/maintain.html">保养</a></li>
        <li><a href="http://localhost:8080/cartuning/html/repair.html">维修</a></li>
        <li><a href="http://localhost:8080/cartuning/html/contact.html">联系</a></li>
      </ul>
      <div class="search">
        <form>
          <input type="text" value="">
          <input type="submit" value="">
        </form>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div class="container">
    <section id="dg-container" class="dg-container">
      <div class="dg-wrapper">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/1.jpg" alt="image1" />
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/2.jpg" alt="image2" />
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/3.jpg" alt="image3" />
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/4.jpg" alt="image4" />
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/5.jpg" alt="image5" />
        </a>
        <a href="http://localhost:8080/cartuning/html/details.html">
        	<img src="http://localhost:8080/cartuning/images/6.jpg" alt="image1" />
        </a>
        <a href="http://localhost:8080/cartuning/html/details.html">
        	<img src="http://localhost:8080/cartuning/images/7.jpg" alt="image2" />
        </a>
        <a href="http://localhost:8080/cartuning/html/details.html">
        	<img src="http://localhost:8080/cartuning/images/8.jpg" alt="image3" />
        </a>
      </div>
    </section>
  </div>
  <div class="main">
    <div class="section group">
      <div class="grid_1_of_4 images_1_of_4">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/pic1.jpg">
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
        	<h3>Lorem Ipsum is</h3>
        </a>
      </div>
      <div class="grid_1_of_4 images_1_of_4">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/pic3.jpg">
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
        	<h3>Lorem is simply </h3>
        </a>
      </div>
      <div class="grid_1_of_4 images_1_of_4">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/pic2.jpg">
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
        	<h3>Lorem Ipsum is</h3>
        </a>
      </div>
      <div class="grid_1_of_4 images_1_of_4">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/pic4.jpg">
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
        	<h3>Lorem is simply </h3>
        </a>
      </div>
      <div class="clear"></div>
    </div>
    <div class="section group btm">
      <div class="grid_1_of_4 images_1_of_4">
	   	  <a href="http://localhost:8080/cartuning/html/details.html">
	   		 <img src="http://localhost:8080/cartuning/images/pic5.jpg">
	   	  </a>
	   	  <a href="http://localhost:8080/cartuning/html/details.html">
	     	<h3>Lorem Ipsum is</h3>
	      </a>
      </div>
      <div class="grid_1_of_4 images_1_of_4">
	      <a href="http://localhost:8080/cartuning/html/details.html">
	      	<img src="http://localhost:8080/cartuning/images/pic6.jpg">
	      </a> <a href="http://localhost:8080/cartuning/html/details.html">
	        <h3>Lorem is simply </h3>
	      </a>
      </div>
      <div class="grid_1_of_4 images_1_of_4">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/pic7.jpg">
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
        	<h3>Lorem Ipsum is</h3>
        </a>
	  </div>
      <div class="grid_1_of_4 images_1_of_4">
      	<a href="http://localhost:8080/cartuning/html/details.html">
      		<img src="http://localhost:8080/cartuning/images/pic8.jpg">
      	</a>
      	<a href="http://localhost:8080/cartuning/html/details.html">
        	<h3>Lorem is simply </h3>
        </a>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="f_left">
      <div class="f_nav">
        <ul>
          <li><a href="">关于我们</a></li>
          <li><a href="">网址</a></li>
          <li><a href="">顾客服务</a></li>
          <li><a href="">寻找项目</a></li>
          <li><a href="">联系我们</a></li>
        </ul>
      </div>
      <div class="copy">
        <p class="w3-link">© All Rights Reserved <a href="#" target="_self" title="">cartuning</a></p>
      </div>
    </div>
    <div class="social-icons">
      <ul>
        <li class="icon1"><a href="#" target="_self"> </a></li>
        <li class="icon2"><a href="#" target="_self"> </a></li>
        <li class="icon3"><a href="#" target="_self"> </a></li>
        <li class="icon4"><a href="#" target="_self"> </a></li>
        <div class="clear"></div>
      </ul>
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>