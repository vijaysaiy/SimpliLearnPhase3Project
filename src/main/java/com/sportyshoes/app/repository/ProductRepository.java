package com.sportyshoes.app.repository;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sportyshoes.app.model.Products;


@Repository
@Transactional
public interface ProductRepository extends CrudRepository<Products, Integer>
{

	
	public List<Products> findBySeason(String season);
	
	public List<Products> findByBrand(String brand);

	public List<Products> findByCategory(String category);

	public List<Products> findBycreatedDate(String createdDate);

}
