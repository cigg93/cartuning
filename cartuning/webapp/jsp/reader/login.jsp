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
<title>图书馆书目检索系统 </title>
<link type="text/css" rel="stylesheet" href="css/libary.css">
<link type="text/css" rel="stylesheet" href="css/mylibary.css" />
<link type="text/css" rel="stylesheet" href="css/jquery-ui-1.8.13.custom.css">
<script  type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script  type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
<!-- <script  type="text/javascript" src="js/highlighter.js"></script> -->
<script type="text/javascript">
	$.fn.serializeObject = function()    
	{    
	   var o = {};
	   /*  */
	   var a = $("input[class='btn-danger']").serializeArray();    
	   $.each(a, function() {    
	       if (o[this.name]) {    
	           if (!o[this.name].push) {    
	               o[this.name] = [o[this.name]];    
	           }    
	           o[this.name].push(this.value || '');    
	       } else {    
	           o[this.name] = this.value || '';    
	       }    
	   });    
	   return o;    
	}; 
	$(function(){
		var login = 
		$("input[class='btn-danger']".click(function(){
			/* json对象 */
			var data = $("input[class='btn-danger']").serializeObject();
			/* 将json对象转换成json字符串 */
			data = JSON.stringify(data);
			$.ajax({
				type:"post",
				contentType:"application/json",
				url:"<%=basePath%>",
			});
		}));
	});
</script>
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
    		  	<li><a href="jsp/opac/search.jsp" target="_self" >书目检索</a></li>
	  		  	<li><a href="jsp/top/top_lend.jsp" target="_self" >热门推荐</a></li>
	  		  	<li><a href="jsp/browse/cls_browsing.jsp" target="_self" >分类浏览</a></li>
	  		  	<li><a href="jsp/newbook/newbook_cls_browse.jsp" target="_self" >新书通报</a></li>
	  		  	<li><a href="jsp/peri/peri_nav_e.jsp" target="_self" >期刊导航</a></li>
	  		  	<li><a href="jsp/asord/asord_hist.jsp" target="_self" >读者荐购</a></li>
	  		  	<li><a href="jsp/shelf/curriculum.jsp" target="_self" >学科参考</a></li>
	  		  	<li><a href="jsp/info/info_guide.jsp" target="_self" >信息发布</a></li>
	  		  	<li><a class="menu_top_on" href="jsp/reader/redr_info.jsp" target="_self" >我的图书馆</a></li>
	  		  	         <div class="clear"></div>
    </ul>
</div>
<div id="submenu">
	        <div class="clear"></div>
</div>

<div id="mainbox">
   <div id="container">
      <div id="left_tab">
      <h5 class="box_bgcolor"><strong>登录我的图书馆</strong></h5>
      	<form action="" id="frm_login" name="frm_login" method="POST">
        <table width="95%" border="0" cellpadding="3" cellspacing="1">
          <tr>
            <td width="150" align="right">用户名： </td>
            <td colspan="2" align="left"><input class="input" id="number" name="number" type="text" size="20" style="width:150px" ></td>
          </tr>
          <tr>
            <td height="40" align="right">密码： </td>
            <td colspan="2" align="left"><input class="input" name="passwd" type="password" size="20" style="width:150px" ></td>
          </tr>
          		  
          <tr>
            <td height="40" align="right">验证码： </td>
            <td width="160" align="left" valign="middle"><input id="captcha" class="input" name="captcha" type="text" size="20" style="width:150px" placeholder="输入4位数字验证码">
            
			</td>
            <td align="left" valign="middle"><span id="captcha_tips" >
            <img title="点击刷新" src="<%=basePath%>reader/captcha.do" align="absbottom" onclick="this.src='<%=basePath%>reader/captcha.do?e='+Math.random()*100">
            </span></td>
          </tr>          

                    <tr>
            <td align="right">&nbsp;</td>
            <td colspan="2" align="left"><input  type="Radio" name="select" value="cert_no" checked="checked" />证件号(学号或工号)
						<input type="Radio" name="select" value="email" />Email </td>
          </tr>
		  <tr>
		  	<td></td>
		  	<td></td>
		  	<td></td>
		  </tr>
          <tr>
            <td align="right">&nbsp;</td>
            <td colspan="2" align="left"><input class="btn btn-danger" type="submit"   value="登录"><input type="hidden" name="returnUrl" value="" />
            <input class="btn" type="button" value="密码重置" onclick="javascript:location.href='get_pwd.jsp' " />			</td>
          </tr>
		  <tr>
		  	<td></td>
		  	<td colspan="2"><font color="red"></font></td>
	  	  </tr>
        </table>
        </form>  	 
      </div>
      
      <div id="right_con">
          <h5>提示</h5>
          <div id="content_note">
            <ul>
               <li >读者用户名为读者的证件号,条码号或者您的Email,具体可以自行选择</li>
               <li style="list-style-type: none;"><br/></li>
               <li >读者信息查询的初始密码：<br/>
               	<br>身份证后6位，字母大写
               </li>
               <li style="list-style-type: none;"><br/></li>
               <li>密码在进入系统后可由读者重新设置</li>
               <li style="list-style-type: none;"><br/></li>
               <li>Email由您自行设定，登陆后可以修改</li>
               <li style="list-style-type: none;"><br/></li>
               <li>密码取回需要您首先验证您的Email</li>
            </ul>
        </div>
      </div>
      <div class="clear"></div>
   </div>	
   <div class="clear"></div>		  	 
</div><div id="footer"><div id="copy"><p>图书馆</p></div></div></body></html>