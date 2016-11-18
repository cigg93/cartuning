package basic;

import java.io.File;

/**
 * 输出文件目录下的文件
 *
 */
public class ListFiles {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		File file = new File("F:" + File.separator + "cc" + File.separator + "司法" + File.separator);
		printFile(file);

	}
	
	public static void printFile(File file){
		if(file != null){
			if(file.isDirectory()){
				File[] files = file.listFiles();
				for(int i = 0;i < files.length; i++){
					//此处递归
					printFile(files[i]);
				}
			}
			else {
				System.out.println(file);
			}
		}
		
	}

}
