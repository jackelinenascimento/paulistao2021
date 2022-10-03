package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Time;

public interface ITimeDao {
	
	public List<Time> listarTimes() throws SQLException, ClassNotFoundException;

}
