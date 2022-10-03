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

import model.Time;
import persistence.GenericDao;
import persistence.ITimeDao;
import persistence.TimeDao;

@WebServlet("/times")
public class TimesController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public TimesController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		GenericDao gDao = new GenericDao();
		ITimeDao tDao = new TimeDao(gDao);
		String erro = "";
		List<Time> times = new ArrayList<>();

		try {
			times = tDao.listarTimes();
		} catch (ClassNotFoundException | SQLException e) {
			erro = e.getMessage();
		} finally {
			req.setAttribute("times", times);
			req.setAttribute("erro", erro);
			req.getRequestDispatcher("/times.jsp").forward(req, resp);
		}
	}
}
