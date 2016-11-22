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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书书目检索系统 </title>
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/libary.css">
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/mylibary.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>css/jquery-ui-1.8.13.custom.css">
<script  type="text/javascript" src="<%=basePath%>js/jquery.3.1.1.min.js"></script>
<script  type="text/javascript" src="<%=basePath%>js/jquery-ui-1.8.13.custom.min.js"></script>
</head>
<body>
	<div id="header_opac">
		<h1 class="header_opac_img">
	    <div class="header_opac_logo">
	    	图书书目检索系统<br>
	        <p></p>
	    </div>
	    </h1>
	    <div class="header_right header_right_top">
	      <p class="header_right_font"></p>
	      <p style="margin-top:60px;" class="header_right_font"><font color="blue"></font><a href="jsp/reader/login.jsp" style="color:#ff0000;">登录</a></p>
	    </div>
	</div>
	<div id="menubar">
	    <ul id="menu_top">
	    		  	<li><a class="menu_top_on" style="color:#6C5B23;"	href="jsp/opac/search.jsp" target="_self" >书目检索</a></li>
		  		  	<li><a href="jsp/browse/cls_browsing.jsp" target="_self" >分类浏览</a></li>
		  		  	<li><a href="jsp/reader/redr_info.jsp" target="_self" >我的图书</a></li>
		  		  	<div class="clear"></div>
	    </ul>
	</div>
	<div id="submenu">
		  	<a href="opac/search.jsp" target="_self" ><strong style="">简单检索</strong></a>	 	
		    <div class="clear"></div>
	</div>
	
	<div id="mainbox">
		<div class="container">
			<form name="thisform" action="result.jsp" method="get" onsubmit="return check();">
    			<select name="sType0" size="1">
                    <option value="any">任意词</option>
                    <option value="02">题&nbsp;&nbsp;名</option>
                    <option value="03">责任者</option>
                    <option value="09">出版社</option>
                </select>
		        <input type="text" size="50" maxlength="80" name="q0" id="q0" value="">
		        <input type="submit" class="btn btn-primary" value="&nbsp;检&nbsp;索&nbsp;" size="30">
		        <input type="hidden" name="with_ebook" value="">
    		</form>
		</div>
		<br>
		<div id="num">
	    	<form id="f" action="" method="get">
				   <label for="sortField">按照:</label>
			            <select name="sort" id="sort">
					           <option value="title">题&nbsp;&nbsp;名</option>
					           <option value="author">责任者</option>
					           <option value="callNo">索书号</option>
					           <option value="publisher">出版社</option>
					           <option value="pubYear">出版日期</option>
			            </select>&nbsp;
	                    <select name="desc" id="desc">
			              <option value="false">升序</option>
			              <option value="true" selected=""> 降序</option>
			            </select>&nbsp;
			            <input type="button" onclick="submitSecSearch()" class="btn btn-primary" value="排列">
			            <input type="hidden" name="sType0" value="any">
				        <input type="hidden" name="q0" value="">
						<input type="hidden" name="sType1" value="">
				        <input type="hidden" name="q1" value="">
						<input type="hidden" name="sType2" value="">
				        <input type="hidden" name="q2" value="">
						<input type="hidden" name="sType3" value="">
				        <input type="hidden" name="q3" value="">
						<input type="hidden" name="sType4" value="">
				        <input type="hidden" name="q4" value="">
						<input type="hidden" name="with_ebook" value="">
			</form>
     	</div>
	</div>

</body>
</html>