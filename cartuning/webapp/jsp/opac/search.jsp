<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书馆书目检索系统 </title>
<link type="text/css" rel="stylesheet" href="http://localhost:8080/cartuning/css/libary.css">
<link type="text/css" rel="stylesheet" href="http://localhost:8080/cartuning/css/mylib.css" />
<link type="text/css" rel="stylesheet" href="http://localhost:8080/cartuning/css/jquery-ui-1.8.13.custom.css">
<script  type="text/javascript" src="http://localhost:8080/cartuning/js/jquery.3.1.1.min.js"></script>
<script  type="text/javascript" src="http://localhost:8080/cartuning/js/jquery-ui-1.8.13.custom.min.js"></script>
<!-- <script  type="text/javascript" src="http://localhost:8080/cartuning/js/highlighter.js"></script> -->
</head>
<body>
<div id="header_opac">
	<h1 class="header_opac_img">
    <div class="header_opac_logo">
    	图书馆书目检索系统<br>
        <p>Online Public Access Catalogue</p>
        
    </div>
    </h1>
    <div class="header_right header_right_top">
      <p class="header_right_font">       </p>
      <p style="margin-top:60px;" class="header_right_font">
        <a href="jsp/opac/book_cart.jsp">暂存书架(<span id="bookcartCount">0</span>)</a> | <font color="blue"></font> <a href="jsp/reader/login.jsp" style="color:#ff0000;">登录</a></p>
       </div>
</div>
<div id="menubar">
    <ul id="menu_top">
    		  	<li><a class="menu_top_on" style="color:#6C5B23;"	href="jsp/opac/search.jsp" target="_self" >书目检索</a></li>
	  		  	<li><a href="jsp/top/top_lend.jsp" target="_self" >热门推荐</a></li>
	  		  	<li><a href="jsp/browse/cls_browsing.jsp" target="_self" >分类浏览</a></li>
	  		  	<li><a href="jsp/newbook/newbook_cls_browse.jsp" target="_self" >新书通报</a></li>
	  		  	<li><a href="jsp/peri/peri_nav_e.jsp" target="_self" >期刊导航</a></li>
	  		  	<li><a href="jsp/asord/asord_hist.jsp" target="_self" >读者荐购</a></li>
	  		  	<li><a href="jsp/shelf/curriculum.jsp" target="_self" >学科参考</a></li>
	  		  	<li><a href="jsp/info/info_guide.jsp" target="_self" >信息发布</a></li>
	  		  	<li><a href="jsp/reader/redr_info.jsp" target="_self" >我的图书馆</a></li>
	  		  	         <div class="clear"></div>
    </ul>
</div>
<div id="submenu">
	  	  	<a href="../opac/search.jsp" target="_self" ><strong style="">简单检索</strong></a>	 	
	  	
	  	<a href="../opac/search_adv.jsp" target="_self" >全文检索</a>
	  	
	  	<a href="../opac/search_more.jsp" target="_self" >多字段检索</a>
	        <div class="clear"></div>
</div>

  <div id="mainbox">
	<div id="container">
        <fieldset><legend><img src="../tpl/images/s_f_1.jpg" width="190" height="18" /></legend><div style="text-indent:2em;margin:4px">
