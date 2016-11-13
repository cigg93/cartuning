<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">  
      
    <title>json交互测试</title>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugin/bootstrap/css/bootstrap.min.css" type="text/css"/>
    

    <!-- <script type="text/javascript"> 
    var h=' <table class="table table-striped"><caption>商品</caption><thead> <tr> <th>名称</th> <th>价格</th></tr></thead><tbody><tr><td>';
    
        //请求的是json，输出的是json  
        function reuqestJson(){ 
        	var json={
        			"name":"手机",
        			"price":999
        	};
          $.ajax({  
                type:'post',  
                url:'${pageContext.request.contextPath }/requestJson.do',  
                contentType:'application/json;charset=utf-8',
                //数据格式是json串,商品信息  
                data:JSON.stringify(json) ,
                success:function(data){//返回json结果  
                    /* alert(data); */
                   $("#input").val(JSON.parse(data).name);
              		h+=JSON.parse(data).name+'</td><td>'+JSON.parse(data).price+'</td></tr></tbody></table>'; 
                    $('#table').html(h);
                }   
            }); 
        }  
    </script> -->
    
    <script type="text/javascript"> 
        //请求的是json，输出的是json  
        function reuqestJson(){ 
        	var json={
        			"name":"手机",
        			"price":999
        	};
          $.ajax({  
                type:'post',  
                url:'${pageContext.request.contextPath }/requestJson.do',  
                contentType:'application/json;charset=utf-8',
                //数据格式是json串,商品信息  
                data:JSON.stringify(json),
              //object是后台传过来的java list数据集合  
                success:function(objects){ 
                	/* alert(JSON.parse(objects));
                	return; */
                                     
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
	
	<!-- <button>获得 JSON 数据</button> -->
	<!-- <p></p> -->
	<!-- <button>向页面发送 HTTP POST 请求，并获得返回的结果</button> -->
	<!-- <div id="showMsg"></div>
	<input type="text"  id="input" value=""  />
	
	<div id="table"></div> -->
	
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