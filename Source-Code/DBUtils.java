package njit.cs631;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtils 
{

	
	private final static String driver="com.mysql.jdbc.Driver";
	
	private final static String url="jdbc:mysql://localhost:3306/mydb";
	
	private DBUtils(){
	}
	
	
	static
	{
		try
		{
			
			Class.forName(driver);
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static Connection getConnection()throws Exception
	{
		
		Connection conn=DriverManager.getConnection(url, "root", "root");
		
		return conn;
	}	
	
	public static void close(ResultSet rs)
	{
		try
		{
			if(rs!=null)
			{
				rs.close();
			}
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstm)
	{
	    try 
	    {
			if(pstm!=null)
			{
				pstm.close();
			}
		} 
	    catch (SQLException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	public static void close(Connection conn)
	{
	    try 
	    {
			if(conn!=null && !conn.isClosed())
			{
				conn.close();
			}
		} 
	    catch (SQLException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public static void main(String[] args) 
	{
		try {
			System.out.println(DBUtils.getConnection());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

