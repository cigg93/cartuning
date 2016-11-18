package basic;
/**
 * 
 * 字符串反转
 *
 */
public class StringReverse {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String originStr = "123456";
		System.out.println(reverse(originStr));

	}
	
	
	public static String reverse(String originStr) {
        if(originStr == null || originStr.length() <= 1) 
            return originStr;
        return reverse(originStr.substring(1)) + originStr.charAt(0);
    }

}
