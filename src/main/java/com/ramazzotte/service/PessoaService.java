package com.ramazzotte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramazzotte.domain.Pessoa;
import com.ramazzotte.repository.PessoaRepository;


@Service
public class PessoaService {
	
	@Autowired
	private PessoaRepository pessoRepo;

	public List<Pessoa> findAll() {
		List<Pessoa> list = pessoRepo.findAllCat();

		return list;
	}


}
