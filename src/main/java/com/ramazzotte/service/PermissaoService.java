package com.ramazzotte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramazzotte.domain.Permissao;
import com.ramazzotte.repository.PermissaoRepository;


@Service
public class PermissaoService {
	
	@Autowired
	private PermissaoRepository permRepo;

	public List<Permissao> findAll() {
		List<Permissao> list = permRepo.findAllCat();

		return list;
	}


}
