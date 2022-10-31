package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Jogo;

public interface IJogoDao {
	
	public void gerarJogos() throws SQLException, ClassNotFoundException;
	
	public List<Jogo> listarJogos() throws SQLException, ClassNotFoundException;

	public List<Jogo> buscarJogoPorData(String data) throws SQLException, ClassNotFoundException;

	List<Jogo> listarQuartas() throws SQLException, ClassNotFoundException;

}
