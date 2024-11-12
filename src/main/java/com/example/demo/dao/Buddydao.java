package com.example.demo.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Buddy;
import com.example.demo.User;
@Repository
public interface Buddydao extends JpaRepository<Buddy,Integer> {

	Optional<Buddy> findByEmailAndPassword(String email, String password);

   Buddy findByEmail(String email);

}
