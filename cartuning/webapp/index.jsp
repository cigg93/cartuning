<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<!DOCTYPE html>
<html>
<head> 
  <base href="<%=basePath%>">
  <meta charset="utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <link rel="shortcut icon" href="<%=basePath%>themes/favicon.ico" /> 
  <title>个人图书</title> 
  <script src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
  <script src="<%=basePath%>js/index.js"></script>
  <link rel="stylesheet" href="<%=basePath%>css/index.css" media="all" /> 
</head> 
<body> 
  <header class="inline-block"> 
	   <div class="width"> 
		   <div class="left"> 
		   		<a href="<%=basePath%>"></a> 
		   </div>
		   <div class="right">
		   		<ul class="sub-nav">
		   			<li class="search-block"><i class="icon icon-search"></i>搜索
		   				<div class="sub-search inline-block">
		   					<form id="search-block-form" action="" method="get" accept-charset="UTF-8">
		   						<div>
		   							<input class="input" name="keys" type="text" maxlength="128" placeholder="请输入检索关键字">
		   							<input class="btn-submit" type="submit" value="">
		   						</div>
		   					</form>
		   				</div>
		   			</li>
		   			<li><a href=""><i class="icon icon-map"></i>网站地图</a></li>
		   			<li><a href="" target="_self"><i class="icon icon-ask"></i>联系我</a>
		   			</li>
		   		</ul>
		   		
		   </div> 
	   </div> 
  </header> 
  
  <!-- begin of <div class="clear carousel"> -->
  <div class="clear carousel">
  	<div class="width">
  		<nav class="menu wth-nav">
  			<ul>
  				<li class="menu-title">法律类
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="刑法的私塾">刑法的私塾</a></li>
  						<li class="inline-block left"><a href="" title="正义的成本：当法律遇上经济学">正义的成本：当法律遇上经济学</a></li>
  						<li class="inline-block left"><a href="" title="西窗法雨">西窗法雨</a></li>
  						<li class="inline-block left"><a href="" title="中华人民共和国民事诉讼法实用版">中华人民共和国民事诉讼法实用版</a></li>
  						<li class="inline-block left"><a href="" title="刑法一本通:中华人民共和国刑法总成">刑法一本通:中华人民共和国刑法总成</a></li>
  						<li class="inline-block left"><a href="" title="法律常识全知道">法律常识全知道</a></li>
  						<li class="inline-block left"><a href="" title="犯罪心理学">犯罪心理学</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">军事类
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="第二次世界大战战史">《第二次世界大战战史》</a></li>
  						<li class="inline-block left"><a href="" title="中国人民志愿军抗美援朝战史">中国人民志愿军抗美援朝战史》</a></li>
  						<li class="inline-block left"><a href="" title="海湾战争">海湾战争 </a></li>
  						<li class="inline-block left"><a href="" title="科索沃战争">科索沃战争</a></li>
  						<li class="inline-block left"><a href="" title="反恐战法">反恐战法</a></li>
  						<li class="inline-block left"><a href="" title="反击黑客">反击黑客</a></li>
  						<li class="inline-block left"><a href="" title="拿破仑">拿破仑</a></li>
  						<li class="inline-block left"><a href="" title="三国演义">三国演义</a></li>
  						<li class="inline-block left"><a href="" title="水浒传">水浒传</a></li>
  						<li class="inline-block left"><a href="" title="纳粹枭雄—第三帝国的元帅">纳粹枭雄—第三帝国的元帅</a></li>
  						<li class="inline-block left"><a href="" title="山本五十六">山本五十六</a></li>
  						<li class="inline-block left"><a href="" title="独眼将军达扬">独眼将军达扬</a></li>
  						<li class="inline-block left"><a href="" title="冰海红魔伍德沃德">冰海红魔伍德沃德</a></li>
  						<li class="inline-block left"><a href="" title="彭德怀自述">彭德怀自述</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">经济类
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="伟大的博弈">伟大的博弈</a></li>
  						<li class="inline-block left"><a href="" title="苹果橘子经济学"> 苹果橘子经济学</a></li>
  						<li class="inline-block left"><a href="" title="诚信的背后">诚信的背后</a></li>
  						<li class="inline-block left"><a href="" title="被掩盖的经济学真相">被掩盖的经济学真相</a></li>
  						<li class="inline-block left"><a href="" title="美国货币史">美国货币史</a></li>
  						<li class="inline-block left"><a href="" title="经济学的思维方式">经济学的思维方式</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">文化类
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="论语">论语</a></li>
  						<li class="inline-block left"><a href="" title="物种起源">物种起源</a></li>
  						<li class="inline-block left"><a href="" title="全球通史">全球通史</a></li>
  						<li class="inline-block left"><a href="" title="史记">史记</a></li>
  						<li class="inline-block left"><a href="" title="红与黑">红与黑</a></li>
  						<li class="inline-block left"><a href="" title="红楼梦">红楼梦</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">历史类
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="白话本国史">白话本国史</a></li>
  						<li class="inline-block left"><a href="" title="国史大纲">国史大纲</a></li>
  						<li class="inline-block left"><a href="" title="中国史纲">中国史纲</a></li>
  						<li class="inline-block left"><a href="" title="春秋史">春秋史</a></li>
  						<li class="inline-block left"><a href="" title="秦汉史">秦汉史</a></li>
  						<li class="inline-block left"><a href="" title="隋唐史">隋唐史</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">政治类
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="西方政治思想史">西方政治思想史</a></li>
  						<li class="inline-block left"><a href="" title="剑桥中世纪政治思想史">剑桥中世纪政治思想史</a></li>
  						<li class="inline-block left"><a href="" title="大棋局">大棋局</a></li>
  						<li class="inline-block left"><a href="" title="菲律宾的腐败">菲律宾的腐败</a></li>
  						<li class="inline-block left"><a href="" title="民国的四次选举">民国的四次选举</a></li>
  						<li class="inline-block left"><a href="" title="小议台湾土改">小议台湾土改</a></li>
  					</ul>
  				</li>
  			</ul>
  		</nav>
  		<div class="right search">
		  	<ul class="nav nav-tabs">
		  		<li class="active"><a data-toggle="tab" href="javascript:;" data-href="gcss">所有书目</a></li>
		  	</ul>
		  	<div class="tab-content">
		  		<div id="gcss" class="tab-pane active">
		  			<form action="<%=basePath%>jsp/opac/search.jsp" target="_blank">
		  				<input class="input" type="text" placeholder="请输入关键字检索所有书目" name="q0" maxlength="80">
		  				<input type="submit" class="btn-search" value="">
		  			</form>
		  		</div>
		  	</div>
	  </div>
  	</div>
  </div>

  <!-- end of <div class="clear carousel"> -->
  <div class="clear width">
  	<div class="content-block">
  		<div class="left wth-nav ctn1 center">
  			<p>NEWS</p>
  			<p>最新动态</p>
  		</div>
  		<div class="left wth-pic">
  			<img src="<%=basePath%>themes/ctn-img2.jpg">
  		</div>
  		<div class="left">
  			<ul class="ctn-newslist">
  				<li>
  					<span class="separator-block"></span>
  					<span><a href="">关于********的说明</a></span>
  					<span class="separator-block"></span>
  					<span class="right c9">2016-11-10</span>
  				</li>
  				<li>
  					<span class="separator-block"></span>
  					<span><a href="">关于********的说明</a></span>
  					<span class="separator-block"></span>
  					<span class="right c9">2016-11-10</span>
  				</li>
  				<li>
  					<span class="separator-block"></span>
  					<span><a href="">关于********的说明</a></span>
  					<span class="separator-block"></span>
  					<span class="right c9">2016-11-10</span>
  				</li>
  				<li>
  					<span class="separator-block"></span>
  					<span><a href="">关于********的说明</a></span>
  					<span class="separator-block"></span>
  					<span class="right c9">2016-11-10</span>
  				</li>
  				<li>
  					<span class="separator-block"></span>
  					<span><a href="">关于********的说明</a></span>
  					<span class="separator-block"></span>
  					<span class="right c9">2016-11-16</span>
  				</li>
  				<li>
  					<a href=""><span class="more">更多...</span></a>
  				</li>
  			</ul>
  		</div>
  	</div>
  	<div class="content-block clear">
  		<div class="left ctn-liblist">
  			<ul>
  				<li><a href="" target="_self">图书1</a></li>
  				<li><a href="" target="_self">图书2</a></li>
  				<li><a href="" target="_self">图书3</a></li>
  				<li><a href="" target="_self">图书4</a></li>
  				<li><a href="" target="_self">图书5</a></li>
  				<li><a href="" target="_self">图书6</a></li>
  			</ul>
  		</div>
  		<div class="left wth-nav ctn3 center">
  			<p>NAVIGATION</p>
  			<p>快速导航</p>
  		</div>
  		<div class="left wth-pic">
  			<img src="<%=basePath%>themes/ctn-img2.jpg">
  		</div>
  	</div>
  </div>
  <footer>
  	<div class="width">
  		
	  	<div class="right">
	  		<div class="inline-block qrcode">
	  			<img alt="" src="<%=basePath%>themes/qr-weibo.png">
	  		</div>
	  		<div class="inline-block qrcode">
	  			<img alt="" src="<%=basePath%>themes/qr-wechat.png">
	  		</div>
	  	</div>
  	</div>
  	<div class="clear"></div>
  	
  </footer>
</body>
</html>