 package com.linli.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.linli.datamodel.Identity;

public class IdentityService {
	private Connection connection;
	private PreparedStatement preparedStatement;

	public IdentityService() {
		connection = new com.linli.service.MyConnection().getMyConnection();

	}

	public boolean addIdentity(Identity identity) {
		try {
			preparedStatement = connection.prepareStatement("insert into IdentityTable "
					+ "(First Name,Last Name,Sex,Email,Birth Date) "
					+ "values(?,?,?,?,?)");
			
			preparedStatement.setString(1, identity.getFirstName());
			preparedStatement.setString(2, identity.getLastName());
			preparedStatement.setByte(3, identity.getSex());
			preparedStatement.setString(4, identity.getEmail());
			preparedStatement.setDate(5, identity.getBirthDate());
	
			preparedStatement.executeUpdate();
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

}
