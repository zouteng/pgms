package com.sgm.pgms;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Test {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		/* SimpleDateFormat sdfx = new SimpleDateFormat("MM/dd/yyyy");
		 SimpleDateFormat sdfh = new SimpleDateFormat("yyyy-MM-dd");
		 
		 String nowTime2 = "";
		 try{
		     nowTime2 = sdfh.format(sdfx.parse("11/18/2013")); 
		 }catch(Exception e){
		     e.printStackTrace();
		 }
		 
		 System.out.println(nowTime2);
		    */
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String tsStr = "2011-05-09 11:49:45";
		try {
			ts = Timestamp.valueOf(tsStr);
			System.out.println(ts);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void testquery() {
		
	}
	
	//可变型参数
	static void f(int required,String... trailing){
		System.out.println("required:"+required);
		for(String s:trailing){
			System.out.println(s+"");
		}
		
	}
}
