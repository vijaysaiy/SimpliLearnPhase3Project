package com.sportyshoes.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.sportyshoes.app.model.PurchaseReport;
import com.sportyshoes.app.repository.PurchaseReportRepository;

@RestController
@RequestMapping("purchase")
public class PurchaseReportController {
	@Autowired
	PurchaseReportRepository purchaserepository;
	
	//get all purchase reports
	
	@GetMapping("all")
	public List<PurchaseReport> getAllPurchases()
	{
		List<PurchaseReport> purchases =(List<PurchaseReport>) purchaserepository.findAll();
		return purchases;
	}
	
	//update purchases
	
	@PutMapping("update/{id}")
	public PurchaseReport updatePurchase(@RequestBody PurchaseReport purchase)
	{
			return purchaserepository.save(purchase);
	}
	
	//delete the product
	
	@DeleteMapping("delete/{id}")
	public void deletePurchase(@PathVariable int id) 
	{
		purchaserepository.deleteById(id);
	}
	
	//search purchase by username
	
	@GetMapping("search/{username}")	
	public List<PurchaseReport> searchUser(@PathVariable String username)
	{
		List<PurchaseReport> searchByUsername =purchaserepository.findByUsername(username);
		return searchByUsername;
	}

}
