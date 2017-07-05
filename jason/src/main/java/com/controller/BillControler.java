package com.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bill;
import com.entity.Series;

import com.service.BillService;
import com.service.UserService;


@Controller
@RequestMapping({ "/bill" })
public class BillControler {
	@Autowired
	private BillService billService;
	@Autowired
	private UserService userService;

	@ResponseBody
	@RequestMapping("/add")
	public String create(HttpServletRequest request, Bill bill) {
		Subject currentUser = SecurityUtils.getSubject();
		String userID= currentUser.getPrincipal().toString();
		bill.setUserID(userID);
		billService.create(bill);
		return "1";
	}
	
	
	@ResponseBody
	@RequestMapping("/del")
	public String del(HttpServletRequest request, Bill bill) {
		Subject currentUser = SecurityUtils.getSubject();
		String userID= currentUser.getPrincipal().toString();
		String billID=request.getParameter("billID");
		String msg="";
		String billUserID=billService.getBillByBillID(billID).getUserID();
		if(billUserID.equals(userID)){
			billService.del(billID);
			msg="1";
		}else{
			msg="0";
		}
		return msg;
	}
	
	@ResponseBody
	@RequestMapping("/getMyBillListByMonth")
	public Map<String, Object> getTaBillListByMonth(HttpServletRequest request, Bill bill) {
		Subject currentUser = SecurityUtils.getSubject();
		String myUserID = currentUser.getPrincipal().toString();
		String month = request.getParameter("month").trim();
		String userSelect=request.getParameter("userSelect");
		String taUserID=userService.getUserByID(myUserID).getLoverID();
		List<Bill> myBillList = new ArrayList<Bill>();
		if(userSelect.equals("all")){
			myBillList = billService.getAllBillListByMonth(myUserID, taUserID, month);
		}
		if(userSelect.equals("my")){
			myBillList = billService.getMyBillListByMonth(myUserID, month);
		}
		if(userSelect.equals("ta")){
			myBillList = billService.getMyBillListByMonth(taUserID, month);
		}
		
		
		for (Bill item : myBillList) {
			String userID=item.getUserID();
			item.setUserID(userService.getUserByID(userID).getUserName());
		}
		
		Bill billItem; // 数据库中查询到的每条记录
		//Map<String, List<Bill>> timeBillList = new HashMap<String, List<Bill>>(); // 最终要的结果
		
		Map<String, List<Bill>> timeBillList= new TreeMap<String,List<Bill>>(new Comparator<String>() {
			public int compare(String obj1, String obj2) {
				return obj2.compareTo(obj1);
			}
		});
		
		
		for (int i = 0; i < myBillList.size(); i++) {
			billItem = myBillList.get(i);
			if (timeBillList.containsKey(billItem.getTime())) {
				timeBillList.get(billItem.getTime()).add(billItem);
			} else {
				List<Bill> list = new ArrayList<Bill>();
				list.add(billItem);
				timeBillList.put(billItem.getTime(), list);
			}
		}
		double spend = 0;// 支出
		double income = 0;// 收入
		double count = 0;// 这个月+-

		for (Bill item : myBillList) {
			String type = item.getType();
			float amount = Float.parseFloat(item.getAmount());
			if (type.equals("支出")) {
				count = count - amount;
				spend = spend + amount;
			} else {
				count = count + amount;
				income = income + amount;
			}
		}
		DecimalFormat df = new DecimalFormat("#.00");  
		//转为保留小数点两位数
		String count2=df.format(count);  
		String income2=df.format(income);
		String spend2=df.format(spend);
		
	  	//绘制饼图数据
		Map<String, List<Bill>> pieBillList = new HashMap<String, List<Bill>>(); // 最终要的结果
		Bill billItem2;
		for (int i = 0; i < myBillList.size(); i++) {
			billItem2 = myBillList.get(i);
			if(billItem2.getType().equals("支出")){
				if (pieBillList.containsKey(billItem2.getPurpose())) {
					pieBillList.get(billItem2.getPurpose()).add(billItem2);
				} else {
					List<Bill> list2 = new ArrayList<Bill>();
					list2.add(billItem2);
					pieBillList.put(billItem2.getPurpose(), list2);
				}
			}//支出
		}
	
		 List<Series> seriesList=new ArrayList<Series>();  
		 for (Entry<String, List<Bill>> m :pieBillList.entrySet())  {  
	            String  key=m.getKey();
	            double amount=0.0;
	            List<Bill> bill3=m.getValue();
	            for (Bill item : bill3) {
	            	double value=Double.parseDouble(item.getAmount());
	            	amount=amount+value;
	            }
	            
	            String value=amount+"";
	            Series item=new Series(key,value);
	            seriesList.add(item);
		 }  
		
		
		Map<String, Object> returnObj = new HashMap<String, Object>();
		returnObj.put("spend", spend2);
		returnObj.put("income", income2);
		returnObj.put("count", count2);
		returnObj.put("timeBillList", timeBillList);
		returnObj.put("listSize",myBillList.size());
		returnObj.put("seriesList", seriesList);
		
		
		
		return returnObj;
	}

	@RequestMapping("/index")
	public String index(HttpServletRequest request) {
		return "/bill/index";
	}
	
	/*
	 @ResponseBody  
	 @RequestMapping(value = "/account", method = RequestMethod.GET)
	 public List<Series> account(ModelMap model, HttpServletRequest request,
	   			HttpServletResponse response) {
		 String researchID=request.getParameter("researchID");
		 List<ResearchOptions> researchOptionsList = null;
		 List<Series> list=new ArrayList<Series>();  
	  	 researchOptionsList=researchService.getResearchOptions(researchID);
		 for(int i=0;i<researchOptionsList.size();i++){
			 Series e=new Series(researchOptionsList.get(i).getResearchOptions(),researchOptionsList.get(i).getResearch_statistics()); 
			 list.add(e);
		 }
		 
		 return list;
	}
	*/
}



//scp -r  root@139.162.114.7:/usr/local/java/jdk1.8.0_101/ /usr/local/paul/kee-base-platform/jdk8/
