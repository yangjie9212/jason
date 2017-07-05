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
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/sample/assets/css/fullcalendar.css" />

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
						
								<div class="row">
									<div class="col-sm-9">
										<div class="space"></div>

										<div id="calendar"></div>
									</div>

									<div class="col-sm-3">
										<div class="widget-box transparent">
											<div class="widget-header">
												<h4>Draggable events</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													<div id="external-events">
														<div class="external-event label-grey" data-class="label-grey">
															<i class="icon-move"></i>
															My Event 1
														</div>

														<div class="external-event label-success" data-class="label-success">
															<i class="icon-move"></i>
															My Event 2
														</div>

														<div class="external-event label-danger" data-class="label-danger">
															<i class="icon-move"></i>
															My Event 3
														</div>

														<div class="external-event label-purple" data-class="label-purple">
															<i class="icon-move"></i>
															My Event 4
														</div>

														<div class="external-event label-yellow" data-class="label-yellow">
															<i class="icon-move"></i>
															My Event 5
														</div>

														<div class="external-event label-pink" data-class="label-pink">
															<i class="icon-move"></i>
															My Event 6
														</div>

														<div class="external-event label-info" data-class="label-info">
															<i class="icon-move"></i>
															My Event 7
														</div>

														<label>
															<input type="checkbox" class="ace ace-checkbox" id="drop-remove" />
															<span class="lbl"> Remove after drop</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
						
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
																<option value="娱乐">娱乐</option>
																<option value="公共">公共</option>
																<option value="购物">购物</option>
																<option value="通讯">通讯</option>
																<option value="住房">住房</option>
																<option value="旅行">旅行</option>
																<option value="医疗">医疗</option>
																<option value="红包">红包</option>
																<option value="旅行">旅行</option>
																<option value="彩票">彩票</option>
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

<!-- 表单验证 -->
<script src="${pageContext.request.contextPath }/login/js/jquery.validate.min.js"></script>

<!-- 注销等 -->
<script src="${pageContext.request.contextPath }/main/js/user.js"></script>

<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${pageContext.request.contextPath }/tools/sample/assets/js/jquery.ui.touch-punch.min.js"></script>

<script src="${pageContext.request.contextPath }/tools/sample/assets/js/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath }/tools/sample/assets/js/bootbox.min.js"></script>

<script type="text/javascript">
$('#calendar').fullCalendar({
    buttonText: {
        today: '今天',
        month: '月视图',
        week: '周视图',
        day: '日视图'
    },
    allDayText: "全天",
    timeFormat: {
        '': 'H:mm{-H:mm}'
    },
    weekMode: "variable",
    columnFormat: {
        month: 'dddd',
        week: 'dddd M-d',
        day: 'dddd M-d'
    },
    titleFormat: {
        month: 'yyyy年 MMMM月',
        week: "[yyyy年] MMMM月d日 { '&#8212;' [yyyy年] MMMM月d日}",
        day: 'yyyy年 MMMM月d日 dddd'
    },
    monthNames: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
    dayNames: ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
    header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
    },
    eventClick: function (date, allDay, jsEvent, view) {
        //...
    },
    events: function (start, end, callback) {
        //...
    }
});
</script>

<!-- 
<script type="text/javascript">



			jQuery(function($) {

/* initialize the external events
	-----------------------------------------------------------------*/

	$('#external-events div.external-event').each(function() {

		// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
		// it doesn't need to have a start or end
		var eventObject = {
			title: $.trim($(this).text()) // use the element's text as the event title
		};

		// store the Event Object in the DOM element so we can get to it later
		$(this).data('eventObject', eventObject);

		// make the event draggable using jQuery UI
		$(this).draggable({
			zIndex: 999,
			revert: true,      // will cause the event to go back to its
			revertDuration: 0  //  original position after the drag
		});
		
	});




	/* initialize the calendar
	-----------------------------------------------------------------*/

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();

	
	var calendar = $('#calendar').fullCalendar({
		 buttonText: {
			prev: '<i class="icon-chevron-left"></i>',
			next: '<i class="icon-chevron-right"></i>'
		},
	
		header: {
			/*left: 'prev,next today',
			center: 'title',
			 right: 'month,agendaWeek,agendaDay' */
		},
		events: [
		{
			title: 'All Day Event',
			start: new Date(y, m, 1),
			className: 'label-important'
		},
		{
			title: 'Long Event',
			start: new Date(y, m, d-5),
			end: new Date(y, m, d-2),
			className: 'label-success'
		},
		{
			title: 'Some Event',
			start: new Date(y, m, d-3, 16, 0),
			allDay: false
		}]
		,
		editable: true,
		droppable: true, // this allows things to be dropped onto the calendar !!!
		drop: function(date, allDay) { // this function is called when something is dropped
		
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject');
			var $extraEventClass = $(this).attr('data-class');
			
			
			// we need to copy it, so that multiple events don't have a reference to the same object
			var copiedEventObject = $.extend({}, originalEventObject);
			
			// assign it the date that was reported
			copiedEventObject.start = date;
			copiedEventObject.allDay = allDay;
			if($extraEventClass) copiedEventObject['className'] = [$extraEventClass];
			
			// render the event on the calendar
			// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
			$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
			
			// is the "remove after drop" checkbox checked?
			if ($('#drop-remove').is(':checked')) {
				// if so, remove the element from the "Draggable Events" list
				$(this).remove();
			}
			
		}
		,
		selectable: true,
		selectHelper: true,
		select: function(start, end, allDay) {
			
			bootbox.prompt("New Event Title:", function(title) {
				if (title !== null) {
					calendar.fullCalendar('renderEvent',
						{
							title: title,
							start: start,
							end: end,
							allDay: allDay
						},
						true // make the event "stick"
					);
				}
			});
			

			calendar.fullCalendar('unselect');
			
		}
		,
		eventClick: function(calEvent, jsEvent, view) {

			var form = $("<form class='form-inline'><label>Change event name &nbsp;</label></form>");
			form.append("<input class='middle' autocomplete=off type=text value='" + calEvent.title + "' /> ");
			form.append("<button type='submit' class='btn btn-sm btn-success'><i class='icon-ok'></i> Save</button>");
			
			var div = bootbox.dialog({
				message: form,
			
				buttons: {
					"delete" : {
						"label" : "<i class='icon-trash'></i> Delete Event",
						"className" : "btn-sm btn-danger",
						"callback": function() {
							calendar.fullCalendar('removeEvents' , function(ev){
								return (ev._id == calEvent._id);
							})
						}
					} ,
					"close" : {
						"label" : "<i class='icon-remove'></i> Close",
						"className" : "btn-sm"
					} 
				}

			});
			
			form.on('submit', function(){
				calEvent.title = form.find("input[type=text]").val();
				calendar.fullCalendar('updateEvent', calEvent);
				div.modal("hide");
				return false;
			});
			
		}
		
	});


})
		</script> -->

</body>	
</html>