package modelo.sistema;

import java.util.Map;

public class Projeto {

	private int idProjeto;

	private String nomeProjeto;

	private Map<Usuario, Papel> equipe;

	public Projeto() {
		super();
	}

	public int getIdProjeto() {
		return idProjeto;
	}

	public void setIdProjeto(int idProjeto) {
		this.idProjeto = idProjeto;
	}

	public String getNomeProjeto() {
		return nomeProjeto;
	}

	public void setNomeProjeto(String nomeProjeto) {
		this.nomeProjeto = nomeProjeto;
	}

	public Map<Usuario, Papel> getEquipe() {
		return equipe;
	}

	public void setEquipe(Map<Usuario, Papel> equipe) {
		this.equipe = equipe;
	}

}