<form action="openlink.jsp" method="get" name="f" onsubmit="return chkForm(this)" id="f">    
      <div class="search_bgimg"><select class="option" name="strSearchType" size="1" style="width:100px;">
                                <option value="title">题&nbsp;&nbsp;名</option>
                                <option value="author">责任者</option>
                                <option value="keyword">主题词</option>
                                <option value="isbn">ISBN/ISSN</option>
                                <option value="asordno">订购号</option>
                                <option value="coden">分类号</option>
                                <option value="callno">索书号</option>
                                <option value="publisher">出版社</option>
                                <option value="series">丛书名</option>
                                <option value="tpinyin">题名拼音</option>
                                <option value="apinyin">责任者拼音</option>
                              </select>
              <select class="option" name="match_flag" size="1" style="width:100px;">
                <option value="forward">前方一致</option>
                <option value="full">完全匹配</option>
                <option value="any">任意匹配</option>
              </select>
              <input type="hidden" id="historyCount" name="historyCount" value="1" />
		  <input style="width:34%;" type="text" size="45" name="strText" id="strText" value="" >
			  <input type="submit" class="btn btn-primary" value="&nbsp;检&nbsp;索&nbsp;" size="30">
              <input type="button" id="btnShowMore" onclick="showMore()" class="btn btn-success" value="更多限制" size="30">
              <br>
        <p><input type="radio" name="doctype" value="ALL" checked="checked" />
            所有书刊
            <input type="radio" name="doctype" value="01" />
            中文图书
            <input type="radio" name="doctype" value="02" />
            西文图书
            <input type="radio" name="doctype" value="11" />
            中文期刊
            <input type="radio" name="doctype" value="12" />
            西文期刊　　　
                   </p>
    					<div id="child1" class="childl">
						<p><strong>显示方式：</strong><select class="option" name="displaypg" size="1" style="width:100px;">
				            <option value="20">20条</option>
				            <option value="30">30条</option>
				            <option value="50">50条</option>
				            <option value="100">100条</option>
				          </select>    
				          <input type="radio" name="showmode" value="list" checked="checked" />
				          详细显示
				          <input type="radio" name="showmode" value="table" />
				          表格显示</p>
                          <p><strong>排序方式：</strong><select class="option" name="sort" size="1" style="width:100px;">
				          <option value="CATA_DATE">入藏日期</option>
				          <option value="M_TITLE">题&nbsp;&nbsp;名</option>
				          <option value="M_AUTHOR">责任者</option>
				          <option value="M_CALL_NO">索书号</option>
				          <option value="M_PUBLISHER">出版社</option>
				          <option value="M_PUB_YEAR">出版日期</option>
				        </select>
				        <input type="radio" name="orderby" value="asc" />
				        升序排列
				        <input type="radio" name="orderby" value="desc" checked="checked" />
				        降序排列</p>
                        <p><strong>检索范围：</strong><select class="option" id="location" name="location" size="1" style="width:100px;">
                        <option value="ALL">所有馆藏地</option>
                                                                                      <option value="00002">报刊阅览室</option>
                                                          <option value="00004">工具书阅览室</option>
                                                          <option value="10001">社科图书借阅Ⅱ室</option>
                                                          <option value="10002">社科图书借阅Ⅰ室</option>
                                                          <option value="10003">科技图书借阅Ⅰ室</option>
                                                          <option value="10004">科技图书借阅Ⅱ室</option>
                                                          <option value="10005">社科图书借阅Ⅲ室</option>
                                                          <option value="10006">科技图书借阅Ⅲ室</option>
                                                          <option value="10009">样本书库</option>
                                                          <option value="10010">外文书库</option>
                                                          <option value="10011">基本书库</option>
                                                          <option value="10012">江宁校区分馆</option>
                                                          <option value="00006">经济管理学院资料室</option>
                                                          <option value="00007">材料工程学院资料室</option>
                                                          <option value="00008">艺术与设计学院资料室</option>
                                                          <option value="00009">建筑工程学院资料室</option>
                                                          <option value="00010">通信工程学院资料室</option>
                                                          <option value="00012">外语系资料室</option>
                                                          <option value="00013">人文与社科系资料室</option>
                                                          <option value="20003">自动化学院资料室</option>
                                                          <option value="30001">环境工程系资料室</option>
                                                          <option value="30002">机械工程学院资料室</option>
                                                          <option value="30003">电力工程学院资料室</option>
                                                          <option value="30004">工程基础试验与训练中心资料室</option>
                                                          <option value="30005">计算机工程学院资料室</option>
                                                          <option value="30006">车辆工程系资料室</option>
                                                          <option value="30007">能源与动力学院资料室</option>
                                                          <option value="30008">先进制造技术工程中心资料室</option>
                                                          <option value="30009">数理部资料室</option>
                                                         </select>
                        </p>
                        </div>
                       <p><div id="hottag" style="padding:10px 0;"><strong>热门检索：</strong><span id="topten"></span></div><br />　　<a href="top100.jsp">查看30天内的热门检索词</a></p>
    	</div></form>
</div></fieldset>
  </div>
 
 <script src="../tpl/js/swfobject.js"></script>
    <div id="search_container">
   	  <div id="search_container_left">
       	<h3>热门检索词</h3>
          <p><span id="swf"></span></p>
        </div>
		<span id="top_lend_shelf"></span>
    </div> 
    <div class="clear"></div>
</div>

<script type="text/javascript">
<!--
	var bShow = false;
	
	function input_me(str){
		$("#strText").val(str);
		$("#historyCount").val("0"); 
		document.f.submit(); 
	}

	function showMore(){
		bShow = !bShow;
		if(bShow){
			$("#btnShowMore").val("取消限制");
			$("#location").val('ALL');
		}else{
			$("#btnShowMore").val("更多限制");
		}
		$("#child1").toggle(bShow);
	}
	
 	$(function(){
		$("#topten").load("ajax_topten.jsp");
		/*$("#top_lend_shelf").load("ajax_top_lend_shelf.jsp");*/
		$.get("ajax_topkeywords.jsp",function(taglist){
			var attributes = {'allowScriptAccess':'always','wmode':'transparent','id':'swf'};
		    var flashvars = { 'mode' : 'tags', 'distr' : 'false', 'tcolor' : '0x00ff00', 'hcolor' : '0x000000',  'speed' : 50 };
		    flashvars["tagcloud"] = "<tags>" + taglist + "</tags>";
		    swfobject.embedSWF("../tpl/opac/tagcloud.swf", "swf", 250, 200, '10', '', flashvars, {}, attributes);
		});
		
		$("#child1").hide();
		$("#location").val('ALL');
		
	});

    function chkForm(theForm){
      if (theForm.strText.value=="") {
        alert("［查询内容］不能为空");
        theForm.strText.focus();
        return (false);
      }
    }
    
</script> 

<div id="footer"><div id="copy"><p> 南京工程学院图书馆&nbsp;&nbsp; OPAC v5.0.1.1225  &nbsp;&nbsp;</p><p>&copy; 1999-2013 <a target="_blank" href="http://www.libsys.com.cn">Jiangsu Huiwen Software Ltd. 江苏汇文软件有限公司</a></p></div></div></body></html>