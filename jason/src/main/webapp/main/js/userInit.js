jQuery(document).ready(function(){

jQuery.ajax({
	type : "POST",
	url : "/jason/user/getUserByPrincipal",
	dataType : "json",
	success : function(data) {
		//userTip
		if (data.success== "1") {//获取成功了
			dataInit(data);
			jQuery('#userTip').removeClass('alert-success');
			jQuery('#userTip').removeClass('alert-danger');
			jQuery('#userTip').addClass('alert-success');
			jQuery('#userTip').append(
					"<i class='icon-ok green'>"+
					"</i>"+
					"欢迎使用"+
					"<strong class='green'>"+
					"MAP后台管理系统"+
					"</strong>,您可以修改您的信息.");
			
		} 
		else{
			jQuery('#userTip').removeClass('alert-danger');
			jQuery('#userTip').removeClass('alert-success');
			jQuery('#userTip').addClass('alert-danger');
			jQuery('#userTip').append(
					"<i class='icon-ok '>"+
					"</i>"+
					"不好了"+
					"<strong >"+
					"您的网络连接中断了.");
		}
	},
	error : function(data) {
		jQuery('#userTip').removeClass('alert-danger');
		jQuery('#userTip').removeClass('alert-success');
		jQuery('#userTip').addClass('alert-danger');
		jQuery('#userTip').append(
				"<i class='icon-remove'>"+
				"</i>"+
				"不好了"+
				"<strong >"+
				"您的网络连接中断了.");
	}

})// ajax


})


function dataInit(data){
	var src="/jason/tools/cropper/resources/cropper/img/picture.jpg";
	if(data.user.imgSrc==null||data.user.imgSrc==""){
		jQuery(".userImg").attr('src',src);
		jQuery("#topUserImg").attr('src',src);
		
	}
	else{
		jQuery(".userImg").attr('src',data.user.imgSrc);
		jQuery("#topUserImg").attr('src',data.user.imgSrc);
		
	}
	jQuery(".username").append(data.user.userName);
	jQuery(".phone").append(data.user.phone);
	jQuery(".qq").append(data.user.qq);
	jQuery(".createTime").append(data.user.createTime);
	jQuery(".updateTime").append(data.user.updateTime);
	jQuery(".loginTime").append(data.user.loginTime);
	
	jQuery("#phone").val(data.user.phone);
	jQuery("#qq").val(data.user.qq);
	jQuery("#userName").val(data.user.userName);
	
	
	
}
