package modelo.documento;

import modelo.enums.TipoNivelDeTeste;

public abstract class Documento {

	private String identificador;

	private String nomeDocumento;

	private TipoNivelDeTeste nivelDeTeste;

	private Glossario glossario;

	public String getIdentificador() {
		return identificador;
	}

	public void setIdentificador(String identificador) {
		this.identificador = identificador;
	}

	public String getNomeDocumento() {
		return nomeDocumento;
	}

	public void setNomeDocumento(String nomeDocumento) {
		this.nomeDocumento = nomeDocumento;
	}

	public Glossario getGlossario() {
		return glossario;
	}

	public void setGlossario(Glossario glossario) {
		this.glossario = glossario;
	}

	public String toString() {
		return "[identificador: " + identificador + "] [nomeDocumento: "
				+ nomeDocumento + "] ";
	}

	public TipoNivelDeTeste getNivelDeTeste() {
		return nivelDeTeste;
	}

	public void setNivelDeTeste(TipoNivelDeTeste nivelDeTeste) {
		this.nivelDeTeste = nivelDeTeste;
	}

}
