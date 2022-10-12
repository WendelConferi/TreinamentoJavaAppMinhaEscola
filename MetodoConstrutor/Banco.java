class Conta {
	private int numeroConta;
	private Cliente titular;
	private double saldo;

	//construtor
	public Conta(Cliente titular) {
		this.titular = titular;
	}
	
	public void setNumeroConta(int numeroConta) {
		this.numeroConta = numeroConta;
	}

	public int getNumeroConta() {
		return this.numeroConta;
	}

	public void setTitular(Cliente titular) {
		this.titular = titular;
	}

	public Cliente getTitular() {
		return this.titular;
	}

	public double getSaldo() {
		return saldo;
	}

	boolean sacar(double valor){
		if(saldo >= valor) {
			saldo -= valor;
			return true;
		} else {
			return false;
		}
											
	}

	void depositar(double valor){
		if(valor > 0) {
			saldo += valor; 
		}		
	}

	boolean transferir(Conta contaDestino, double valor){
		if(saldo >= valor){
			saldo -= valor;
			contaDestino.saldo += valor;
			return true;
		} else {
			return false;
		}					
		
	}
	
}

class Cliente {
	private String nome;
	private String cpf;	

	//construtor
	public Cliente(String cpf) {
		this.cpf = cpf;
	}
	

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return this.nome;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getCpf() {
		return this.cpf;
	}
}



class Programa {
	public static void main(String[] args){
		Cliente cliente = new Cliente("030.460.340-67");
		cliente.setNome("Wendel");
		

		Conta conta = new Conta(cliente);
		conta.setTitular(cliente);		
		conta.setNumeroConta(123);
		conta.depositar(2000);


		System.out.println(conta.getTitular());
		System.out.println(conta.getTitular().getNome());
		System.out.println(conta.getTitular().getCpf());
		System.out.println(conta.getNumeroConta());
		System.out.println(conta.getSaldo());
		
		
	}
}
		