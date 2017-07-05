<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>MAP后台管理系统-运营商管理</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${pageContext.request.contextPath }/tools/sample/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/font-awesome.min.css" />

 		<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/google_fonts.css" />
 		
 
		<!-- ace styles -->

		<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace-skins.min.css" />

		

		<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace-extra.min.js"></script>

		<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.css">
		
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							Ace Admin
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-ok"></i>
									4 Tasks to complete
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Software Update</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:65%" class="progress-bar "></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										See tasks with details
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>
									8 Notifications
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												New Comments
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary icon-user"></i>
										Bob just signed up as an editor ...
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												New Orders
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												Followers
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										See all notifications
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-envelope-alt"></i>
									5 Messages
								</li>

								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath }/tools/sample/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Alex:</span>
												Ciao sociis natoque penatibus et auctor ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>a moment ago</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath }/tools/sample/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Susan:</span>
												Vestibulum id ligula porta felis euismod ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>20 minutes ago</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath }/tools/sample/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Bob:</span>
												Nullam quis risus eget urna mollis ornare ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>3:15 pm</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="inbox.html">
										See all messages
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${pageContext.request.contextPath }/tools/sample/assets/avatars/user.jpg" alt="Jason's Photo" />
								
								
								<shiro:hasRole name="管理员">  
								  <span class="user-info">
									<small>管理员,</small>
									<shiro:principal/>
								</span>
								</shiro:hasRole>
								
								<shiro:hasRole name="普通用户">  
								  <span class="user-info">
									<small>普通用户,</small>
									<shiro:principal/>
								</span>
								</shiro:hasRole>
								
								
								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#" id="logout_menue">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>


		<!--  左侧导航-->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						
						
						<li class="active">
							<a href="/ShiroLearn1/user/adminManage">
								<i class="icon-dashboard"></i>
								<span class="menu-text">运营商管理 </span>
							</a>
						</li>

						<li>
							<a href="typography.html">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 文字排版 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> UI 组件 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="elements.html">
										<i class="icon-double-angle-right"></i>
										组件
									</a>
								</li>

								<li>
									<a href="buttons.html">
										<i class="icon-double-angle-right"></i>
										按钮 &amp; 图表
									</a>
								</li>

								<li>
									<a href="treeview.html">
										<i class="icon-double-angle-right"></i>
										树菜单
									</a>
								</li>

								<li>
									<a href="jquery-ui.html">
										<i class="icon-double-angle-right"></i>
										jQuery UI
									</a>
								</li>

								<li>
									<a href="nestable-list.html">
										<i class="icon-double-angle-right"></i>
										可拖拽列表
									</a>
								</li>

								<li>
									<a href="#" class="dropdown-toggle">
										<i class="icon-double-angle-right"></i>

										三级菜单
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="#">
												<i class="icon-leaf"></i>
												第一级
											</a>
										</li>

										<li>
											<a href="#" class="dropdown-toggle">
												<i class="icon-pencil"></i>

												第四级
												<b class="arrow icon-angle-down"></b>
											</a>

											<ul class="submenu">
												<li>
													<a href="#">
														<i class="icon-plus"></i>
														添加产品
													</a>
												</li>

												<li>
													<a href="#">
														<i class="icon-eye-open"></i>
														查看商品
													</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 表格 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="tables.html">
										<i class="icon-double-angle-right"></i>
										简单 &amp; 动态
									</a>
								</li>

								<li>
									<a href="jqgrid.html">
										<i class="icon-double-angle-right"></i>
										jqGrid plugin
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> 表单 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="form-elements.html">
										<i class="icon-double-angle-right"></i>
										表单组件
									</a>
								</li>

								<li>
									<a href="form-wizard.html">
										<i class="icon-double-angle-right"></i>
										向导提示 &amp; 验证
									</a>
								</li>

								<li>
									<a href="wysiwyg.html">
										<i class="icon-double-angle-right"></i>
										编辑器
									</a>
								</li>

								<li>
									<a href="dropzone.html">
										<i class="icon-double-angle-right"></i>
										文件上传
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="widgets.html">
								<i class="icon-list-alt"></i>
								<span class="menu-text"> 插件 </span>
							</a>
						</li>

						<li>
							<a href="calendar.html">
								<i class="icon-calendar"></i>

								<span class="menu-text">
									日历
									<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
							</a>
						</li>

						<li>
							<a href="gallery.html">
								<i class="icon-picture"></i>
								<span class="menu-text"> 相册 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i>
								<span class="menu-text"> 更多页面 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="profile.html">
										<i class="icon-double-angle-right"></i>
										用户信息
									</a>
								</li>

								<li>
									<a href="inbox.html">
										<i class="icon-double-angle-right"></i>
										收件箱
									</a>
								</li>

								<li>
									<a href="pricing.html">
										<i class="icon-double-angle-right"></i>
										售价单
									</a>
								</li>

								<li>
									<a href="invoice.html">
										<i class="icon-double-angle-right"></i>
										购物车
									</a>
								</li>

								<li>
									<a href="timeline.html">
										<i class="icon-double-angle-right"></i>
										时间轴
									</a>
								</li>

								<li>
									<a href="login.html">
										<i class="icon-double-angle-right"></i>
										登录 &amp; 注册
									</a>
								</li>
							</ul>
						</li>

						<li >
							<a href="#" class="dropdown-toggle">
								<i class="icon-file-alt"></i>

								<span class="menu-text">
									其他页面
									<span class="badge badge-primary ">5</span>
								</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="faq.html">
										<i class="icon-double-angle-right"></i>
										帮助
									</a>
								</li>

								<li>
									<a href="error-404.html">
										<i class="icon-double-angle-right"></i>
										404错误页面
									</a>
								</li>

								<li>
									<a href="error-500.html">
										<i class="icon-double-angle-right"></i>
										500错误页面
									</a>
								</li>

								<li>
									<a href="grid.html">
										<i class="icon-double-angle-right"></i>
										网格
									</a>
								</li>

								<li class="active">
									<a href="blank.html">
										<i class="icon-double-angle-right"></i>
										空白页面
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">Other Pages</a>
							</li>
							<li class="active">Blank Page</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
									<h3 class="header smaller lighter blue">jQuery dataTables</h3>
										<div class="table-header">
											Results for "Latest Registered Domains"
										</div>
									<div class="table-responsive">
											<table id="test_table" class="table table-striped table-bordered table-hover">
												
												
												 <thead>
												 	
													 <tr>
													 	<th class="center">
															<label>
																<input type="checkbox" class="ace" id="selectAll"/>
																<span class="lbl"></span>
															</label>
														</th>
														<th>用户编号</th>
														<th>用户名</th>
														<th>运营商登录名称</th>
														<th>创建时间</th>
														<th>最近登录时间</th>
														<th>最近登录IP</th>
														<th>最近登录城市</th>
															
														<th>操作</th>
													</tr> 
													
												</thead> 


															
											</table>
									
									
									</div>
											

													
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col-xs-12 -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->




