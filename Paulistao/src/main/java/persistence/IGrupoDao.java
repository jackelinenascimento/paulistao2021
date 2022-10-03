package persistence;

import java.sql.SQLException;
import java.util.List;

import model.GrupoTime;

public interface IGrupoDao {
	
	public List<GrupoTime> listarGrupos() throws SQLException, ClassNotFoundException;

}
