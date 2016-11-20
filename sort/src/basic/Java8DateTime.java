package basic;

import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;

/**
 * Java8 
 * 输出
 * 1、年月日时分秒
 * 2、从1970年1月1日0时0分0秒到现在的毫秒数
 * 3、取得某月的最后一天
 * 4、格式化日期
 * 5、昨天的当前时刻
 *
 */
public class Java8DateTime {

	public static void main(String[] args) {
		Calendar calendar = Calendar.getInstance();
		LocalDateTime ldt = LocalDateTime.now();
		System.out.println(ldt);
		System.out.println(ldt.getYear());
		System.out.println(ldt.getMonthValue());
		System.out.println(ldt.getDayOfMonth());
		System.out.println(ldt.getHour());
		System.out.println(ldt.getMinute());
		System.out.println(ldt.getSecond());
		System.out.println(System.currentTimeMillis());
		System.out.println(Clock.systemDefaultZone().millis());
		
		System.out.println(calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		LocalDate date = LocalDate.now();
		System.out.println(date);
		System.out.println(date.format(dateTimeFormatter));
		
		LocalDateTime yesterday = ldt.minusDays(1);
		System.out.println(yesterday);
		
		

	}

}
