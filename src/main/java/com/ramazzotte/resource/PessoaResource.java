package com.ramazzotte.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ramazzotte.domain.Pessoa;
import com.ramazzotte.service.PessoaService;



@RestController
@RequestMapping(value = "/d/")
public class PessoaResource {

	
	@Autowired
	private PessoaService service;


	@RequestMapping(value = "/pessoa",method = RequestMethod.GET)
	public ResponseEntity<?> findAll() {
		List<Pessoa> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}	
	



}