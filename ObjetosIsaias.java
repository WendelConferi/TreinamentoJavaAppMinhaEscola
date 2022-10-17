package com.wendell.restaurante.vo;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

	static Scanner s = new Scanner(System.in);
	static ArrayList<ComidasVO> comidas = new ArrayList<ComidasVO>();

	public static void main(String[] args) {

		int opcaoMenuSelecionada = 0;

		imprimirMenu();
		opcaoMenuSelecionada = s.nextInt();

		while (opcaoMenuSelecionada != 3) {

			if (opcaoMenuSelecionada == 1) {
				inserir();

				imprimirMenu();
				opcaoMenuSelecionada = s.nextInt();
			}

			if (opcaoMenuSelecionada == 2) {
				listar();

				imprimirMenu();
				opcaoMenuSelecionada = s.nextInt();
			}
			if (opcaoMenuSelecionada == 4) {
				remover();

				imprimirMenu();
				opcaoMenuSelecionada = s.nextInt();
			}
			if (opcaoMenuSelecionada == 5) {
				editar();

				imprimirMenu();
				opcaoMenuSelecionada = s.nextInt();
			}
		}
	}

	private static void imprimirMenu() {
		System.out.println("--MENU");
		System.out.println("Digite 3 para sair");
		System.out.println("Digite 1 para inserir");
		System.out.println("Digite 2 para listar");
		System.out.println("Digite 4 para rempver");
		System.out.println("Digite 5 para editar");
	}

	private static void listar() {
		System.out.println("Lista de comidas");

		for (ComidasVO v : comidas) {
			System.out.println(v.getCodComida());
			System.out.println(v.getDesComida());
		}

		imprimirMenu();
	}

	private static void inserir() {
		System.out.println("\n\ninserindo comida...");

		ComidasVO c = new ComidasVO();

		System.out.println("Digite o codigo");
		Integer codigo = s.nextInt();
		c.setCodComida(codigo);

		System.out.println("Digite a descrição da comida");
		String nome = s.next();
		c.setDesComida(nome);

		comidas.add(c);
	}

	private static void remover() {
		System.out.println("Digite o indice do qual quer remover");

		int b = s.nextInt();
		comidas.remove(b);

	}

	private static void editar() {
		System.out.println("Digite o indice do qual quer editar");

		int indiceSelecionado = s.nextInt();

		ComidasVO aux = comidas.get(indiceSelecionado);

		System.out.println("Digite o novo nome");
		aux.setDesComida(s.next());
	}

}
