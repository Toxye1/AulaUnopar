package com.ramazzotte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramazzotte.domain.Lancamento;
import com.ramazzotte.repository.LancamentoRepository;


@Service
public class LancamentoService {
	
	@Autowired
	private LancamentoRepository lanRepo;

	public List<Lancamento> findAll() {
		List<Lancamento> list = lanRepo.findAllCat();

		return list;
	}


}
