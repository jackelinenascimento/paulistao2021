package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.GrupoTime;

public class GrupoDao implements IGrupoDao {

	private GenericDao gDao;

	public GrupoDao(GenericDao gDao) {
		this.gDao = gDao;
	}

	@Override
	public List<GrupoTime> listarGrupos() throws SQLException, ClassNotFoundException {
		
		List<GrupoTime> grupoTime = new ArrayList<>();

		Connection c = gDao.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append("FROM viewGrupos ");
		PreparedStatement ps = c.prepareStatement(sql.toString());
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			GrupoTime t = new GrupoTime();
			t.setGrupo(rs.getString("grupo"));
			t.setTime(rs.getString("nomeTime"));

			grupoTime.add(t);
		}

		rs.close();
		ps.close();
		c.close();

		return grupoTime;
	}

}