<!-- 退出弹出层 -->		
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" id="logoutModal-dialog" >
        <div class="modal-content">
        	<div class="modal-header" >
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title text-center"  style="color:red;">提示</h4>
                </div>
                <div class="modal-body">
                	<h4>确定退出吗？</h4>
                </div><!--body  -->
            	
            	<div class="modal-footer">
            		<div id="logoutMsgWarning" style="color:red;float:left;display:none;"></div> 
	            	<div  id="logoutMsgSuccess" style="color:#337AB7;float:left;display:none"></div> 
		            <button type="button" class="btn btn-default"
		               data-dismiss="modal">关闭
		            </button>
		            <button type="button" class="btn btn-primary" id="logout">
		              		 确定
		            </button>
		         </div>
        </div>
    </div>
</div>




<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	
            	<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3 style="color:red">提示</h3>
                </div>
                <div class="modal-body">
                	<p >
                	你确认删除您所选的
                	<span id="delNum" class="label label-danger"></span>
                	条数据吗？
                   
                    <p>
                
                </div>
            	<div class="modal-footer">
            		<div id="delMsgWarning" style="color:red;float:left;display:none"></div> 
	            	<div  id="delMsgSuccess" style="color:#337AB7;float:left;display:none"></div> 
	            	
		            <button type="button" class="btn btn-default"
		               data-dismiss="modal">关闭
		            </button>
		            <button type="button" class="btn btn-primary " id="confirmDelID" onclick="comfirmDel()">
		              		
		              		 确定
		            </button>
		         </div>
	           
            
        </div>
    </div>
