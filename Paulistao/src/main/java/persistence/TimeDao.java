package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Time;

public class TimeDao implements ITimeDao{
	
	private GenericDao gDao;
	
	public TimeDao(GenericDao gDao) {
		this.gDao = gDao;
	}
	
	public List<Time> listarTimes() throws SQLException, ClassNotFoundException {
		List<Time> times = new ArrayList<>();
		
		Connection c = gDao.getConnection();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT nomeTime, cidade, estadio ");
		sql.append("FROM times ");
		PreparedStatement ps = c.prepareStatement(sql.toString());
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Time t = new Time();
			t.setNome(rs.getString("nomeTime"));
			t.setCidade(rs.getString("cidade"));
			t.setEstadio(rs.getString("estadio"));
			
			times.add(t);
		}
		
		rs.close();
		ps.close();
		c.close();
		
		return times;
	}

}
