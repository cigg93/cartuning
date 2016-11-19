package basic;

public class MultiplicationTable {

	public static void main(String[] args) {
		//printTable();
		printTable2(9);

	}
	
	public static void printTable(){
		for(int i = 1; i <= 9; i++){
			for(int j = 1; j <= i; j++){
				System.out.print(j + "*" + i + "=" + (j * i)+"\t");
			}
			System.out.println();
		}
	}
	
	public static void printTable2(int i){
		if(i == 1) {
			System.out.println("1*1=1");
		}
		else {
			printTable2(i-1);
			for(int j = 1; j <= i; j++){
				System.out.print(j + "*" + i + "=" + (j * i)+"\t");
			}
			System.out.println();
		}
		
	}
	
	

}
