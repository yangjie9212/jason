jQuery(document).ready(function(){
	var updateUserValidator;
	updateUser=jQuery("#updateUserForm").validate({
		rules:{
			userName:{
				required:true,//必填
				remote: {
                    type: "post",
                    async:false,
                    url: "/jason/user/userNameIsExist",
                    dataType: "json",
                    data: {
                    	userName: function() {
                            return jQuery("#userName").val();
                        },
                        
                    },
                    dataFilter: function(data, type) {
                    	if (data == "true"){
                        	return false;
                        }
                            
                        else{
                        	return true;
                        }
                    }
                },//remote
				
			},
			password:{
				required:true,//必填
				minlength:6,
			},
			password2:{
				required:true,//必填
				equalTo:'#password',
				minlength:6,
			},
			
		},//rules
		highlight: function(element) {
			jQuery(element).parent().parent().removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element) {
			jQuery(element).parent().parent().removeClass('has-error').addClass('has-success');
		},
		errorPlacement : function(error, element) { 
			error.appendTo(jQuery(element).parent().next());
		} ,
		success: function(element) {
			jQuery(element).parent().parent().addClass("has-success");
		},
		onfocusout:function(element) { 
			jQuery(element).valid(); 
		},  
		
		messages:{
			userName:{
				required:"请输入用户名",//必填
				remote:"用户名已经存在",
			},
			password:{
				required:"请输入密码",//必填
				minlength:"密码最少6位",
			},
			password2:{
				required:"请确认密码",//必填
				minlength:"密码最少6位",
				equalTo:"两次密码输入不一致",
			},
			
		},
		
	})//validate
	
	
	jQuery("#updateUserButton").click(function(){
		jQuery("#updateUserButton").removeAttr("disabled");
		var success = jQuery('#updateUserForm').valid();
		
		if(success==true){
			jQuery("#updateUserMsg").html("");
			jQuery("#updateUserMsg").hide();
			jQuery.ajax({  
		        type:"POST",  
		        url:"/jason/user/update",  
		        data:jQuery('#updateUserForm').serialize(),
		        success: function(data){ 
		        	if(data =="1"){
		        		jQuery("#updateUserMsg").show();
		        		jQuery("#updateUserMsg").html("");
		        		jQuery('#updateUserMsg').removeClass('alert-success');
		    			jQuery('#updateUserMsg').removeClass('alert-danger');
		    			jQuery('#updateUserMsg').addClass('alert-success');
		    			jQuery("#updateUserMsg").append("修改个人信息成功");
		        		setTimeout(function time(){
		        			jQuery("#updateUserButton").removeAttr("disabled");
		        			window.location.reload();	
		        		},2000);
		        		return true;
		        	}
		        	else{
		        		jQuery("#updateUserMsg").html("");
		        		jQuery('#updateUserMsg').removeClass('alert-success');
		    			jQuery('#updateUserMsg').removeClass('alert-danger');
		    			jQuery('#updateUserMsg').addClass('alert-danger');
		    			jQuery("#updateUserMsg").append("修改个人信息失败");
		    			jQuery("#updateUserButton").removeAttr("disabled");
		    			setTimeout(function time(){
		    				jQuery("#updateUserMsg").show();
			        	},2000);
		    			return false;
		        	}
		        },
		        error: function(data){ 
		        	jQuery("#updateUserMsg").html("");
	        		jQuery('#updateUserMsg').removeClass('alert-success');
	    			jQuery('#updateUserMsg').removeClass('alert-danger');
	    			jQuery('#updateUserMsg').addClass('alert-danger');
	    			jQuery("#updateUserMsg").append("网络连接中断");
	    			jQuery("#updateUserButton").removeAttr("disabled");
	    			setTimeout(function time(){
	    				jQuery("#updateUserMsg").show();
		        	},2000);
		        }
			
		    })//ajax 
			
			
		}
	
	})
	
	
})