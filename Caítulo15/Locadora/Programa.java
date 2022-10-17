import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Scanner;


public class Programa {
	public static void main(String[] args) {
		Collection<Filme> filmes = new HashSet<>();
		
		System.out.println("-------------Cadastro de Filmes---------------");
		
		try(Scanner entrada = new Scanner(System.in)){
			String prosseguir = "s";
			
			while("s".equalsIgnoreCase(prosseguir)) {
				System.out.println("Filme:");
				String nome = entrada.nextLine();
				
				System.out.println("Valor: R$");
				String valor = entrada.nextLine();
				
				Filme filme = new Filme();
				filme.setNome(nome);
				filme.setValor(Double.parseDouble(valor));
				
				if(filmes.contains(filme)) {
					System.out.println("Este filme já foi adicionado");
				}else{
					filmes.add(filme);
					System.out.println("Filme adicionado com sucesso");
				}
				System.out.println("Deseja adicionar outro filme? (s/n)");
				System.out.println(filme.hashCode());
				prosseguir = entrada.nextLine();
			}
			for(Filme filme : filmes) {
				System.out.println(filme.toString());
			}
			
		}
		
		
	}
}












