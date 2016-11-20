package exception;

public class TestException {

	public static void main(String[] args) {
		try {
			throw new B("B");
		} catch (A e){
			System.out.println("A");
		} catch (Exception e) {
			System.out.println("Exception");
		}

	}

}
