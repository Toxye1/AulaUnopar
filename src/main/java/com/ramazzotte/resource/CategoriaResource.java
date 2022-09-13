package com.ramazzotte.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ramazzotte.domain.Categoria;
import com.ramazzotte.service.CategoriaService;



@RestController
@RequestMapping(value = "/d/")
public class CategoriaResource {

	
	@Autowired
	private CategoriaService service;


	@RequestMapping(value = "/categoria",method = RequestMethod.GET)
	public ResponseEntity<?> findAll() {
		List<Categoria> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}	
	



}