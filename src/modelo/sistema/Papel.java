package modelo.sistema;

public class Papel {

	private int nomePapel;

	private String nome;

	private Perfil perfil;

	public Papel() {
		super();
	}

	public int getNomePapel() {
		return nomePapel;
	}

	public void setNomePapel(int nomePapel) {
		this.nomePapel = nomePapel;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Perfil getPerfil() {
		return perfil;
	}

	public void setPerfil(Perfil perfil) {
		this.perfil = perfil;
	}
}