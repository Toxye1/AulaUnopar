package com.ramazzotte.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ramazzotte.domain.Endereco;



@Repository
public interface EnderecoRepository extends JpaRepository<Endereco, Integer> {

	@Query(value = "SELECT * FROM endereco", nativeQuery = true)
	List<Endereco> findAllCat();

	

}
