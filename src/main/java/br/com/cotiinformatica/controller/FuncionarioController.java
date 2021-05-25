package br.com.cotiinformatica.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.dto.FuncionarioCadastroDTO;
import br.com.cotiinformatica.entities.Funcionario;
import br.com.cotiinformatica.enums.SituacaoFuncionario;
import br.com.cotiinformatica.helpers.DateHelper;
import br.com.cotiinformatica.repositories.FuncionarioRepository;

/*
 * Classe controladora do Spring MVC
 * Sua principal função é gerenciar páginas JSP do projeto
 *  
 */

@Controller
public class FuncionarioController {
	
	@Autowired //inicializar automaticamente!
	private FuncionarioRepository funcionarioRepository;
	
	@RequestMapping("/funcionario-cadastro")
	public ModelAndView cadastro() {
		
		//instanciando o objeto ModelAndView e definindo o nome da página 
		//que será aberta por esse método
		ModelAndView modelAndView = new ModelAndView("funcionario-cadastro");
		
		//enviará para a página o DTO que fará a coleta dos dados 
		modelAndView.addObject("dto",new FuncionarioCadastroDTO());
		
		return modelAndView;//segue para página
	}
	
	@RequestMapping(value = "cadastrarFuncionario", method = RequestMethod.POST)
	public ModelAndView cadastrarFuncionario(FuncionarioCadastroDTO dto) {
	
		
		ModelAndView modelAndView = new ModelAndView("funcionario-cadastro");
		
		try {
			
			String erros =""; 
			
			if(funcionarioRepository.findByCpf(dto.getCpf()) !=null) {
					erros += ("O CPF informado já se encontra cadastrado. Verifique!!!");
			}
			if(funcionarioRepository.findByMatricula(dto.getMatricula())!=null) {
					erros +=("A matricula informado já se encontra cadastrada. Verifique!!!");	
			}
			
			if(erros !="")
				throw new Exception(erros);
			
			Funcionario funcionario = new Funcionario();
			
			funcionario.setNome(dto.getNome());
			funcionario.setCpf(dto.getCpf());
			funcionario.setMatricula(dto.getMatricula());
			funcionario.setDataAdmissao(DateHelper.toDate(dto.getDataadmissao()));
			funcionario.setSituacao(SituacaoFuncionario.valueOf(dto.getSituacao()));
			
			funcionarioRepository.create(funcionario);
			
			modelAndView.addObject("mensagem", "Funcionário cadastrado com sucesso!!!");
			
		}
		catch(Exception e) {
				modelAndView.addObject("mensagem","Ocorreu um erro:" + e.getMessage());
		}		
		
		modelAndView.addObject("dto",new FuncionarioCadastroDTO());
		
		return modelAndView;//segue para página
	} 
	
	@RequestMapping("/funcionario-consulta")
	public String consulta() {
		return "funcionario-consulta";
	}
	
	@RequestMapping("/funcionario-relatorio")
	public String relatorio() {
		return "funcionario-relatorio";
	}
	
	

}
