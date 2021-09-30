package com.sportyshoes.app.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.sportyshoes.app.model.User;

public interface UsersRepository extends CrudRepository<User, Integer> {

	@Transactional
	void deleteByUsername(String username);

	Optional<User> findByUsername(String username);
	
	
	
	

	

}
