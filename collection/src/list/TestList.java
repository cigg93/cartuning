package list;

import java.util.ArrayList;
import java.util.List;

public class TestList {

	public static void main(String[] args) {
		test();
	}
	
	/**
	 * 测试List的增删改查
	 */
	public static void test(){
		List<String> list = new ArrayList<>(); //钻石语法
		//增加
		list.add("0");
		list.add("1");
		list.add("2");
		list.add("3");
		printList("list:" + list);
		
		//在位置2出添加元素
		list.add(2, "2添加");
		printList("list:" + list);
		
		//修改位置2处的元素
		list.set(2, "修改2添加");
		printList("list:" + list);
		
		//获取位置2处的元素
		String element = list.get(2);
		printList("获取位置2处的元素:" + element);
		
		//删除位置2处的元素
		list.remove(2);
		printList("删除位置2处的元素，list:" + list);
		
		//遍历list
		//for循环方式
		for(int i = 0; i < list.size(); i++){
			printList(list.get(i));
		}
		//foreach方式
		for(String str: list){
			printList(str);
		}
	}
	
	/**
	 * 打印List
	 * @param obj 传入的List对象
	 */
	public static void printList(Object obj){
		System.out.println(obj);
	}
}
