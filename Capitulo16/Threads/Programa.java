
public class Programa {
	public static void main(String[] args) {
		
		Runnable buscandoArquivo = new Runnable() {			
			@Override
			public void run() {
				for(int i = 0 ; i < 2000; i++) {
					System.out.println("Buscando um arquivo");
				}				
			}
		};
		Thread th1 = new Thread(buscandoArquivo);
		th1.start();
		
		Runnable lendoArquivo = new Runnable() {			
			@Override
			public void run() {
				for(int i = 0 ; i < 2000; i++) {
					System.out.println("Lendo um arquivo");
				}				
			}
		};
		Thread th2 = new Thread(lendoArquivo);
		th2.start();
	}
}
