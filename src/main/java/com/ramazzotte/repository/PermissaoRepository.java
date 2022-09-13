package com.ramazzotte.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ramazzotte.domain.Permissao;



@Repository
public interface PermissaoRepository extends JpaRepository<Permissao, Integer> {

	@Query(value = "SELECT * FROM permissao", nativeQuery = true)
	List<Permissao> findAllCat();

	

}