</div> <!-- delModal -->

		
<!-- 
<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath }/tools/sample/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script> -->

<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery-2.0.3.min.js">
</script>
<script type="text/javascript">
		if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }/tools/sample/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/typeahead-bs2.min.js"></script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace.min.js"></script>
<script src="${pageContext.request.contextPath }/main/js/user.js"></script>


 <script type="text/javascript" language="javascript" src="http://cdn.datatables.net/1.10-dev/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.js"></script>

<%-- 
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery.dataTables.bootstrap.js"></script>
 --%>



<script type="text/javascript">
/* $("div.toolbar").html('<b style="color:red">自定义文字、图片等等</b>'); */
jQuery(document).ready(function() {
	var oTable1 = jQuery('#test_table').dataTable( {
					"aoColumnDefs": [{ "bSortable": false, "aTargets": [0]}],
					"aaSorting": [[1, "desc"]],
					"oLanguage": {//语言设置  
                    "sLengthMenu": "每页显示 _MENU_ 条记录",   
                    "sSearch": "搜索",
                    "sZeroRecords": "没有检索到数据",     
                    "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",     
                    "sInfoEmtpy": "没有数据",     
                    "sProcessing": '<i class="fa fa-coffee"></i> 正在加载数据...',    
                    "dom": '<"toolbar">frtip',
                    "oPaginate": {     
                        "sFirst": "首页",     
                        "sPrevious": "前一页",     
                        "sNext": "后一页",     
                        "sLast": "尾页"    
                  }
				},
				"aLengthMenu": [5, 10, 15,20, -1],//也可以直接用一维数组设置数量
                 "ajax": '/ShiroLearn1/user/userList',
                 "columns": [	
								{
									data:   null,
					                render: function ( data, type, row ) {
					                    if ( type === 'display' ) {
					                        return '<label><input type="checkbox" class="ace" /><span class="lbl"></span></label> ';
					                    
					                    }
					                    return data;
					                },
					                className: "center"
					            },
					            
 								{ "data": "userID",className: "center" },
                  	            { "data": "userName",className: "center" },
                  	            { "data": "operatorName",className: "center" },
                  	            { "data": "createTime",className: "center" },
                	            { "data": "lastLoginTime",className: "center" },
                	            { "data": "lastLoginIP",className: "center" },
                	            { "data": "lastLoginCity",className: "center" },
                 	          
                 	            {
									data:   null,
					                render: function ( data, type, row ) {
					                    if ( type === 'display' ) {
					                        return '<a class="btn btn-danger btn-sm" onClick="delItem()"><i class="icon-trash bigger-120"></i></a>';
					                    }
					                    return data;
					                },
					                className: "center"
					            },
                 	            
                 	        ]
             	,
                 
             	/*  "dom": "<'row'<'col-xs-3'l><'#addButton.col-xs-4'><'col-xs-4'f>r>" +
                "t" +
                "<'row'<'col-xs-6'i><'col-xs-6'p>>",  */
                "dom": "<'row'<'col-xs-3'l><'#addButtonDiv.col-xs-1'><'#delButtonDiv.col-xs-1'><'#updateButtonDiv.col-xs-1'>>" , 
    
    initComplete: function () {
        $("#addButtonDiv").append('<button type="button" id="addButton"  class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">添加</button>');
        $("#delButtonDiv").append('<button type="button" id="delButton" style="display:none;" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal">删除</button>');
        $("#updateButtonDiv").append('<button type="button" id="updateButton" style="display:none;" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal">编辑</button>');
        
        //$("#datainit").on("click", initData);
    }
             	
				});
				 
	
				$('#test_table th input:checkbox').on('click' , function(){
					var that = this;
					//that是指全选按钮
					
					$(this).closest('table').find('tr > td:first-child input:checkbox')
						.each(function(){
							this.checked = that.checked;
							if(this.checked==true){
								$(this).closest('tr').addClass('danger');
							}
							else{
								$(this).closest('tr').removeClass('danger');
								
							}
					
							
					});
					
					
						
				});
				
				//监听选中变换
				$('#test_table  ').on( 'click', 'input:checkbox', function () {
					var num=0;
					$('#test_table').find('tr > td:first-child input:checkbox')
					.each(function(){
						if(this.checked==true){
							num++;
						}
					})
					if(num>0){
						jQuery("#delButton").show();
						jQuery("#updateButton").show();
					}
					else{
						jQuery("#delButton").hide();
						jQuery("#updateButton").hide();
					}
					
					
				})
				
				 	$('#test_table tbody ').on( 'click', 'input:checkbox', function () {
				 		
					 var isChecked=jQuery(this).is(':checked');
					 if(isChecked==true){//点击选中
						 $(this).parent().parent().parent().addClass('danger'); 
					 }
					 else{//再次点击，去掉选中
						 $(this).parent().parent().parent().removeClass('danger'); 
						 jQuery('#test_table th input:checkbox').prop("checked", false);
					 }
					 var table = jQuery("#test_table").DataTable();
					 var that=$(this).parent().parent().parent();
					 //alert(table.row(that).data().toString());
					 //alert('所选主键：'+table.row(that).data().userID); 
			    } );
			  
			/* 
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				} 
				 */
				
				
				/* jQuery("#delItem").click(function(){ */
				/* $('#delItem').on('click' , function(){	
					alert("a");
				}) */
				
				/* 
				
				 */
			}) 
			
			
			function delItem(){
				jQuery("#deleteModal").modal("toggle");
				jQuery("#delNum").html("");
				var leng = jQuery("#test_table").find('td').find(':checkbox:checked').length;
				jQuery("#delNum").append(leng);
			}
			
			
			function comfirmDel(){
				var table = jQuery("#test_table").DataTable();
				alert( table.rows('.selected').data().length +' row(s) selected' );
				/* var nTrs = table.fnGetNodes();//fnGetNodes获取表格所有行，nTrs[i]表示第i行tr对象  
			       for(var i = 0; i < nTrs.length; i++){  
			           if($(nTrs[i]).hasClass('selected')){  
			                alert('[获取数据]' + table.fnGetData(nTrs[i]));//fnGetData获取一行的数据  
			           }  
			       }  
			 */
			
			} 	
			
			/* function delItem(pID){
					alert("pID"+pID);
				
				jQuery.ajax({  
			        type:"POST",  
			        url:"/ShiroLearn1/user/delUserRole",  
			        dataType: "json",  
			        data:{pID:pID},
			        success: function(data){
			        	alert(data);
			       
			        	if(data =="1"){
			        		jQuery("#test_table").DataTable().ajax.reload(); 
			        	}
			        	else{
			        		
			        	}
			        	
			        },
			        error: function(data){ 
			        	alert("c");
			        
			        	return false;
			        	
			        }
				});//ajax
				
				
			}
				 */
				
			 	function test(obj){
					$(obj).closest('tr').toggleClass('danger');
							
				} 
		</script>

	
	</body>
</html>
