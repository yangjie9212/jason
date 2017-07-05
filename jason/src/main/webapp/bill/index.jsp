<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>夏天</title>

<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文"/>
<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/favicon.ico" />

<link href="${pageContext.request.contextPath }/tools/sample/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/font-awesome/css/font-awesome.min.css" />

<!-- ace styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace-skins.min.css"/>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace-extra.min.js"></script>
<!-- jQuery -->
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery-2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath }/main/js/userInit.js"></script>
<!-- 日历 -->
<link href="${pageContext.request.contextPath }/tools/datePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
		
<script src="${pageContext.request.contextPath }/bill/js/echarts.common.min.js"></script>


</head>


<body>
	<div class="navbar navbar-default" id="navbar">
		<!-- <script type="text/javascript">
	try{ace.settings.check('navbar' , 'fixed')}catch(e){}
	</script> -->
	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="${pageContext.request.contextPath }" class="navbar-brand">
				<small>
					<i class="icon-leaf">
					</i>
					夏天
				</small>
			</a>
			<!-- /.brand -->
		</div>
		<!-- /.navbar-header -->
		<div class="navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="light-blue">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle">
						<img class="nav-user-photo" id="topUserImg" />
						<shiro:hasRole name="管理员">
							<span class="user-info">
								<small>
									管理员
								</small>
								<span class="username"></span>
							</span>
						</shiro:hasRole>
						<shiro:hasRole name="用户">
							<span class="user-info">
								<small>
									用户
								</small>
								<span class="username"></span>
							</span>
						</shiro:hasRole>
						<i class="icon-caret-down">
						</i>
					</a>
					<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li>
							<a href="#" id="logout_menue">
								<i class="icon-off">
								</i>
								退出
							</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- /.ace-nav -->
		</div>
		<!-- /.navbar-header -->
	</div>
	<!-- /.container -->
