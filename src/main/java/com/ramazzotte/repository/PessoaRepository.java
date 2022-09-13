package com.ramazzotte.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ramazzotte.domain.Pessoa;



@Repository
public interface PessoaRepository extends JpaRepository<Pessoa, Integer> {

	@Query(value = "SELECT * FROM pessoa", nativeQuery = true)
	List<Pessoa> findAllCat();

	

}
