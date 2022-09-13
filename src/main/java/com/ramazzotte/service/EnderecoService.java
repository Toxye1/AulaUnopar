package com.ramazzotte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramazzotte.domain.Endereco;
import com.ramazzotte.repository.EnderecoRepository;


@Service
public class EnderecoService {
	
	@Autowired
	private EnderecoRepository endRepo;

	public List<Endereco> findAll() {
		List<Endereco> list = endRepo.findAllCat();

		return list;
	}


}
