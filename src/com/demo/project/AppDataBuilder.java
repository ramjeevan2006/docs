package com.demo.project;

import java.util.HashMap;
import java.util.Map;

public class AppDataBuilder {

	private static Map<String, EmployeeVO> dataSource = new HashMap<String, EmployeeVO>();
	
	public static Map<String, EmployeeVO> buildBasicData(){
		dataSource.put("Ramjeevan", new EmployeeVO("Ramjeevan", 24120l, 8861635639l, "Hyderabad", "IS2", 1, "Male") );
		dataSource.put("Saniel", new EmployeeVO("Saniel", 1866l, 999999999l, "Odisha", "IS5", 1,"Male") );
		
		
		
		return dataSource;
	}
	

	
}
