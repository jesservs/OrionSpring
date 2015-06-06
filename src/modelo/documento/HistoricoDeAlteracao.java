package modelo.documento;

import java.util.Date;

public class HistoricoDeAlteracao {

	private int idHistoricoAlteracao;

	private String identificador;

	private String tipo; // INCLUSÃO, ALTERAÇÃO ou EXCLUSÃO

	private Date dataAlteracao;

	private String antes;

	private String depois;

	public HistoricoDeAlteracao() {
	}

	public HistoricoDeAlteracao(int idHistoricoAlteracao, String identificador,
			String tipo, Date dataAlteracao, String antes, String depois) {
		super();
		this.idHistoricoAlteracao = idHistoricoAlteracao;
		this.identificador = identificador;
		this.tipo = tipo;
		this.dataAlteracao = dataAlteracao;
		this.antes = antes;
		this.depois = depois;
	}

	public int getIdHistoricoAlteracao() {
		return idHistoricoAlteracao;
	}

	public void setIdHistoricoAlteracao(int idHistoricoAlteracao) {
		this.idHistoricoAlteracao = idHistoricoAlteracao;
	}

	public String getIdentificador() {
		return identificador;
	}

	public void setIdentificador(String identificador) {
		this.identificador = identificador;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Date getDataAlteracao() {
		return dataAlteracao;
	}

	public void setDataAlteracao(Date dataAlteracao) {
		this.dataAlteracao = dataAlteracao;
	}

	public String getAntes() {
		return antes;
	}

	public void setAntes(String antes) {
		this.antes = antes;
	}

	public String getDepois() {
		return depois;
	}

	public void setDepois(String depois) {
		this.depois = depois;
	}

}