</div>
<!-- 左侧导航-->
<div class="main-container" id="main-container">
	<!-- <script type="text/javascript">
	try{ace.settings.check('main-container' , 'fixed')}catch(e){}
	</script> -->
	<div class="main-container-inner">
		<a class="menu-toggler" id="menu-toggler" href="#">
			<span class="menu-text">
			</span>
		</a>
		<div class="sidebar" id="sidebar">
			<!-- <script type="text/javascript">
			try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
			</script> -->
			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="icon-signal">
						</i>
					</button>
					<button class="btn btn-info">
						<i class="icon-pencil">
						</i>
					</button>
					<button class="btn btn-warning">
						<i class="icon-group">
						</i>
					</button>
					<button class="btn btn-danger">
						<i class="icon-cogs">
						</i>
					</button>
				</div>
				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success">
					</span>
					<span class="btn btn-info">
					</span>
					<span class="btn btn-warning">
					</span>
					<span class="btn btn-danger">
					</span>
				</div>
			</div>
			<!-- #sidebar-shortcuts -->
			<ul class="nav nav-list">
				<li >
					<a href="${pageContext.request.contextPath }">
						<i class="icon-home home-icon">
						</i>
						<span class="menu-text">
							首页
						</span>
					</a>
				</li>
				
				
				<shiro:hasRole name="管理员">
					<li>
						<a href="${pageContext.request.contextPath }/user/list">
							<i class="icon-user-md">
							</i>
							<span class="menu-text">
								用户管理
							</span>
						</a>
					</li>
					
				</shiro:hasRole>
				
				<shiro:hasRole name="用户">
					<li class="active">
						<a href="${pageContext.request.contextPath }/bill/index">
							<i class="icon-credit-card">
							</i>
							<span class="menu-text">
								账单管理
							</span>
						</a>
					</li>
					
				</shiro:hasRole>
				
				
			</ul>
			<!-- /.nav-list -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
				data-icon2="icon-double-angle-right">
				</i>
			</div>
			<script type="text/javascript">
				try {
			    ace.settings.check('sidebar', 'collapsed')
			} catch (e) {}
			</script>
		</div>
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
					    ace.settings.check('breadcrumbs', 'fixed')
					} 
					catch (e) {}
				</script>
				<ul class="breadcrumb">
					<li >
						<i class="icon-home home-icon">
						</i>
						<a href="${pageContext.request.contextPath }">
							首页
						</a>
					</li>
					<li class="active">
						<i class="icon-credit-card">
						</i>
						<a href="${pageContext.request.contextPath }">
							账单管理
						</a>
					</li>
				</ul>
				
			</div>
			<div class="page-content">
				<div class="page-header">
					<h1>
						<shiro:hasRole name="管理员">
						管理员信息
						</shiro:hasRole>
						<shiro:hasRole name="用户">
						账单管理
						</shiro:hasRole>
						
						
					</h1>
				</div>
				<!-- /.page-header -->
				<div class="row">
					<div class="col-xs-12" style="padding-bottom:20px;">
						<!-- PAGE CONTENT BEGINS -->
						
								<div class="widget-box ">
											<div class="widget-header">
												<h4 class="lighter smaller">
													<i class="icon-comment blue"></i>
													账单
												</h4>
											</div><!--widget-header  -->
								
											
											<div class="">
												<div class=" no-padding" >
												 
												  <div class="row">
												  		<div class="col-md-1 col-sm-1">
												  		
												 		 </div>
												 		 <div class="col-md-10 col-sm-10">
												  				
												  				<div class="">
														 
																	 <div class="row" style="padding-bottom:30px;padding-top:20px;">
																	 
																		 <div class="col-xs-12 col-md-2 col-sm-2"> 
																		 		
																		 		<button class="btn btn-sm btn-primary " id="toAddBill" type="button">
																						<i class="icon-plus icon-large"></i>
																						记一笔
																				</button>
																		 	
																		 </div>
																		 <div class="col-xs-12 col-md-2 col-sm-2"> 
																		 </div>
																		 
																		 <div class="col-xs-12 col-md-2 col-sm-2"> 
																		 		<label  class="control-label no-padding-right">
																				选择月份
																				</label>
																		 </div>
																		 <div class="col-xs-12 col-md-2 col-sm-2"> 
																		 		<span class="block input-icon input-icon-right">
																							<input type="text" name="select_month" id="select_month"  readonly class="width-100 select_month" />
																							<i class=" icon-calendar" style="color:#8b6fdf;"></i> 
																				</span>
																		 </div>
																		 
																		 <div class="col-xs-12 col-md-1 col-sm-1"> 
																		 </div>
																		 
																		 <div class="col-xs-12 col-md-1 col-sm-1"> 
																		 		<label  class="control-label no-padding-right">
																				选择人
																				</label>
																		 </div>
																		 <div class="col-xs-12 col-md-2 col-sm-2"> 
																		 		<select class="form-control" id="userSelect" name="userSelect">
																							<option value="all">全部</option>
																							<option value="my">我的</option>
																							<option value="ta">TA</option>
																				</select>
																		 </div>
																	 
																	 
																	</div><!-- row -->
																
																	<div class="row">
																			<div id="billChartsDiv" style="width:100%;">
					
																			</div>
																	</div>
																	
																	
																	<div class="row" id="billList">
																			
																			
																	
																	</div> <!--row billList -->
																	
																	
																
																
																</div><!--dialogs  -->
												  				
												  				
												 		 </div><!-- col-md-8 col-sm-8 -->
												  </div><!-- row -->
												
													
												</div><!-- widget-main -->	
											</div><!-- widget-body -->
														
											
								</div><!-- widget-box -->
								
						
						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->
		<div class="ace-settings-container" id="ace-settings-container">
			<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
				<i class="icon-cog bigger-150">
				</i>
			</div>
			<div class="ace-settings-box" id="ace-settings-box">
				<div>
					<div class="pull-left">
						<select id="skin-colorpicker" class="hide">
							<option data-skin="default" value="#438EB9">
								#438EB9
							</option>
							<option data-skin="skin-1" value="#222A2D">
								#222A2D
							</option>
							<option data-skin="skin-2" value="#C6487E">
								#C6487E
							</option>
							<option data-skin="skin-3" value="#D0D0D0">
								#D0D0D0
							</option>
						</select>
					</div>
					<span>
						&nbsp; Choose Skin
					</span>
				</div>
				<div>
					<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar"
					/>
					<label class="lbl" for="ace-settings-navbar">
						Fixed Navbar
					</label>
				</div>
				<div>
					<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar"
					/>
					<label class="lbl" for="ace-settings-sidebar">
						Fixed Sidebar
					</label>
				</div>
				<div>
					<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"
					/>
					<label class="lbl" for="ace-settings-breadcrumbs">
						Fixed Breadcrumbs
					</label>
				</div>
				<div>
					<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"
					/>
					<label class="lbl" for="ace-settings-rtl">
						Right To Left (rtl)
					</label>
				</div>
				<div>
					<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container"
					/>
					<label class="lbl" for="ace-settings-add-container">
						Inside
						<b>
							.container
						</b>
					</label>
				</div>
			</div>
		</div>
		<!-- /#ace-settings-container -->
	</div>
	<!-- /.main-container-inner -->
	<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
		<i class="icon-double-angle-up icon-only bigger-110">
		</i>
	</a>
