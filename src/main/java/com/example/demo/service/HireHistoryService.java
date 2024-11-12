package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.HireHistory;
import com.example.demo.Task;
import com.example.demo.dao.HireHistorydao;

@Service
public class HireHistoryService {
	@Autowired
	HireHistorydao hirehistorydao;

	public List<HireHistory> getAllHireHistory(String id) {
		// TODO Auto-generated method stub
		return hirehistorydao.findBybuddyId(id);
	}

	public void savedata(HireHistory hirehistory) {
		hirehistorydao.save(hirehistory);
		// TODO Auto-generated method stub
		
	}

	
}
