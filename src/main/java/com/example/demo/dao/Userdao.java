package com.example.demo.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.User;

@Repository
public interface Userdao extends JpaRepository<User,Integer> {

	Optional<User>  findByEmailAndPassword(String email, String password);

	User findByEmail(String email);

	
	
	

}