</div>
<!-- /.main-container -->


<div class="modal fade" id="addBillModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	
            	<div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3 class="lighter block green">添加记录</h3>

                </div>
                <div class="modal-body">
                	<form id="addBillForm"  class="form-horizontal" role="form">
	                	<div class="row">
	                				
									
									<div class="form-group">
											<label  class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">
											时间
											</label>

											<div class="col-xs-12 col-sm-6">
													<span class="block input-icon input-icon-right">
															<input type="text" name="time" id="time"  readonly class="width-100 form_date" />
															<i class=" icon-calendar" style="color:#8b6fdf;"></i> 
													</span>
											</div>
											<div class="help-block col-xs-12 col-sm-reset inline"> 
											
											</div>
									</div>
									
									
									<div class="form-group">
											<label  class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">
											类型
											</label>

											<div class="col-xs-12 col-sm-6">
													<select class="form-control" id="type" name="type">
																<option value="支出">支出</option>
																<option value="收入">收入</option>
													</select>
											</div>
											
									</div>
									
									
									
									<div class="form-group">
											<label  class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">
											用途
											</label>

											<div class="col-xs-12 col-sm-6">
													<select class="form-control" id="purpose" name="purpose">
																<option value="餐饮">餐饮</option>
																<option value="交通">交通</option>
																<option value="购物">购物</option>
																<option value="通讯">通讯</option>
																<option value="住房">住房</option>
																<option value="公共">公共</option>
																<option value="彩票">彩票</option>
																<option value="还钱">还钱</option>
																<option value="娱乐">娱乐</option>
																<option value="旅行">旅行</option>
																<option value="医疗">医疗</option>
																<option value="红包">红包</option>
																<option value="其他">其他</option>
													</select>
											</div>
											
									</div>
									
									
									
									<div class="form-group">
											<label  class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">
											金额
											</label>

											<div class="col-xs-12 col-sm-6">
													<span class="block input-icon input-icon-right">
															<input type="text" id="amount" name="amount" class="width-100" />
															<i class="icon-money" style="color:#ea947c;"></i>
													</span>
											</div>
											<div class="help-block col-xs-12 col-sm-reset inline"> 
											
											</div>
									</div>
									
									
									
									<div class="form-group">
											<label  class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">
											备注
											</label>

											<div class="col-xs-12 col-sm-6">
													<span class="block input-icon input-icon-right">
															<input type="text" id="remark" name="remark" class="width-100" />
															
													</span>
											</div>
											<div class="help-block col-xs-12 col-sm-reset inline"> 
											
											</div>
									</div>
									
									
									
	                		
	                	</div><!-- row -->
                	</form>
                
                </div>
            	<div class="modal-footer" >
	           		<div id="addBillMsgWarning" style="color:red;float:left;display:none;"></div> 
	            	<div  id="addBillMsgSuccess" style="color:#337AB7;float:left;display:none"></div> 
	            	<button type="button" class="btn btn-default"
		               data-dismiss="modal">关闭
		            </button>
		            <button type="button" id="addBill" class="btn btn-primary ">
									新增
					</button>
	            </div> 
	           
            
        </div>
    </div>
