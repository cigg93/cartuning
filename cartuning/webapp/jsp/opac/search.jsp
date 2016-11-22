<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE HTML>
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
		<div id="container">
        	<fieldset>
        	<div style="text-indent:2em;margin:4px">
				<form action="openlink.jsp" method="get" name="f" onsubmit="return chkForm(this)" id="f">    
      				<div class="search_bgimg">
      					<select class="option" name="strSearchType" size="1" style="width:100px;">
                                <option value="title">题&nbsp;&nbsp;名</option>
                                <option value="isbn">ISBN/ISSN</option>
                                <option value="publisher">出版社</option>
                                <option value="series">丛书名</option>
                                <option value="tpinyin">题名拼音</option>
                        </select>
              			<select class="option" name="match_flag" size="1" style="width:100px;">
				                <option value="full">完全匹配</option>
				                <option value="any">任意匹配</option>
              			</select>
              		<input type="hidden" id="historyCount" name="historyCount" value="1" />
		  			<input style="width:34%;" type="text" size="45" name="strText" id="strText" value="" >
			  		<input type="submit" class="btn btn-primary" value="&nbsp;检&nbsp;索&nbsp;" size="30">
              		<br>
        			<p>
        				<input type="radio" name="doctype" value="ALL" checked="checked" />所有书刊
            			<input type="radio" name="doctype" value="01" />中文图书
            			<input type="radio" name="doctype" value="02" />西文图书
                   	</p>
    				<div id="child1" class="childl">
						<p><strong>显示方式：</strong>
						<select class="option" name="displaypg" size="1" style="width:100px;">
				            <option value="20">20条</option>
				            <option value="30">30条</option>
				            <option value="50">50条</option>
				            <option value="100">100条</option>
				        </select>    
				        <input type="radio" name="showmode" value="list" checked="checked" />详细显示
				        <input type="radio" name="showmode" value="table" />表格显示</p>
                        <p><strong>排序方式：</strong>
                        <select class="option" name="sort" size="1" style="width:100px;">
					          <option value="M_TITLE">题&nbsp;&nbsp;名</option>
					          <option value="M_PUBLISHER">出版社</option>
					          <option value="M_PUB_YEAR">出版日期</option>
				        </select>
				        <input type="radio" name="orderby" value="asc" />升序排列
				        <input type="radio" name="orderby" value="desc" checked="checked" />降序排列</p>
                    </div>
                    <p>
                    </p>
    				</div>
    			</form>
			</div></fieldset>
		</div>
 
<script type="text/javascript">
	var bShow = false;
	
	function input_me(str){
		$("#strText").val(str);
		$("#historyCount").val("0"); 
		document.f.submit(); 
	}
	
    function chkForm(theForm){
      if (theForm.strText.value=="") {
        alert("［查询内容］不能为空");
        theForm.strText.focus();
        return (false);
      }
    }
    
</script> 

<div id="footer"><div id="copy"><p> </p><p><a target="_self" href=""></a></p></div></div></body></html>