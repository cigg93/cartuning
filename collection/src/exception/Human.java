package exception;

public class Human {

	public static void main(String[] args) throws Exception{
		try {
			try {
				throw new Sneeze();
			}
			catch(Annoyance a) {
				System.out.println("Caught Annoyance");
			}
		}
		finally {
			System.out.println("Hello World!");
		}
	}
}
