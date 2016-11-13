<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugin/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <script type="text/javascript"> 
        //请求的是json，输出的是json  
        function reuqestJson(){ 
          $.ajax({  
                type:'get',  
                url:'${pageContext.request.contextPath }/itemsCustom/itemsCustoms.do',  
                contentType:'application/json;charset=utf-8',
              //object是后台传过来的java list数据集合  
                success:function(objects){ 
                   //1,获取上面id为cloneTr的tr元素  
                       var tr = $("#cloneTr");  
                    $.each(JSON.parse(objects), function(index,item){                              
                          //克隆tr，每次遍历都可以产生新的tr                              
                            var clonedTr = tr.clone();  
                            var _index = index;  
                           
                            //循环遍历cloneTr的每一个td元素，并赋值  
                            clonedTr.children("td").each(function(inner_index){  
                               
                                   //根据索引为每一个td赋值  
                                         switch(inner_index){  
                                               case(0):   
                                                  $(this).html(item.name);  
                                                  break;  
                                               case(1):  
                                                  $(this).html(item.price);  
                                                  break;  
                             
                                        }//end switch                          
                         });//end children.each  
                       
                        //把克隆好的tr追加原来的tr后面  
                        clonedTr.insertAfter(tr);  
                     });//end $each  
                     $("#cloneTr").hide();//隐藏id=clone的tr，因为该tr中的td没有数据，不隐藏起来会在生成的table第一行显示一个空行  
                     $(".table").show();  
      }//end success     
            }); 
        
        }  
    </script>
</head>
<body>
<input type="button" onclick="reuqestJson()"  value="请求的是json，输出的是json"/>
	<table class="table table-hover">
	  <caption>商品</caption>
	  <thead>
	    <tr>
	      <th>名称</th>
	      <th>价格</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr id="cloneTr">
	      <td></td>
	      <td></td>
	    </tr>
	  </tbody>
	</table>

</body>
</html>