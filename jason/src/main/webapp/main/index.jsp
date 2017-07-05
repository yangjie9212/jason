<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>夏天</title>
<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文"/>
<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link href="${pageContext.request.contextPath }/tools/sample/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/font-awesome/css/font-awesome.min.css" />

<!-- ace styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/ace-skins.min.css"/>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/ace-extra.min.js"></script>
<!-- jQuery -->
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery-2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath }/main/js/userInit.js"></script>


<!-- 头像裁剪 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/cropper/resources/cropper/css/cropper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/cropper/resources/cropper/css/main.css">
<script src="${pageContext.request.contextPath }/tools/cropper/resources/cropper/js/cropper.min.js"></script>
<script src="${pageContext.request.contextPath }/tools/cropper/resources/cropper/js/uploadUserImg.js"></script>
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
				<li class="active">
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
					<li>
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
					<li class="active">
						<i class="icon-home home-icon">
						</i>
						<a href="${pageContext.request.contextPath }">
							首页
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
						用户信息
						</shiro:hasRole>
						
						
					</h1>
				</div>
				<!-- /.page-header -->
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="alert alert-block alert-success" id="userTip">
							
						</div>
						
						
						<div id="user-profile-2" class="user-profile">
							<div class="tabbable">
								<ul class="nav nav-tabs padding-18">
									<li class="active">
										<a data-toggle="tab" href="#home">
											<i class="green icon-user bigger-120">
											</i>
											详细信息
										</a>
									</li>
									<li>
										<a data-toggle="tab" href="#edit-password">
											<i class="blue  icon-edit bigger-120"></i>
											修改个人信息
										</a>
									</li> 
									
									
								</ul>
								
								
								<div class="tab-content no-border padding-24" >
								
										<div id="home" class="tab-pane in active">
											<div class="row">
												<div class="col-xs-12 col-sm-4 center">
													
													
													<div id="img_setting" class="container">
														<div class="avatar-view" title="修改头像">
															<img class="userImg">
														</div>
														
														
													</div>
													<!--img_setting -->
													
													<div class="space space-4">
													</div>
													
												</div>
												<!-- /span -->
												<div class="col-xs-12 col-sm-8">
													<h4 class="blue">
														<span class="middle username" >
															
														</span>
														<span class="label label-purple arrowed-in-right">
															<i class="icon-circle smaller-80 align-middle">
															</i>
															online
														</span>
													</h4>
													<div class="profile-user-info">
														<div class="profile-info-row">
															<div class="profile-info-name">
																用户名
															</div>
															<div class="profile-info-value ">
																<span class="username">
																	
																</span>
															</div>
														</div>
														
														<div class="profile-info-row">
															<div class="profile-info-name">
																电话
															</div>
															<div class="profile-info-value">
																<i class="icon-mobile-phone light-blue icon-large">
																</i> 
																<span class="phone">
																</span>
															</div>
														</div>
														<div class="profile-info-row">
															<div class="profile-info-name">
																QQ
															</div>
															<div class="profile-info-value">
																
																<span class="qq">
																</span>
															</div>
														</div>
														<div class="profile-info-row">
															<div class="profile-info-name">
																创建时间
															</div>
															<div class="profile-info-value">
																<i class="icon-time light-blue icon-large">
																</i> 
																<span class="createTime">
																</span>
															</div>
														</div>
														<div class="profile-info-row">
															<div class="profile-info-name">
																更新时间
															</div>
															<div class="profile-info-value">
																<i class="icon-time light-orange icon-large">
																</i> 
																<span class="updateTime">
																</span>
															</div>
														</div>
														
														<div class="profile-info-row">
															<div class="profile-info-name">
																最近登录时间
															</div>
															<div class="profile-info-value">
																<i class="icon-time light-green icon-large">
																</i> 
																<span class="loginTime">
																</span>
															</div>
														</div>
														
														
													</div>
													<div class="hr hr-8 dotted">
													</div>
													<div class="profile-user-info">
														<div class="profile-info-row">
															<div class="profile-info-name">
																Website
															</div>
															<div class="profile-info-value">
																<a href="#" target="_blank">
																	www.alexdoe.com
																</a>
															</div>
														</div>
														<div class="profile-info-row">
															<div class="profile-info-name">
																<i class="middle icon-facebook-sign bigger-150 blue">
																</i>
															</div>
															<div class="profile-info-value">
																<a href="#">
																	Find me on Facebook
																</a>
															</div>
														</div>
														<div class="profile-info-row">
															<div class="profile-info-name">
																<i class="middle icon-twitter-sign bigger-150 light-blue">
																</i>
															</div>
															<div class="profile-info-value">
																<a href="#">
																	Follow me on Twitter
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- /span -->
											</div>
											<!-- /row-fluid -->
											<div class="space-20">
											</div>
											
										</div>
										<!-- #home -->
									
										
										<div id="edit-password" class="tab-pane">
											<div class="space-10"></div>
											<form id="updateUserForm"  class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="username">
													<span class="red">*</span>用户名
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="text" id="userName" name="userName" class="width-90" />
													</div>
													<div class="help-block col-sm-4 col-xs-12 col-sm-reset inline"> 											
													</div>
												</div>
	
												<div class="space-4"></div>
												
												
												<div class="form-group">
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="phone">
													电话
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="text" id="phone" name="phone" class="width-90" />
													</div>
													<div class="help-block col-sm-4 col-xs-12 col-sm-reset inline"> 											
													</div>
												</div>
	
												<div class="space-4"></div>
												
												
												<div class="form-group">
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="mail">
													qq
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="text" id="qq" name="qq" class="width-90" />
													</div>
													<div class="help-block col-sm-4 col-xs-12 col-sm-reset inline"> 											
													</div>
												</div>
	
												<div class="space-4"></div>
												
												<div class="form-group">
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="password">
													<span class="red">*</span>密码
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="password" id="password" name="password" class="width-90"/>
													</div>
													<div class="help-block col-xs-12 col-sm-reset inline"> 											
													</div>
												</div>
	
												<div class="space-4"></div>
	
												<div class="form-group" >
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="password2">
													<span class="red">*</span>确认密码
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="password" id="password2" name="password2" class="width-90"/>
													</div>
													<div class="help-block col-sm-4 col-xs-12 col-sm-reset inline" > 											
													</div>
												</div>
												
												
												
											</form>	
											<div class="space-20"></div>
											
											
											<div id="updateUserMsg" class="alert alert-danger alert-dismissable" style="display:none">
													  
											</div>
											
											
											<div class="clearfix form-actions">
													<div class="col-md-offset-5 col-md-7">
														<button class="btn btn-info" type="button" id="updateUserButton">
															<i class="icon-ok bigger-110"></i>
															更新
														</button>
													</div>
											</div>
												
										</div><!-- edit-password -->
										
										
										
										
										<div id="edit-operator" class="tab-pane">
											<div class="space-10"></div>
											<form id="updateOpForm"  class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="name">
													<span class="red">*</span>运营商名称
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="text" id="name" name="name" class="width-90" />
													</div>
													<div class="help-block col-sm-4 col-xs-12 col-sm-reset inline"> 											
													</div>
												</div>
	
												<div class="space-4"></div>
												
												
												<div class="form-group">
													<label class="col-sm-4 col-xs-12 control-label no-padding-right" for="opCode">
													<span class="red">*</span>运营商代码
													</label>
	
													<div class="col-sm-4 col-xs-12">
														<input type="text" id="opCode" name="opCode" class="width-90" />
													</div>
													<div class="help-block col-sm-4 col-xs-12 col-sm-reset inline"> 											
													</div>
												</div>
	
												
												
											</form>	
											
											<div class="space-20"></div>
											<div id="updateOpMsg" class="alert alert-danger alert-dismissable" style="display:none">
													  
											</div>
											
											<div class="clearfix form-actions">
													<div class="col-md-offset-5 col-md-7">
														<button class="btn btn-info" type="button" id="updateOpButton">
															<i class="icon-ok bigger-110"></i>
															更新
														</button>
													</div>
										    </div>
											
										</div><!-- edit-operator -->
										
										
								
								</div><!--tab-content-->
							
								
							</div><!-- tabbable -->
							
						</div><!-- user-profile-2 -->
						
						
						
						
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




