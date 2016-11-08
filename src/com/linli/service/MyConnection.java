package com.linli.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	
	public Connection getMyConnection(){
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/iamcore_linli?useUnicode=true&characterEncoding=utf-8";
			String user = "root";
			String password = "";
			Connection connection = DriverManager.getConnection(url, user, password);
			System.out.println(connection.getMetaData().getURL());
			return connection;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
			
		}
		
	}

}
