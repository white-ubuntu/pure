<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Untitled Document</title>
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/citypop.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<%@ include file="/WEB-INF/views/title.jsp"%>
	<div class="container-fluid"  style="margin-bottom: 60px;">

		<div class="row" style="margin-top: 20px;">
			<div class="col-md-10 col-md-offset-1">

				<div class="search-condition"
					style="height: 200px; padding-bottom: 20px; border-bottom: 1px solid #ededed;">
					<!-- Nav tabs -->
				<ul class="nav  nav-pills">
						<li role="presentation" ><a href="hospital?type=html">医院</a></li>
						<li role="presentation" class="active" ><a href="department?type=html">科室</a></li>
						<li role="presentation" ><a href="doctor?type=html">医生</a></li>
					</ul>
					<div class="choose-city"
						style="height: 30px; margin-top: 10px; border-bottom: 1px solid #ededed; position: relative;">

						<ul class="list-inline" style="position: relative;">

							<li><span class="glyphicon glyphicon-map-marker text-showy"
								aria-label="choosecity"></span> <span
								class="text-showy cityPopValue">广东深圳</span></li>
							<li id="choose-city-li"><span><mark>更换</mark></span></li>
						</ul>
						
						
                        <div class="conditionBar  conditionBar-sm "  id="searchConditionBar"  style="position: absolute;left:200px;top:0px;">
							<ul class="list-inline">
							<!-- 	<li  data-id="3333",data-type="4444">金牛区<a><span class="glyphicon glyphicon-remove"></span></a>
								</li>
								<li  data-id="55555",data-type="7777">综合<a><span class="glyphicon glyphicon-remove"></span></a>
								</li> -->
							</ul>
						</div>


						<div class="city pop" id="citypop" style="display: none;">
							<div class="search-citys-tt">
								<a class="current click" onclick="tabCutover(this,'s-citys1')"
									href="javascript:void(0)">国内热门<span></span></a> <a
									class="click" onclick="tabCutover(this,'s-citys2')"
									href="javascript:void(0)">ABCDE<span></span></a> <a
									class="click" onclick="tabCutover(this,'s-citys3')"
									href="javascript:void(0)">FGHJ<span></span></a> <a
									class="click" onclick="tabCutover(this,'s-citys4')"
									href="javascript:void(0)">KLMNP<span></span></a> <a
									class="click" onclick="tabCutover(this,'s-citys5')"
									href="javascript:void(0)">QRSTW<span></span></a> <a
									class="click" onclick="tabCutover(this,'s-citys6')"
									href="javascript:void(0)">XYZ<span></span></a> <a class="click"
									onclick="tabCutover(this,'s-citys7')" href="javascript:void(0)">港澳台<span></span></a>
							</div>
							<div class="search-citys-list click city_all_choose"
								id="citylistnew"></div>
						</div>
					</div>
                    			<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active"  >

							<div class="choose-class">
								<ul class="list-inline"  data-type="level">
									
								</ul>
								<ul class="list-inline"  data-type="type">
								</ul>
							</div>
						</div>
					</div>

				</div>

				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8" style="padding-left: 0px;">
							<div class="list-bar"
								style="background-color: #fbfbfb; height: 40px; margin-bottom: 5px; padding: 0px -15px;">

								<div class="dropdown" style="float: left;">
									<button class="btn btn-default dropdown-toggle" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true">
										预约人次 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#">预约人次</a></li>
										<li><a href="#">好评数</a></li>
									</ul>
								</div>
								<div style="float: right; margin-top: 10px;">
									<span>共<code>222</code>个科室
									</span>
								</div>





							</div>
							<div id="departments-dev">
							
							
							</div>



						</div>
						<div class="col-md-4">
							<div  id="departments-rec-div">
							

							</div>
						</div>


					</div>




				</div>

			</div>

		</div>




	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.2.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.js"></script>
	<script src="js/gh/global.js"></script>
	<script src="js/gh/citypop.js"></script>
	<script>
	//处理查询条件查询结果
	function loadSearchData(){
		var ConditionBar=$("#searchConditionBar");
		var levels="";
		var types="";
		$.each(ConditionBar.find("li"),function(e,v){
			var jsOb=JSON.parse($(v).attr("data"))
			if(jsOb.name=='level'){
				levels+=jsOb.value+",";
			}else if(jsOb.name="type"){
				types+=jsOb.value+",";
			}
		})
		var baseQuery={'levels':levels.substring(0, levels.length-1),'types':types.substring(0, types.length-1)};
		initDepartments(baseQuery);
	}
	function checkExist(dataType,dataId,$ConditionBar){
		var flag=false;
		$.each($ConditionBar.find("li"),function(e,v){
		var 	jsonObjectV=JSON.parse($(v).attr("data"));
			if(jsonObjectV.value ==dataId &&  jsonObjectV.name==dataType){
				flag=true;
			} 
		});
		if(flag)return true;
		return false;
	}
	/* 添加查询条件的标签*/
	function addCondition(v){
		var dataId=$(v).attr("data-id");   //dataJson为json
		var dataType=$(v).parent("ul").attr("data-type");
		var showVal=$(v).html();
		
		//检查标签组中是否已经含有了dataType和dataId都相同的
		$ConditionBar=$("#searchConditionBar");
		if(!checkExist(dataType,dataId,$ConditionBar)){
			  var liVar="<li data='{\"name\":\""+dataType+"\",\"value\":\""+dataId+"\" }'>"+$(v).html()+"<a  href='javascript:void(0);'  onclick=\"removeCondition(this)\"><span class='glyphicon glyphicon-remove'></span></a></li>";
				$("#searchConditionBar ul").append(liVar);
				
				loadSearchData();
		}
	}
	/*删除条件*/
	function removeCondition(v){
	$(v).parent("li").remove();
		loadSearchData();
	}
	
	
	
		function cityClick(v) {
			if (cityClickCommon(v)) {
				//执行方法
			}

		}
	/* //加载部门查询class*/
	function initChooseClass(jsOb){
			var str="dep-"+jsOb.name;
			var baseQuery={'type':str};
			$
			.ajax({
				url : "dictionary",
				type : "GET",
				data : baseQuery,
				dataType : "json",
				success : function(d) {
					if (d.success && d.results.length > 0) {
						var str="<li>"+jsOb.value+"</li><li class='text-info'>全部</li>";
						var $ulVar=$("ul[data-type='"+jsOb.name+"']");
						$ulVar.empty();
						console.debug($ulVar);
						$.each(
										d.results,
										function(e, v) {
											var e_str = "";
											e_str += "<li  onclick='addCondition(this)' data-id='"+v.type+"'>"+v.name+"</li>";
											str += e_str;
										});
						$ulVar.append(str);
					}

				}
			});
	}
	
	
	
		function initDepartments(baseQuery){
			var str="";
			$.ajax({
				url:"department",
				type:"GET",
				data:baseQuery,
				dataType:"json",
				success:function(d){
				 	if(d.success){
						
						$("#departments-dev").empty();
						$.each(d.results,function(e,v){
							var e_str="";
							e_str+="<div class='thumbnail'  style='border: none; position: relative; padding-left: 170px; border-bottom: 1px solid #ededed;'>"+
							"<img src="+v.pic+" alt="+v.name+" style='position: absolute; left: 0px; top: 30px; width: 150px; height: 100px;' onclick='show(\"department\",\""+v.id+"\")'>"+
							"<div class='caption'  style='padding-right: 100px;'><h3 class='text-info'  onclick='show(\"department\",\""+v.id+"\")'>"+v.name+"<small class='text-showy'>[区级重点科室]</small>"+
							"</h3><p>医院："+v.hospital.name+"</p><p>地址："+v.hospital.address+"</p><p>电话："+v.phone+"</p>"+
								"<div class='float-right-tips' style='position: absolute; right: 0px; top: 30px;'><p>已预约人数</p><p class='text-showy'>"+v.ghTotal+"</p>"+
									"<p style='float: right;'><a href='#' style='float: right;'>收藏</a></p></div></div></div>";
						str+=e_str;
						});
						$("#departments-dev").append(str);
					} 
				}
			});
		}
		
		
		function initRecDepartments(baseQuery){
		var str="<h3>推荐科室</h3>";
			$.ajax({
				url:"department",
				type:"GET",
				data:baseQuery,
				dataType:"json",
				success:function(d){
					if(d.success ){
						$("#departments-rec-div").empty();
						$.each(d.results,function(e,v){
							var e_str="";
							e_str+="	<div class='thumbnail'  style='border: none; position: relative; padding-left: 60px; border-bottom: 1px solid #ededed; padding-top: 0px;''>"+
									"<img src="+v.pic+" alt="+v.name+"  style='position: absolute; left: 0px; top: 15px; width: 58px; height: 70px;' onclick='show(\"department\",\""+v.id+"\")'>"+
									"<div class='caption'><p class='text-info'  onclick='show(\"department\",\""+v.id+"\")'>"+v.name+"</p>"+
										"<p>已预约人数：<span class='text-showy'>0</span></p>"+
										"<p>医院："+v.hospital.name+"</p></div></div>";
							str+=e_str;
						});
					}
					$("#departments-rec-div").append(str);
				}
			});
		}
	
		$(function() {
			initChooseClass({'name':'type','value':'分类'});
			initChooseClass({'name':'level','value':'级别'});
			
			
			//初始化科室
			initDepartments({"currentPage":1});
			
			//初始化推荐科室
			initRecDepartments({"currentPage":1,"pageSize":5,"orderStr":'comment'});
		});
	</script>
</body>
</html>