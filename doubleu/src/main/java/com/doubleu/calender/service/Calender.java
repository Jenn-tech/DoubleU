package com.doubleu.calender.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class Calender {
	int year;
	int month;
	int day;
	
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public Calender() {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String time1 = format1.format(time);
		year = Integer.parseInt(time1.substring(0,4));
		month = Integer.parseInt(time1.substring(5,7));
		day = Integer.parseInt(time1.substring(8,10));
		
		setMonthCalender();
	}
	
	public List<Integer> setMonthCalender() {
		
		List<Integer> list = new ArrayList<>();
		
		//2017년 1월 1일 일요일이 기준
		String week[] = {"일","월","화","수","목","금","토"};
		int lastDay[] = {31,28,31,30,31,30,31,31,30,31,30,31};
		if(year%400==0) {
				lastDay[1]=29;
			}else if(year%100==0) {
				lastDay[1]=28;
			}else if(year%4==0) {
				lastDay[1]=29;
			}
		int totalyear = (year-2017-1)*365+((year-2017)/4); // 기준년부터 작년까지의 총 일수
		
		int totalmonth = 0;
		for(int i=0;i<month-1;i++) // 올해의 오늘까지의 총 일수
	       {
			totalmonth+=lastDay[i];
	       }
		
		int totaltoday = totalyear+totalmonth+day;
		int totalweek = totaltoday%7; // 오늘 요일 계산하기
		
		
		int monthfirstday = totalyear+totalmonth+1;
		int monthweek = monthfirstday%7; // 이번 달 1일의 요일 계산하기
		
		
		// 화면단에 뿌려질 날짜리스트
		//첫번째 일요일 날짜부터 차례대로 입력한다.
		//da의 수만큼 이전 달의 날짜를 입력한다.
		int lastmonth = month-2; // 이전달 구하기 lastmonth는 이전달 index 값
		if((month-1)==0) {
			lastmonth = 11;
		}else {
			lastmonth = month-2;
		}
		int lastMonthday = lastDay[lastmonth]; // 이전달 마지막 일 구하기
		System.out.println(lastMonthday);
		
		for(int i=0; i<monthweek; i++) {
			int startNum = lastMonthday-monthweek+1;
			startNum = startNum+i;
			list.add(startNum);
		}
		
		for(int i=0; i<lastDay[month-1]; i++) {
			list.add(i+1);
		}
		
		int nextMonthday = 42-(monthweek+lastDay[month-1]);
		for(int i=0; i<nextMonthday; i++) {
			list.add(i+1);
		}
		
		return list;
	}
	
	//Month 이전,다음
	public List<Integer> changeMonth(int diff) {
		System.out.println("월 변경 시작");
		if((month+diff)>12) {
			setMonth(1);
			setYear(year+1);
		}else if((month+diff)==0) {
			setMonth(12);
			setYear(year-1);
		}else {
			setMonth(month+diff);
		}
		System.out.println(month);
		return setMonthCalender();
	}
	
	//Month오늘
	public List<Integer> changeMonthToday() {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String time1 = format1.format(time);
		year = Integer.parseInt(time1.substring(0,4));
		month = Integer.parseInt(time1.substring(5,7));
		day = Integer.parseInt(time1.substring(8,10));
		
		return setMonthCalender();
	}
	
	public List<Integer> selectChangeMonth(int changedMonth) {
		setMonth(changedMonth);
		return setMonthCalender();
	}
	
	public List<Integer> selectChangeYear(int changedYear) {
		setYear(changedYear);
		return setMonthCalender();
	}
	
	//Week 이전,다음
	public void changeWeek(int diff) {
	}
	
	//Day 이전,다음
	public void changeDay(int diff) {
		setDay(day+diff);
	}	
}
