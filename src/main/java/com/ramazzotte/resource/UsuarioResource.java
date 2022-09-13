package com.ramazzotte.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ramazzotte.domain.Usuario;
import com.ramazzotte.service.UsuarioService;



@RestController
@RequestMapping(value = "/d/")
public class UsuarioResource {

	
	@Autowired
	private UsuarioService service;


	@RequestMapping(value = "/usuario",method = RequestMethod.GET)
	public ResponseEntity<?> findAll() {
		List<Usuario> list = service.findAll();
		return ResponseEntity.ok().body(list);
	}	
	



}