//jQuery(document).ready(function(){

jQuery("#logout_menue").click(function(){
		jQuery("#logoutModal").modal("toggle");
		
});


jQuery("#logout").click(function (){
	jQuery("#logoutMsgWarning").html("");
	jQuery("#logoutMsgSuccess").html("");
	jQuery("#logoutMsgWarning").hide();
	jQuery("#logoutMsgSuccess").hide();
	jQuery("#logout").attr({"disabled":"disabled"});
	jQuery.ajax({  
        type:"POST",  
        url:"/jason/user/logout", 
        dataType: "json",
        success: function(data){ 
        	if(data=="1"){
        		jQuery("#logoutMsgSuccess").html("");
    			jQuery("#logoutMsgSuccess").append("退出成功");
    			jQuery("#logoutMsgSuccess").show();
        		setTimeout(function time(){
    				window.location.reload();	
        		},1000);
        		
        	}
        	else{
        		jQuery("#logoutMsgWarning").html("");
    			jQuery("#logoutMsgWarning").append("退出失败");
    			jQuery("#logoutMsgWarning").show();
    			
        	}
        },
        error: function(data){ 
        	jQuery("#logoutMsgWarning").html("");
			jQuery("#logoutMsgWarning").append("网络连接中断");
			jQuery("#logoutMsgWarning").show();
			setTimeout(function time(){
    			window.location.reload();	
    		},200);
        }  
          
    })//ajax
	
})