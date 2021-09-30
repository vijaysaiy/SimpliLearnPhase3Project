package com.sportyshoes.app.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import com.sportyshoes.app.model.User;
import com.sportyshoes.app.repository.UsersRepository;

@RestController
@RequestMapping("users")
public class UserController 
{
	@Autowired
	UsersRepository userrepository;
	
	//list all users
	@GetMapping("all")
	public List<User> getAllUsers()
	{
		List<User> users = (List<User>) userrepository.findAll();
		return users;
	}
	//add users
	@PostMapping("add")
	public User addUsers(@RequestBody User users)
	{
		return userrepository.save(users);
	}
	
	//update users
	@PutMapping("update/{username}")
	public User updateusers(@RequestBody User user)
	{
		return userrepository.save(user);
	}
	
	//delete users
	@DeleteMapping("delete/{username}")
	public void deleteuser(@PathVariable String username)
	{
		userrepository.deleteByUsername(username);
			
	}
	//search user by name
	@GetMapping("search/{username}")	
	public Optional<User> searchUser(@PathVariable String username)
	{
		return userrepository.findByUsername(username);
	}
}
