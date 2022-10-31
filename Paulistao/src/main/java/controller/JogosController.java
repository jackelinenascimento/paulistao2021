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

import model.Jogo;
import persistence.GenericDao;
import persistence.IJogoDao;
import persistence.JogoDao;

@WebServlet("/jogos")
public class JogosController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public JogosController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/jogos.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String botao = request.getParameter("gerar_jogos");
    	List<Jogo> jogos = new ArrayList<Jogo>();
    	String erro = "";
    	String saida = "";
    	
    	GenericDao gDao = new GenericDao();
    	IJogoDao jogoDao = new JogoDao(gDao);
    	
    	try {
    		if(botao.equals("Gerar Jogos")) {
    			jogoDao.gerarJogos();
    			jogos = jogoDao.listarJogos();
    		}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("jogos.jsp");
			request.setAttribute("erro", erro);
			request.setAttribute("saida", saida);
			request.setAttribute("jogos", jogos);
			rd.forward(request, response);
		}
	}
}
