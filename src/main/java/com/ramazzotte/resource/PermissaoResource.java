package com.ramazzotte.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ramazzotte.domain.Permissao;
import com.ramazzotte.service.PermissaoService;



@RestController
@RequestMapping(value = "/d/")
public class PermissaoResource {

	
	@Autowired
	private PermissaoService service;


	@RequestMapping(value = "/permissao",method = RequestMethod.GET)
	public ResponseEntity<?> findAll() {
		List<Permissao> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}	
	



}