package cn.zafu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnDB {
	public static Connection GetConnection() {
        Connection connection = null;

        try{
			Class.forName("com.mysql.jdbc.Driver");
	
		}
		catch (Exception ex)
		{
			System.out.printf( "jdbc����ʧ��\n" );
		}
		try{
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/boke",
					"root", "123");
		}catch (Exception ex)
		{
			System.out.printf( "���ݿ�����ʧ��\n" );
		}
return connection;
	}
}
