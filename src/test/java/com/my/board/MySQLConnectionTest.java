package com.my.board;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/boardprogram?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String USER = "study";
	private static final String PW = "study";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		
		try(Connection conn1 = DriverManager.getConnection(URL, USER, PW);
			Connection conn2 = DriverManager.getConnection(URL, USER, PW);){
			
			System.out.println("===== mysql connection test start =====");
            System.out.println(conn1);
            System.out.println(conn2);
            System.out.println("===== mysql connection test end =====");
            
		} catch(Exception e) {
            e.printStackTrace();
        }
	}
}