<div class="modal fade" id="avatar-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form class="avatar-form" action="/jason/user/uploadHeadImage" enctype="multipart/form-data"
			method="post" accept="image/*">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						&times;
					</button>
					<h4 class="modal-title" id="avatar-modal-label">
						更改头像
					</h4>
				</div>
				<div class="modal-body">
					<div class="avatar-body">
						<!-- avatar_file(源文件),avatar_data(裁剪参数JSON[x,y,w,h]),avatar-src(源文件路径)
						-->
						<div class="avatar-upload">
							<input type="hidden" class="avatar-src" name="avatar_src">
							<input type="hidden" class="avatar-data" name="avatar_data">
							<label for="avatarInput" class="btn btn-primary">
								<i class="icon-folder-open-alt"></i>选择图片
							</label>
							<input type="file" class="avatar-input" id="avatarInput" name="avatar_file"
							style="display: none;" accept="image/*">
						</div>
						<div id="msgDiv">
						</div>
						<!-- Crop and preview -->
						<div class="row">
							<div class="col-md-9">
								<div class="avatar-wrapper">
								</div>
							</div>
							<div class="col-md-3">
								<div class="avatar-preview preview-lg">
								</div>
								<div class="avatar-preview preview-md">
								</div>
								<div class="avatar-preview preview-sm">
								</div>
							</div>
						</div>
						<div class="row avatar-btns" id="avatar-btns" style="display:none">
							<div class="col-md-9">
								<div class="btn-group">
									<button type="button" class="btn btn-primary" data-method="rotate" data-option="90">
										旋转
									</button>
									<button type="button" class="btn btn-primary" data-method="rotate" data-option="15">
										15度
									</button>
									<button type="button" class="btn btn-primary" data-method="rotate" data-option="30">
										30度
									</button>
									<button type="button" class="btn btn-primary" data-method="rotate" data-option="45">
										45度
									</button>
								</div>
							</div>
							<div class="col-md-3">
								<button type="submit" class="btn btn-primary btn-block avatar-save">
									提交
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div> -->
			</form>
		</div>
	</div>
</div>
<!-- /.modal -->

<!-- Loading state -->
<div class="loading" aria-label="Loading" role="img" tabindex="-1">
</div>




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
</div>
				
				

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
<!-- 表单验证 -->
<script src="${pageContext.request.contextPath }/login/js/jquery.validate.min.js">
</script>
<!-- 注销等 -->
<script src="${pageContext.request.contextPath }/main/js/user.js">
</script>
<script src="${pageContext.request.contextPath }/main/js/updateUser.js">
</script>
<script src="${pageContext.request.contextPath }/main/js/updateOp.js">
</script>


</body>	
</html>