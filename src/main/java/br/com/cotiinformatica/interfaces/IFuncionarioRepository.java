package br.com.cotiinformatica.interfaces;

import java.util.List;

import br.com.cotiinformatica.entities.Funcionario;
import br.com.cotiinformatica.enums.SituacaoFuncionario;

public interface IFuncionarioRepository extends IBaseRepository<Funcionario> {

	Funcionario findByCpf(String cpf) throws Exception;

	Funcionario findByMatricula(String matricula) throws Exception;

	List<Funcionario> findBySituacao(SituacaoFuncionario situacao) throws Exception;

}
