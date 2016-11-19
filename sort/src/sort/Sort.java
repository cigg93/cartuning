package sort;

public class Sort {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] numbers = {25, 26, 1, 3, 8};
		bubbleSort(numbers);
	}
	/**
	 * 冒泡排序
	 * @param numbers 传入的数组
	 */
	public static void bubbleSort(int[] numbers){
		int size = numbers.length; // 数组大小
		for(int i = 0; i < size - 1; i++){
			for(int j = 0; j < size - 1 - i; j++){
				if(numbers[j] > numbers[j+1]){ // 交换位置
					int temp = numbers[j];
					numbers[j] = numbers[j+1];
					numbers[j+1] = temp;
				}
			}
		}
		for(int i = 0; i < size; i++){
			System.out.print(numbers[i] + " ");
		}
	}

}
