package com.ramazzotte.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ramazzotte.domain.Lancamento;



@Repository
public interface LancamentoRepository extends JpaRepository<Lancamento, Integer> {

	@Query(value = "SELECT * FROM Lancamento", nativeQuery = true)
	List<Lancamento> findAllCat();

	

}
