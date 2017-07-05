jQuery(document).ready(function(){
	var loginValidator;
	loginValidator=jQuery("#loginForm").validate({
		onfocusout:function(element) { jQuery(element).valid(); },  
		rules:{
			userName:{
				required:true,//必填
				
			},
			password:{
				required:true,
				minlength:6,
			},
		},
		errorPlacement : function(error, element) { 
			error.appendTo(element.parent().parent().parent().next()); 
			
		} ,
		success: function(label) {
			label.addClass("valid");
		},
		//错误信息提示
		messages:{
			userName:{
				required:"请输入用户名",
				
			},
			password:{
				required:"请输入密码",
				minlength:"密码至少为6位",
			},
		},

	});
	
	
	jQuery("#login").click(function (){
		jQuery("#loginMsgWarning").html("");
		jQuery("#login").removeAttr("disabled");
		var success = jQuery('#loginForm').valid();
		if(success==true){
			
			jQuery("#login").html("");
			jQuery("#login").append("正在登录...");
			jQuery("#login").attr({"disabled":"disabled"});
			var password=jQuery("#password").val();
			var username=jQuery("#userName").val();
			jQuery.ajax({  
		        type:"POST",  
		        url:"/ShiroLearn1/user/login", 
		        dataType: "json",
		        data:{password:password,username:username},
		        success: function(data){ 
		        	if(data=="success"){
		        		jQuery("#login").html("");
		    			jQuery("#login").append("登录成功...");
		    			window.location="/ShiroLearn1/user/index";
		    		}
		        	else{
		        		jQuery("#loginMsgWarning").html("");
		    			jQuery("#loginMsgWarning").append(data);
		    			jQuery("#loginMsgWarning").show();
		    			jQuery("#login").html("");
		    			jQuery("#login").append("登录");
		        		jQuery("#login").removeAttr("disabled");
		        		
		        	}
		         },
		        error: function(data){ 
		        	jQuery("#loginMsgWarning").show();
		        	jQuery("#loginMsgWarning").html("");
	    			jQuery("#loginMsgWarning").append("网络连接超时");
	    			jQuery("#login").html("");
	    			jQuery("#login").append("登录");
	        		jQuery("#login").removeAttr("disabled");
	        		return false;
		        }  
		          
		    })//ajax
		}
		
	})	
	
})


