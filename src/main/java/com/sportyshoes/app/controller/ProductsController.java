package com.sportyshoes.app.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sportyshoes.app.model.Products;
import com.sportyshoes.app.repository.ProductRepository;


@RestController
@RequestMapping("products")
public class ProductsController 
{
	@Autowired
	ProductRepository productrepository;
	
	//gets all the products
	@GetMapping("all")
	public List<Products> getAllProducts()
	{
		List<Products> products =(List<Products>) productrepository.findAll();
		return products;
	}
	
	//add product
	@PostMapping("add")
	public Products addProduct(@RequestBody Products product)
	{
		return productrepository.save(product);
		
	}
	
	//delete the product
	
	@DeleteMapping("delete/{id}")
	public void deleteProducts(@PathVariable int id) 
	{
		productrepository.deleteById(id);
	}
	
	//update product
	
	@PutMapping("update/{id}")
	public Products updateProduct(@RequestBody Products product)
	{
		return productrepository.save(product);
	}
	
	//search products 
	//search by id
	@GetMapping("search/{id}")	
	public Optional<Products> searchProduct(@PathVariable int id)
	{
		return productrepository.findById(id);
	}
	
	// search by season
	
	@GetMapping("searchbyseason/{season}")
	public List<Products> searchProductbyseason(@PathVariable String season)
	{
		List<Products> searchByseason = productrepository.findBySeason(season);
		return searchByseason;
		
	}
	
	// search by brand
	@GetMapping("searchbybrand/{brand}")
	public List<Products> searchProductbybrand(@PathVariable String brand)
	{
		List<Products> searchByBrand = productrepository.findByBrand(brand);
		return searchByBrand;
		
	}
	
	//search by category
	@GetMapping("searchbycategory/{category}")
	public List<Products> searchProductbycategory(@PathVariable String category)
	{
		List<Products> searchByCategory = productrepository.findByCategory(category);
		return searchByCategory;
		
	}
	
	//search by createdDate
	@GetMapping("searchbydate/{createdDate}")
	public List<Products> searchProductbydate(@PathVariable String createdDate)
	{
		List<Products> searchByDate = productrepository.findBycreatedDate(createdDate);
		return searchByDate;
		
	}
	

}
