package com.sportyshoes.app.repository;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sportyshoes.app.model.PurchaseReport;


@Repository
@Transactional
public interface PurchaseReportRepository extends CrudRepository<PurchaseReport, Integer>{

	public List<PurchaseReport> findByUsername(String username);

}
