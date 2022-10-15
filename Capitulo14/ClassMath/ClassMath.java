
public class Programa {
	public static void main(String[] args) {
		
		
		double x = 20;
		double y = 30.5;
		
		
		//logaritmo
		double log = Math.log(x);
		System.out.println(log);
		
		//retorna o maior valor entre x e y
		double max = Math.max(x, y);
		System.out.println(max);
		
		//retorna o menor valor entre x e y
		double min = Math.min(x, y);
		System.out.println(min);
		
		//potencia
		double pow = Math.pow(x, 2);
		System.out.println(pow);
		
		//arrendonda para cima se o decimal for maior ou igual a 5
		// senao arredonda para baixo
		long round = Math.round(y);
		System.out.println(round);
		
		//raiz quadrada
		double sqrt = Math.sqrt(x);
		System.out.println(sqrt);
		
		//cosseno
		double cos = Math.cos(y);
		System.out.println(cos);
		
		//seno
		double sin = Math.sin(y);
		System.out.println(sin);
		
		//tangente
		double tan = Math.tan(y);
		System.out.println(tan);
		
	}
}
