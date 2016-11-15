package map;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class WorldCupMap {
	
	public static void main(String[] args) {
		Map<Integer, String> worldCupMap = new HashMap<Integer, String>();
		worldCupMap.put(1930, "乌拉圭");
        worldCupMap.put(1934, "意大利");
        worldCupMap.put(1938, "意大利");
        worldCupMap.put(1950, "乌拉圭");
        worldCupMap.put(1954, "西德");
        worldCupMap.put(1958, "巴西");
        worldCupMap.put(1962, "巴西");
        worldCupMap.put(1966, "英格兰");
        worldCupMap.put(1970, "巴西");
        worldCupMap.put(1974, "西德");
        worldCupMap.put(1978, "阿根廷");
        worldCupMap.put(1982, "意大利");
        worldCupMap.put(1986, "阿根廷");
        worldCupMap.put(1990, "西德");
        worldCupMap.put(1994, "巴西");
        worldCupMap.put(1998, "法国");
        worldCupMap.put(2002, "巴西");
        worldCupMap.put(2006, "意大利");
        worldCupMap.put(2010, "西班牙");
        worldCupMap.put(2014, "德国");
        
        System.out.print("请输入一个年份：");
        Scanner input = new Scanner(System.in);
        int key = input.nextInt();
        if(worldCupMap.containsKey(key)){
        	System.out.println(key + "年，获得世界杯冠军的是：" + worldCupMap.get(key));
        }
        else {
        	System.out.println(key + "该年没有举办世界杯！");
        }
        
        System.out.print("请输入一支球队：");
        input = new Scanner(System.in);
        String value = input.next();
        if(worldCupMap.containsValue(value)){
        	for (Integer year:worldCupMap.keySet()){
        		if(value.equals(worldCupMap.get(year))){
        			System.out.print(year + " ");
        		}
        	}
        }
        else{
        	System.out.print("该球队没有获得世界杯冠军");
        }

	}

}
