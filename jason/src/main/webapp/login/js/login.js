
jQuery(document).ready(function(){
	var loginValidator;
	loginValidator=jQuery("#loginForm").validate({
		onfocusout:function(element) { jQuery(element).valid(); },  
		rules:{
			username:{
				required:true,//必填
				
			},
			password:{
				required:true,
				minlength:6,
			},
		},
		errorPlacement : function(error, element) { 
			jQuery(".msg").html("");
			error.appendTo(jQuery(".msg"));
		} ,
		//错误信息提示
		messages:{
			username:{
				required:"请输入用户名",
				
			},
			password:{
				required:"请输入密码",
				minlength:"密码至少为6位",
			},
		},

	});
	
	
	jQuery("input[type=text]").change(function(){ 
		jQuery('input[type=text]:not(:disabled)').each(function(){ 
	        var str = jQuery(this).val(); 
	        str = str.replace(/\ +/g,"");
	        jQuery(this).val(str);   
	    });   
	});
	
	
	
	jQuery("#login").click(function (){
		jQuery("#login").removeAttr("disabled");
		var success = jQuery('#loginForm').valid();
		if(success==true){
			jQuery("#login").html("");
			jQuery("#login").append("正在登录...");
			jQuery("#login").attr({"disabled":"disabled"});
			var password=jQuery("#password").val();
			var username=jQuery("#username").val();
			jQuery.ajax({  
		        type:"POST",  
		        url:"/jason/user/login", 
		        dataType: "json",
		        data:{password:password,username:username},
		        success: function(data){ 
		        	if(data=="success"){
		        		jQuery("#login").html("");
		    			jQuery("#login").append("登录成功...");
		    			setTimeout(function time(){
		    				window.location="/jason";
		        		},500);
		        		
		        	}
		        	else{
		        		jQuery("#msg").html("");
		    			jQuery("#msg").append(data);
		    			jQuery("#login").html("");
		    			jQuery("#login").append("登录");
		        		jQuery("#login").removeAttr("disabled");
		        		
		        	}
		        	
		        	
		        },
		        error: function(data){ 
		        	jQuery("#msg").html("");
	    			jQuery("#msg").append("网络连接超时");
	    			jQuery("#login").html("");
	    			jQuery("#login").append("登录");
	        		jQuery("#login").removeAttr("disabled");
	        		return false;
		        }  
		          
		    })//ajax
		}
		
	})
	
	
})

