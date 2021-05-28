package br.com.cotiinformatica.filters;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class AuthorizationFilter
 */
public class AuthorizationFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public AuthorizationFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		//converter os objetos request e response do filter em vers�es mais atualizadas..
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		/*
		  	Iremos criar uma regra que verifique se o usuario est� autenticado.
			Esta regra dever� ser aplicada a todas as p�ginas do sistema, exceto:
				�	navegando em..: /
				�	navegando em..: /autenticarUsuario
				�	navegando em..: /logout
		 */
		
		String path = req.getServletPath();
		
		List<String> urlsPermitidas = new ArrayList<String>();
		urlsPermitidas.add("/");
		urlsPermitidas.add("/autenticarUsuario");
		urlsPermitidas.add("/logout");
		
		//verificando se a p�gina que o usuario esta navegando n�o �
		//uma das 3 permitidias, neste caso ele dever� estar autenticado
		if(!urlsPermitidas.contains(path)) {
			
			//verificar se o sistema n�o contem a session 'usuario_autenticado'
			if(req.getSession().getAttribute("usuario_autenticado") == null) {
				//redirecionar para a p�gina inicial
				resp.sendRedirect("/projetoSpringMVC01/");
			}
		}	

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}