</div> <!-- addBill -->


<!-- 退出弹出层 -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
aria-hidden="true">
	<div class="modal-dialog" id="logoutModal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					×
				</button>
				<h4 class="modal-title text-center" style="color:red;">
					提示
				</h4>
			</div>
			<div class="modal-body">
				<h4>
					确定退出吗？
				</h4>
			</div>
			<!--body -->
			<div class="modal-footer">
				<div id="logoutMsgWarning" style="color:red;float:left;display:none;">
				</div>
				<div id="logoutMsgSuccess" style="color:#337AB7;float:left;display:none">
				</div>
				<button type="button" class="btn btn-default" data-dismiss="modal">
					关闭
				</button>
				<button type="button" class="btn btn-primary" id="logout">
					确定
				</button>
			</div>
		</div>
	</div>
</div><!-- logout -->
				

<!--del弹出层 -->
<div class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
aria-hidden="true">
	<div class="modal-dialog" id="logoutModal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					×
				</button>
				<h4 class="modal-title text-center" style="color:red;">
					提示
				</h4>
			</div>
			<div class="modal-body">
				<h4>
					确定删除该条记录吗？
				</h4>
			</div>
			<input type="text" id="delBillID" style="display:none;"/>
			
			<!--body -->
			<div class="modal-footer">
				<div id="delBillMsgWarning" style="color:red;float:left;display:none;">
				</div>
				<div id="delBillMsgSuccess" style="color:#337AB7;float:left;display:none">
				</div>
				<button type="button" class="btn btn-default" data-dismiss="modal">
					关闭
				</button>
				<button type="button" class="btn btn-primary" id="confirmDel" onclick="confirmDel()">
					确定
				</button>
			</div>
		</div>
	</div>
</div><!-- delModal -->

				

<script type="text/javascript">
	if ("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }/tools/sample/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/bootstrap.min.js">
</script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/typeahead-bs2.min.js">
</script>
<!-- ace -->
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace-elements.min.js">
</script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace.min.js">
</script>



<!-- 滚动条插件 -->		
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery.slimscroll.min.js"></script>



<script type="text/javascript" src="${pageContext.request.contextPath }/tools/datePicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/tools/datePicker/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript">
jQuery(document).ready(function(){
	
	
	jQuery('.form_date').datetimepicker({
		useCurrent: true,
        inline: true,
		format: 'yyyy-MM-dd',  
    	language: 'zh-CN',
        autoclose: true,
        todayHighlight: true,
    	weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0 ,
		
    }); 
    
	jQuery('.select_month').datetimepicker({
        language:  'zh-CN',
        format: 'yyyy-mm',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 3, //这里就设置了默认视图为年视图
        minView: 3, //设置最小视图为年视图
        forceParse: 0,
    });
	 
	jQuery('.dialogs,.comments').slimScroll({
		height: '500px'
    });
    
	
    
})


</script>
<!-- 表单验证 -->
<script src="${pageContext.request.contextPath }/login/js/jquery.validate.min.js"></script>

<!-- 对bill list操作 -->
<script src="${pageContext.request.contextPath }/bill/js/list.js"></script>
<!-- 注销等 -->
<script src="${pageContext.request.contextPath }/main/js/user.js"></script>

</body>	
</html>