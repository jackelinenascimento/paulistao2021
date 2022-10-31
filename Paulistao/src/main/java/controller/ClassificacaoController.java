package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Resultado;
import persistence.ClassificacaoDao;
import persistence.GenericDao;
import persistence.IClassificacaoDao;

@WebServlet("/classificacao")
public class ClassificacaoController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private IClassificacaoDao cDao;

	public ClassificacaoController() {
		super();
		this.cDao = new ClassificacaoDao(new GenericDao());
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/classificacao.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String botao = request.getParameter("class_geral"); 	
    	List<Resultado> resultados = new ArrayList<Resultado>();	
    	String erro = "";
    	String saida = "";
    	try {
    		if(botao.equals("Classificacao Geral")) {
    			resultados = this.cDao.classificacaoGeral();
    		}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("classificacao.jsp");
			request.setAttribute("erro", erro);
			request.setAttribute("saida", saida);
			request.setAttribute("resultados", resultados);
			rd.forward(request, response);
		}
	}

}
