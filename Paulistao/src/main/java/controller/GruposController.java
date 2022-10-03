package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GrupoTime;
import persistence.GenericDao;
import persistence.GrupoDao;
import persistence.IGrupoDao;

@WebServlet("/grupos")
public class GruposController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public GruposController() {
		super();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		GenericDao gDao = new GenericDao();
		IGrupoDao tDao = new GrupoDao(gDao);
		String erro = "";
		List<GrupoTime> grupoTimes = new ArrayList<>();

		try {
			grupoTimes = tDao.listarGrupos();
		} catch (ClassNotFoundException | SQLException e) {
			erro = e.getMessage();
		} finally {
			req.setAttribute("grupoTimes", grupoTimes);
			req.setAttribute("erro", erro);
			req.getRequestDispatcher("/grupos.jsp").forward(req, resp);
		}
	}
}
