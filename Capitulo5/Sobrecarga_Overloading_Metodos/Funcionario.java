class Funcionario {
	String nome;
	String departamento;
	double salario;
	String dataDeEntrada;
	String rg;
	boolean estaNaEmpresa;
	
	public Funcionario(String nome){
		this.nome = nome;
	}

	void calculaSalario(double valor) {
		this.salario = valor - (valor * 0.06);
	}

	void calculaSalario(double valor, double horaExtra) {
		double valorHorasExtra = (valor/30) / 8 * horaExtra;
		this.salario = valor - (valor*0.06) + valorHorasExtra;
	}

	double  calculaSalario() {
		return this.salario = 1000 - (1000 * 0.06);
	}

	void bonifica(double valor){
		salario += valor;
	}

	void demite() {
		estaNaEmpresa = false;
	}

	double calculaGanhoAnual() {
		return salario * 12;
	}
	
}

class Programa {
	public static void main(String[] args) {		
		Funcionario f1 = new Funcionario("Wendel");
		f1.calculaSalario(5000,2);

		System.out.println(f1.salario);
	}
}