package basic;

/**
 * 递归阶乘
 *
 */
public class Factorial {

	public static void main(String[] args) {
		
		System.out.println(factorial(5));
	}
	public static int factorial(int n) {
		if(n == 1) {
			System.out.print(1 + " ");
			return 1;
		}
		else {
			System.out.print(n + " ");
			return n*factorial(n-1);
		}
	}

}
