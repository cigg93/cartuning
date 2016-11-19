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
  <title>图书馆</title> 
  <script src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
  <script src="<%=basePath%>js/index.js"></script>
  <link rel="stylesheet" href="<%=basePath%>css/index.css" media="all" /> 
</head> 
<body> 
  <header class="inline-block"> 
	   <div class="width"> 
		   <div class="left"> 
		   		<a href="<%=basePath%>">个人图书馆</a> 
		   </div>
		   <div class="right">
		   		<ul class="sub-nav">
		   			<li class="search-block"><i class="icon icon-search"></i>站内搜索
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
  				<li class="menu-title">历史书籍
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="图书馆馆藏书目"></a></li>
  						<li class="inline-block left"><a href="" title="图书馆随书光盘系统">随书光盘</a></li>
  						<li class="inline-block left"><a href="" title="中文数据库">中文数据库</a></li>
  						<li class="inline-block left"><a href="" title="外文数据库">外文数据库</a></li>
  						<li class="inline-block left"><a href="" title="试用数据库">试用数据库</a></li>
  						<li class="inline-block left"><a href="" title="开放获取资源">开放获取资源</a></li>
  						<li class="inline-block left"><a href="" title="文献传递">文献传递</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">读者服务
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="查看个人借阅信息、续借">我的图书馆</a></li>
  						<li class="inline-block left"><a href="" title="科技查新服务">科技查新</a></li>
  						<li class="inline-block left"><a href="" title="查收查引">查收查引</a></li>
  						<li class="inline-block left"><a href="" title="自助借还">自助借还</a></li>
  						<li class="inline-block left"><a href="" title="自助文印">自助文印</a></li>
  						<li class="inline-block left"><a href="" title="自助超期处理">自助超期处理</a></li>
  						<li class="inline-block left"><a href="" title="自助阅览室选座">自助阅览室选座</a></li>
  						<li class="inline-block left"><a href="" title="信息共享空间预约">信息共享空间预约</a></li>
  						<li class="inline-block left"><a href="" title="学位论文提交系统">学位论文提交系统</a></li>
  						<li class="inline-block left"><a href="" title="校外访问数字资源">校外访问</a></li>
  						<li class="inline-block left"><a href="" title="自助阅览室选座">自助阅览室选座</a></li>
  						<li class="inline-block left"><a href="" title="校外访问数字资源">校外访问</a></li>
  						<li class="inline-block left"><a href="" title="馆内WiFi">馆内WiFi</a></li>
  						<li class="inline-block left"><a href="" title="IP地址测试">IP地址测试</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">阅读推广
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="好书推荐">好书推荐</a></li>
  						<li class="inline-block left"><a href="" title="图书馆文化艺术展览">文化长廊</a></li>
  						<li class="inline-block left"><a href="" title="读书节">读书节</a></li>
  						<li class="inline-block left"><a href="" title="书友会">书友会</a></li>
  						<li class="inline-block left"><a href="" title="图书馆活动、资源培训">读者教育</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">交流互动
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="为图书馆荐购好书">读者荐购</a></li>
  						<li class="inline-block left"><a href="" title="图书捐赠">图书捐赠</a></li>
  						<li class="inline-block left"><a href="" title="常见问题">常见问题</a></li>
  						<li class="inline-block left"><a href="" title="馆长信箱">馆长信箱</a></li>
  						<li class="inline-block left"><a href="" title="图书馆勤工俭学">图书馆勤工俭学</a></li>
  						<li class="inline-block left"><a href="" title="图书馆学生管理委员会">图书馆学生管理委员会</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">本馆概况
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="本馆介绍">本馆介绍</a></li>
  						<li class="inline-block left"><a href="" title="部门设置">部门设置</a></li>
  						<li class="inline-block left"><a href="" title="开放时间">开放时间</a></li>
  						<li class="inline-block left"><a href="" title="馆藏分布">馆藏分布</a></li>
  						<li class="inline-block left"><a href="" title="图书馆规章制度">读者须知</a></li>
  						<li class="inline-block left"><a href="" title="图书馆服务报告">服务报告</a></li>
  					</ul>
  				</li>
  				<li class="menu-title">馆员园地
  					<ul class="submenu">
  						<li class="inline-block left"><a href="" title="直属单位党总支">党建之家</a></li>
  						<li class="inline-block left"><a href="" title="直属单位工会">工会活动</a></li>
  						<li class="inline-block left"><a href="" title="图书馆办公邮箱">办公邮箱</a></li>
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
		  			<form action="" target="_self">
		  				<input class="input" type="text" placeholder="请输入关键字检索所有书目" name="q0" maxlength="80">
		  				<input type="hidden" name="sType0" value="any">
		  				<input type="hidden" name="pageSize" value="100">
		  				<input type="hidden" name="sort" value="score">
		  				<input type="hidden" name="desc" value="true">
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