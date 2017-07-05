package com.serviceImpl;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.BillDao;
import com.entity.Bill;
import com.service.BillService;


@Service("billService")
public class BillServiceImpl implements BillService {

	@Autowired
	private BillDao dao;

	@Override
	public int create(Bill bill) {
		return dao.create(bill);
	}

	@Override
	public int update(Bill bill) {
		return dao.update(bill);
	}

	@Override
	public Bill getBillByBillID(String billID) {
		return dao.getBillByBillID(billID);
	}
	
	
	@Override
	public int del(String billID) {
		return dao.del(billID);
	}
	
	@Override
	public List<Bill> getMyBillListByMonth(String myUserID, String time) {
		return dao.getMyBillListByMonth(myUserID, time);
	}

	

	@Override
	public List<Bill> getAllBillListByMonth(String myUserID, String taUserID, String time) {
		return dao.getAllBillListByMonth(myUserID, taUserID, time);
	}

	

	
}
