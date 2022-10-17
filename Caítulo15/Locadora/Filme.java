
public class Filme implements Comparable<Filme>{
	private int codigo;
	private String nome;
	private double valor;
	private boolean disponivel;
	private static int contador = 1; 

	public Filme() {
		this.codigo += contador;
		contador++;
		this.disponivel = true;
		
	}
	
	public int getCodigo() {
		return codigo;
	}

	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public boolean isDisponivel() {
		return disponivel;
	}

	public void retirar() {
		if(disponivel == true) {
			disponivel = false;
		}else{
			throw new RuntimeException("Este filme não está disponível para locação!");
		}				
	}

	public void devolver() {
		disponivel = true;
	}
	
	
	@Override
	public String toString() {
		String texto = "Informações do Filme\n";
		texto += "Código:" + this.codigo + "\n";
		texto += "Nome:" + this.nome + "\n";
		texto += "Valor: R$" + this.valor + "\n";
		texto += "Disponível:" + this.disponivel + "\n";
		return texto;
	}

	@Override
	public int compareTo(Filme outroFilme) {
		return Integer.compare(this.codigo, outroFilme.codigo);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Filme other = (Filme) obj;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}

	
	
}
