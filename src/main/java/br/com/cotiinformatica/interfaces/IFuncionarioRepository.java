package br.com.cotiinformatica.interfaces;

import java.util.Date;
import java.util.List;

import br.com.cotiinformatica.entities.Funcionario;

public interface IFuncionarioRepository extends IBaseRepository<Funcionario> {

	Funcionario findByCpf(String cpf) throws Exception;

	Funcionario findByMatricula(String matricula) throws Exception;

	List<Funcionario> findByDataAdmissao(Date dataInicio, Date dataFim) throws Exception;

}
