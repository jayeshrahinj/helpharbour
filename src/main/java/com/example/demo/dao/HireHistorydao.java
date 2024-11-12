package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.HireHistory;

@Repository
public interface HireHistorydao extends JpaRepository<HireHistory,Integer> {

	List<HireHistory> findBybuddyId(String id);

}
