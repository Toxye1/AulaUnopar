package com.ramazzotte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramazzotte.domain.Usuario;
import com.ramazzotte.repository.UsuarioRepository;


@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioRepository usuRepo;

	public List<Usuario> findAll() {
		List<Usuario> list = usuRepo.findAllCat();

		return list;
	}


}
