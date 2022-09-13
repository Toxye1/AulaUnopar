package com.ramazzotte.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ramazzotte.domain.Lancamento;
import com.ramazzotte.service.LancamentoService;



@RestController
@RequestMapping(value = "/d/")
public class LancamentoResource {

	
	@Autowired
	private LancamentoService service;


	@RequestMapping(value = "/lancamento",method = RequestMethod.GET)
	public ResponseEntity<?> findAll() {
		List<Lancamento> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}	
	



}