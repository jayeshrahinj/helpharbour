package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Task;
@Repository
public interface Taskdao extends JpaRepository<Task,Integer>{

	List<Task> findByBuddyid(int bid);

	List<Task> findByEmail(String email);

	 @Query("SELECT t FROM Task t WHERE t.id = (SELECT MAX(tt.id) FROM Task tt)")
	List<Task> findLastInsertedTaskByEmail(String email);

}
