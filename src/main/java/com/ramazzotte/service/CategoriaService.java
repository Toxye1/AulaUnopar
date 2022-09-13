package com.ramazzotte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramazzotte.domain.Categoria;
import com.ramazzotte.repository.CategoriaRepository;


@Service
public class CategoriaService {
	
	@Autowired
	private CategoriaRepository catRepo;

	public List<Categoria> findAll() {
		List<Categoria> list = catRepo.findAllCat();

		return list;
	}


}
