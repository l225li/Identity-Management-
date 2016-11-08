package com.linli.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.linli.datamodel.UserTable;

public class UserService {
	private Connection connection;
	private PreparedStatement preparedStatement;

	public UserService() {
		connection = new com.linli.service.MyConnection().getMyConnection();

	}
	
	public boolean validateUser(UserTable user){
		try {
			preparedStatement=connection.prepareStatement("select * from usertable where username=? and password=?");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			ResultSet rSet=preparedStatement.executeQuery();
			if(rSet.next())
			{
				return true;
			}
			else
			{
				return false;
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
	}

}
