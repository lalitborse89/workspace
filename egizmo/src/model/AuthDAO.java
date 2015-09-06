package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthDAO {



	private static Connection c = null;
	private static ResultSet rset = null;

	//  Database checking
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/eGizmo";
	static final String DB_USER = "root";
	static final String DB_PASS = "";


	public AuthDAO()	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/egizmo", "root", "");
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	
	// to check user password
		public static int checkUserPass(String userName, String password){

			c = null;
			PreparedStatement prepareds;
			int match = -1;

			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

				String sql = "select username,password,sellerid from seller where username = ?";
				prepareds = c.prepareStatement(sql);
				prepareds.setString(1, userName);
				ResultSet rs = prepareds.executeQuery();
				if (rs.next()) {
					String dbUser = rs.getString(1);
					String dbPass = rs.getString(2);
					int dbId = rs.getInt(3);

					if(dbUser.equals(userName) && dbPass.equals(password))
						match = dbId;
				}
			}
			catch (Exception e) {
				e.printStackTrace();
				return match;
			}
			return match;
		}
		
		// get userid
		public static User getUserById(int uid){
			c = null;
			PreparedStatement ps;
			User user1 = new User();

			try
			{
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);


				String query = "select userName from seller where sellerId="+uid;
				ps = c.prepareStatement(query);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					user1.userName = rs.getString(1);
					return user1;
				}
			}
			catch (Exception e) {
				e.printStackTrace();
				return user1;
			}
			return user1;
		}
	


	//isUserNameAvailable-Seller Registration form

	public static boolean isUserNameAvailable(String userName){

		String sql = "select buyerid from buyer where username = '"+userName+"'";

		try {

			PreparedStatement ps = c.prepareStatement(sql);
			rset = ps.executeQuery();
			return rset.next();
		}
		catch (SQLException e) {
			return false;
		}
		catch(NullPointerException e){
			return false;
		} 
	}

	public static int enterNewUser(String firstName, String lastName, String middleName, String emailAddress, String phoneNumber, String streetAddress, String city, String state, String pincode, String userName , String password){
		int newUser = -1;
		c = null;
		PreparedStatement ps;

		try
		{
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
			String insertTableSQL = "insert into buyer (firstName,lastName,middleName,"
					+ "emailAddress,phoneNumber,streetAddress,city,state,pincode,username, password) VALUES"
				+ "(?,?,?,?,?,?,?,?,?,?,?)";
			ps = c.prepareStatement(insertTableSQL);
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, middleName);
			ps.setString(4, emailAddress);
			ps.setString(5, phoneNumber);
			ps.setString(6, streetAddress);
			ps.setString(7, city);
			ps.setString(8, state);
			ps.setString(9, pincode);
			ps.setString(11, userName);
			ps.setString(10, password);
			
			// execute insert SQL statement
			if(ps.executeUpdate()==0);
			newUser =0;
			System.out.println("Record is inserted into Buyer table!");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return newUser;
	}
	

	//isUserNameAvailable-Seller Registration form

	public static boolean isSellerAvailable(String userName){

		String sql = "select sellerid from buyer where username = '"+userName+"'";

		try {

			PreparedStatement ps = c.prepareStatement(sql);
			rset = ps.executeQuery();
			return rset.next();
		}
		catch (SQLException e) {
			return false;
		}
		catch(NullPointerException e){
			return false;
		} 
	}
		
		
		
		public static int enterNewSeller(String companyName,String emailAddress,String phoneNumber,String url,String options,String notification,String account,String routing,String userName,String password)	{
			int newUser = -1;
			c = null;
			PreparedStatement ps;

			try
			{
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
				String insertTableSQL = "insert into seller (companyName,emailAddress,phoneNumber,URL,"
						+ "ShippingOptions,Notification,accountNumber,routingNumber,userName,password) VALUES"
					+ "(?,?,?,?,?,?,?,?,?,?)";
				ps = c.prepareStatement(insertTableSQL);
				ps.setString(1, companyName);
				ps.setString(2, emailAddress);
				ps.setString(3, phoneNumber);
				ps.setString(4, url);
				ps.setString(5, options);
				ps.setString(6, notification);
				ps.setString(7, account);
				ps.setString(8, routing);
				ps.setString(9, userName);
				ps.setString(10, password);

				// execute insert SQL statement
				if(ps.executeUpdate()==0);
				newUser =0;
				System.out.println("Record is inserted into Seller table!");
			}
			catch (SQLException e) {
				e.printStackTrace();
			}

			return newUser;
		}


	// to enter new Product
	public static int enterNewProduct(String name, float cost, float shippingCost, String imagePath,String category) throws ClassNotFoundException{

		int newProduct = -1;
		c = null;
		PreparedStatement ps;

		try
		{
			Class.forName(JDBC_DRIVER);
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
			String insertTableSQL = "INSERT INTO PRODUCT"
					+ "(NAME, COST, SHIPPINGCOST, IMAGEPATH,CATEGORY) VALUES"
					+ "(?,?,?,?,?)";
			ps = c.prepareStatement(insertTableSQL);
			ps.setString(1, name);
			ps.setFloat(2, cost);
			ps.setFloat(3, shippingCost);
			ps.setString(4, imagePath);
			ps.setString(5, category);
			// execute insert SQL statement
			if(ps.executeUpdate()==0);
			newProduct =0;
			System.out.println("Record is inserted into Product table!");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return newProduct;
	}


	public static Product viewProduct(int productId){

		c = null;
		PreparedStatement ps;
		Product prod = new Product();

		try
		{
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);


			String query = "select productId,name,cost,shippingCost,imagePath,category from product where productId"+productId;
			ps = c.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				prod.setName(rs.getString(2));
				prod.setCost(rs.getFloat(3));
				prod.setShippingCost(rs.getFloat(4));
				prod.setImagePath(rs.getString(5));
				prod.setCategory(rs.getString(6));
				return prod;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			return prod;
		}
		return prod;
	}

	// get product by ID
	public static Product getProductById(int productId){
		c = null;
		PreparedStatement ps;
		Product prod = new Product();

		try
		{
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);


			String query = "select name,cost,shippingCost,imagePath,category from product where productId="+productId;
			ps = c.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				prod.name = rs.getString(1);
				prod.cost = rs.getFloat(2);
				prod.shippingCost = rs.getFloat(3);
				prod.imagePath = rs.getString(4);
				prod.category=rs.getString(5);
				return prod;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			return prod;
		}
		return prod;
	}
	
	
	//Update Product 
	public static int updateProductById(int productId ,String name, float cost, float shippingCost, String imagePath,String category) throws ClassNotFoundException{
		c = null;
		PreparedStatement ps;
		Product prod = new Product();
		int i=0;
		try
		{
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

			String query = "update product set name=?,cost=?,shippingCost=?,imagePath=?,category=? where productId="+productId;
			
			ps = c.prepareStatement(query);
			ps.setString(1, name);
			ps.setFloat(2, cost);
			ps.setFloat(3, shippingCost);
			ps.setString(4, imagePath);
			ps.setString(5, category);
			i= ps.executeUpdate();	
			return i;
		}
		catch (Exception e) {
			e.printStackTrace();
			return i;
		}
		
	}
	
	
	


	// to enter new user
	public static Product editProduct(int productId,String name, float cost, float shippingCost, String imagePath ,String category) throws ClassNotFoundException{

		int flag = -1;
		c = null;
		PreparedStatement ps;
		Product prod = new Product();

		try
		{
			Class.forName(JDBC_DRIVER);
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);


			/*String name = prod.getName();
			float cost = prod.getCost();
			float shippingCost = prod.getShippingCost();
			String imagePath = prod.getImagePath();*/

			String insertTableSQL = "UPDATE PRODUCT SET NAME = ?, "
					+ "COST = ?, SHIPPINGCOST = ?, IMAGEPATH = ? ,CATEGORY=? WHERE productId ="+productId;

			ps = c.prepareStatement(insertTableSQL);

			ResultSet rs = ps.executeQuery();

			ps.setString(1, name);
			ps.setFloat(2, cost);
			ps.setFloat(3, shippingCost);
			ps.setString(4, imagePath);
			ps.setString(5, category);
			// execute insert SQL statement
			if(ps.executeUpdate()==0);
			flag =0;
			System.out.println("Record is updated into Product table!");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return prod;
	}




	public static void DB_Close() throws Throwable
	{
		try
		{
			if(c!=null)
			{
				c.close();
			}
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}

	}

}//end class