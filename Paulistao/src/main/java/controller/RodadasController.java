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

@WebServlet("/rodadas")
public class RodadasController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private IJogoDao jDao;
	
	public RodadasController() {
		super();
		 this.jDao = new JogoDao(new GenericDao());
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/rodadas.jsp").forward(req, resp);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data = request.getParameter("data");
		List<Jogo> jogos = new ArrayList<Jogo>();
    	String erro = "";
    	String saida = "";
    	try {
				jDao.gerarJogos();
				jogos = this.jDao.buscarJogoPorData(data);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			saida = "Data n�o existe";
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("rodadas.jsp");
			request.setAttribute("erro", erro);
			request.setAttribute("saida", saida);
			request.setAttribute("jogos", jogos);
			rd.forward(request, response);
		}
	}
	
}
