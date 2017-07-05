jQuery(document).ready(function(){
	setDefaultDate();
	billListInit();
	//弹出层
	jQuery("#toAddBill").click(function(){
		jQuery("#addBillModal").modal("toggle");
		
	});
	
	
	var addBillValidator;
	addBillValidator=jQuery("#addBillForm").validate({
		errorElement : 'span',  
		rules:{
			amount:{
				required:true,//必填
				positiveInteger:true,
			},
			
		},
		
		highlight: function(element) {
			jQuery(element).parent().parent().parent().removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element) {
			jQuery(element).parent().parent().parent().removeClass('has-error').addClass('has-success');
		},
		errorPlacement : function(error, element) { 
			error.appendTo(jQuery(element).parent().parent().next());
		} ,
		success: function(element) {
			jQuery(element).parent().parent().parent().addClass("has-success");
		},
		
		onfocusout:function(element) { 
			jQuery(element).valid(); 
		},  
		 
		//错误信息提示
		messages:{
			amount:{
				required:"请输入金额",
				
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
	
	
	
	jQuery.validator.addMethod("positiveInteger", function(value, element) {
		   var aint=parseFloat(value);	
		    return aint>0.0&& (aint+"")==value;   
	}, "请输入正数");   
	
	//隐藏add form的时候
	jQuery('#addBillModal').on('hidden.bs.modal', function () {
		addBillValidator.resetForm();
		jQuery("addBill").removeAttr("disabled");
		jQuery("#amount").val("");
		jQuery("#remark").val("");
		jQuery(".form-group").removeClass("has-error");
		jQuery(".form-group").removeClass("has-success");
		jQuery("#addBillMsgWarning").html("");
		jQuery("#addBillMsgSuccess").html("");
		jQuery("#addBillMsgWarning").hide();
		jQuery("#addBillMsgSuccess").hide();
	});
	
	
	jQuery("#addBill").click(function (){
		jQuery("#addBill").removeAttr("disabled");
		var success = jQuery('#addBillForm').valid();
		if(success==true){
			jQuery("#billList").html("");
			jQuery("#addBillMsgWarning").html("");
			jQuery("#addBillMsgSuccess").html("");
			jQuery("#addBillMsgWarning").hide();
			jQuery("#addBillMsgSuccess").hide();
			jQuery("#addBill").attr({"disabled":"disabled"}); 
			jQuery.ajax({  
		        type:"POST",  
		        url:"/jason/bill/add",  
		        data:jQuery('#addBillForm').serialize(),
		        success: function(data){ 
		        	if(data =="1"){
		        		jQuery("#addBillMsgSuccess").show();
		        		jQuery("#addBillMsgWarning").html("");
		        		jQuery("#addBillMsgSuccess").append("记账成功");
		        		setTimeout(function time(){
		        			jQuery("#addBillModal").modal('hide');
		        			jQuery("#addBill").removeAttr("disabled");jQuery("#addBillMsgWarning").html("");
		        			jQuery("#addBillMsgSuccess").html("");
		        			jQuery("#addBillMsgWarning").hide();
		        			jQuery("#addBillMsgSuccess").hide();
		        			var time=jQuery("#select_month").val();
		        			var userSelect=jQuery('#userSelect option:selected').val();
		        			billListChange(time,userSelect);
		        			
		        		},2000);
		        		return true;
		        	}
		        	else{
		        		jQuery("#addBillMsgWarning").show();
		        		jQuery("#addBillMsgWarning").html("");
		        		jQuery("#addBillMsgWarning").append("记账失败");
		        		jQuery("#addBill").removeAttr("disabled");
		        		return false;
		        	}
		        },
		        error: function(data){ 
		        	jQuery("#addBillMsgWarning").show();
	        		jQuery("#addBillMsgWarning").html("");
	        		jQuery("#addBillMsgWarning").append("网络链接超时");
	        		jQuery("#addBill").removeAttr("disabled");
		        }
			
		    })//ajax 
			
		}
	});//addBill").click
	
	
	jQuery("#billList").on("mouseenter", ".row", function(){
		jQuery(this).children(".btn-div").show();
		
	}); 
	
	jQuery("#billList").on("mouseleave", ".row", function(){
		jQuery(this).children(".btn-div").hide();
		
	}); 
	
	jQuery("#select_month").change(function(){
		var time=jQuery("#select_month").val();
		var userSelect=jQuery('#userSelect option:selected').val();
		billListChange(time,userSelect);
	})
	
	jQuery("#userSelect").change(function(){
		var time=jQuery("#select_month").val();
		var userSelect=jQuery('#userSelect option:selected').val();
		billListChange(time,userSelect);
	})
	
	jQuery("#type").change(function(){
		var type=jQuery('#type option:selected').val();
		jQuery("#purpose").html("");
		if(type=="支出"){
			jQuery("#purpose").append("" +
					"<option value='餐饮'>餐饮</option>" +
					"<option value='交通'>交通</option>" +
					"<option value='购物'>购物</option>" +
					"<option value='通讯'>通讯</option>" +
					"<option value='住房'>住房</option>" +
					"<option value='公共'>公共</option>" +
					"<option value='彩票'>彩票</option>" +
					"<option value='还钱'>还钱</option>" +
					"<option value='娱乐'>娱乐</option>" +
					"<option value='旅行'>旅行</option>" +
					"<option value='医疗'>医疗</option>" +
					"<option value='红包'>红包</option>" +
					"<option value='其他'>其他</option>" 
					);
		}//支出
		else{
			jQuery("#purpose").append("" +
					"<option value='工资'>工资</option>" +
					"<option value='红包'>红包</option>" +
					"<option value='彩票'>彩票</option>" +
					"<option value='借钱'>借钱</option>" +
					"<option value='其他'>其他</option>" 
					);
		}
	})
})


function setDefaultDate(){
		var date = new Date();
		var year=date.getFullYear();
		var month=date.getMonth()+1;
		var month1,month2;
		if(month<10){
			month1=month;
			month2="0"+month;
		}
		var day=date.getDate();
		if(day<10){
			day="0"+day;
		}
		
		var str=year+"-"+month1+"-"+day;
		jQuery("#time").val(str);
		jQuery("#select_month").val(year+"-"+month2);
		
}


function del(billID){
	jQuery("#delBillID").val(billID);
	jQuery("#delModal").modal("toggle");
	jQuery("#delBillMsgWarning").html("");
	jQuery("#delBillMsgSuccess").html("");
	
}


function confirmDel(){
	jQuery("#confirmDel").removeAttr("disabled");
	jQuery("#delBillMsgWarning").html("");
	jQuery("#delBillMsgSuccess").html("");
	jQuery("#delBillMsgWarning").hide();
	jQuery("#delBillMsgSuccess").hide();
	jQuery("#confirmDel").attr({"disabled":"disabled"}); 
	var billID=jQuery("#delBillID").val();
	jQuery.ajax({  
        type:"POST",  
        url:"/jason/bill/del",  
        data:{billID:billID},
        success: function(data){ 
        	if(data =="1"){
        		jQuery("#delBillMsgSuccess").show();
        		jQuery("#delBillMsgWarning").html("");
        		jQuery("#delBillMsgSuccess").append("删除成功");
        		setTimeout(function time(){
        			jQuery("#delModal").modal('hide');
        			jQuery("#confirmDel").removeAttr("disabled");
        			jQuery("#delBillMsgWarning").html("");
        			jQuery("#delBillMsgSuccess").html("");
        			jQuery("#delBillMsgWarning").hide();
        			jQuery("#delBillMsgSuccess").hide();
        			var time=jQuery("#select_month").val();
        			var userSelect=jQuery('#userSelect option:selected').val();
        			billListChange(time,userSelect);
        			//window.location.reload();	
        		},2000);
        		return true;
        	}
        	else{
        		jQuery("#delBillMsgWarning").show();
        		jQuery("#delBillMsgWarning").html("");
        		jQuery("#delBillMsgWarning").append("你只能删除自己的记录，删除失败");
        		jQuery("#confirmDel").removeAttr("disabled");
        		return false;
        	}
        },
        error: function(data){ 
        	jQuery("#delBillMsgWarning").show();
    		jQuery("#deldBillMsgWarning").html("");
    		jQuery("#delBillMsgWarning").append("网络链接超时");
    		jQuery("#confirmDel").removeAttr("disabled");
        }
	
    })//ajax 
}

function update(billID){
	
}


function getUserByPrincipal(){
	var  user= new   Object();   
	jQuery.ajax({
		type : "POST",
		url : "/jason/user/getUserByPrincipal",
		dataType : "json",
		async: false,
		success : function(data) {
			user.userName=data.user.userName;
		},
		error : function(data) {
			
		}

	})// ajax
	return   user;   
}

function billListInit(){
	var date = new Date();
	var year=date.getFullYear();
	var month=date.getMonth()+1;
	if(month<10){
		month="0"+month;
	}
	var time=year+"-"+month;
	var userSelect=jQuery('#userSelect option:selected').val();
	billListChange(time,userSelect);
}

function billListChange(time,userSelect){
	jQuery.ajax({  
        type:"POST",  
        url:"/jason/bill/getMyBillListByMonth",  
        data:{month:time,userSelect:userSelect},
        success: function(data){ 
        	jQuery("#billList").html("");
        	if(data.seriesList.length>0){
        		jQuery("#billChartsDiv").css("height","400px");
    			setBillCharts(data.seriesList);
    		}
    		else{
    			jQuery("#billChartsDiv").css("height","0px");
    			var myChart = echarts.init(document.getElementById('billChartsDiv'));
    			myChart.hideLoading();
    		}
    		
        	//这个月有记录
        	if(data.listSize<1){
        		jQuery("#billList").append(
        				"<div class='alert alert-block alert-danger'>" +
        				"这个月没有记账哦" +
        				"</div>")
        	
        	}//这个月没有记录
        	else{//这个月有记录
        		var userName=getUserByPrincipal().userName;
    			jQuery("#billList").append(
        				"<div class='alert alert-block alert-info'>" +
        					""+time+""+
        					"一共收入<strong class='red'>"+data.income+"</strong>"+
        					"元，消费<strong class='red'>"+data.spend+"</strong>"+
        					"元，合计<strong class='red'>"+data.count+"</strong>元!"+
        				"</div>"
        		);
        		
    			
    			
    			
            	jQuery.each(data.timeBillList,function(key,values){     
            		var arr =key.split('-');
            		var left_show=arr[1]+"-"+arr[2];
            		
            		var timeDivID=key+"Div"; 
            		jQuery("#billList").append(
            				"<div class='itemdiv dialogdiv'>"+
    	             		   "<div class='user' style='width:40px;text-align:center;font-size:14px;'>"+
    		               	   ""+left_show+""+
    		               	   "</div>"+
    		               	   "<div class='body test22' id='"+timeDivID+"'>"+
    		               	   "</div>"+
    		               	 "</div>"
                 		);	
            		
            		jQuery(values).each(function(i,item){     
            			var userNameClass;
            			var typeClass;
            			if(userName==item.userID){//如果和登陆的一样
            				userNameclass="label label-lg label-purple arrowed";
            			}
            			else{
            				userNameclass="label label-success arrowed-right arrowed-in";
            			}
            			if(item.type=="收入"){
            				typeClass="label label-primary"
            				
            			}
            			else{
            				typeClass="label label-warning";
            			}
            			//<span class="label label-info arrowed-right arrowed-in">
            			/*if(item.type=="收入"){*/
            				
            				jQuery("#"+timeDivID).append(
        	        				"<div class='row' style='margin-top:10px;' > "+
        			        	      "<div class='col-md-2 col-xs-6'> "+
	        			        	      "<span class='"+userNameclass+"'> "+
        			        		      	""+item.userID+""+
        			        		      "</span> "+
        			        		  "</div> "+
        			        		  "<div class='col-md-2 col-xs-6' >"+
        			        		  	  "<span class='"+typeClass+"'> "+
        			        		  	  	""+item.type+""+
	    			        		      "</span> "+
    	  			        		  "</div> "+   
        			        		  "<div class='col-md-2 col-xs-6' >"+    
        			        		  		""+item.purpose+""+
        			        		  "</div> "+    
        			        	      
        			        		  "<div class='col-md-2 col-xs-6'>"+    
        			        		  		"<span class='badge badge-danger'>"+item.amount+"</span>"+
        			        		  "</div> "+
        			        	     
        			        		  "<div class='col-md-2 col-xs-6'>"+    
        			        		  		""+item.remark+""+
        			        		  "</div> "+	 
        			        		  ""+
        			        		  "<div class='col-md-2 col-xs-12  btn-div'  style='display:none'> "+
        			        		  	
        			        		  	  "<a href='#' class='btn btn-minier btn-danger' onClick='del("+item.billID+")'>"+ 
        			        		      "<i class='icon-trash bigger-160'></i>"+ 
        			        		      "</a>"+ 
        			        		     /* "<a href='#' class='btn btn-minier btn-primary' onClick='update("+item.billID+")'>"+
        			        		      "<i class='icon-edit bigger-160'></i>"+
        			        		      "</a>"+ */
        			        		  
        			        		  "</div> "+
        			        		  
        			        	  "</div> "	      
        			        	     
        			        );//append
            				
            			
    	        		
            		});//中间的each
            		
            		
            	})//大的each
        		
        	}//这个月有记录
        	
        },
        error: function(data){ 
        	jQuery("#billList").html("");
        	jQuery("#billList").append(
    				"<div class='alert alert-block alert-danger'>" +
    				"服务器出现错误" +
    				"</div>")
        
        }
	
    })//ajax 
	
    
}



function setBillCharts(seriesList){
	
	var myChart = echarts.init(document.getElementById('billChartsDiv'));
	option = {
		    title : {
		        text: '支出统计结果',
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        x : 'center',
		        y : 'bottom',
		        data:(function(){
		    		var arr=[];
		    		for(var i=0;i<seriesList.length;i++){
                 	   arr.push(seriesList[i].name);
                 	   
                    } 
		    		return arr;
		    	})()  ,
		    },
		    series : [
		        {
		            name: '支出类型',
		            type: 'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:(function(){
		            	var arr=[];
			    		for(var i=0;i<seriesList.length;i++){
	                 	   arr.push(seriesList[i]);
	                 	} 
			    		return arr;
		            })()  ,
		            itemStyle: {
		                emphasis: {
		                    shadowBlur: 10,
		                    shadowOffsetX: 0,
		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
		                }
		            }
		        }
		    ]
		};

	
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
	
}

