package DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.*;

public class DoctorDAO {
	private String jdbcURL="jdbc:mysql://localhost:3306/complexmed?useSSL=false";
    private String jdbcUsername="root";
    private String jdbcPassword="";
    private String jdbcDriver="com.mysql.cj.jdbc.Driver";
    
    private Connection con;
  private static final String INSERT_DOCTORS_BY_ID="INSERT INTO doctor (username,nom,prenom,tel,email,password,specialite) VALUES (?,?,?,?,?,?,?);"; 
  private static final String SELECT_DOCTOR_BY_ID ="select id,nom,preom,tel,email,specialite from doctor where id =?;";
  private static final String SELECT_ALL_DOCTORS ="select * from doctor;";
  private static final String DELETE_DOCTOR_SQL="delete from doctor where id=?;";
  private static final String UPDATE_DOCTOR_SQL ="update doctor set nom=?,prenom=?,tel=?,email=?,password=?,specialite=? where id=?;";
public DoctorDAO() {
	 try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complexemed","root","");
     } catch (SQLException e) {
         e.printStackTrace();
     } catch (ClassNotFoundException e) {
         e.printStackTrace();
     }
	
}

 /* protected Connection getConnection() {
	  Connection connection=null;
	  try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		  
	  }catch(SQLException e) {
		  e.printStackTrace();
	  }catch(ClassNotFoundException e) {
		  e.printStackTrace();
	  }
	return connection;  
  }*/
  
  //insert doctor 
  public void insertDoctor(Doctor doctor) {
	  System.out.println(INSERT_DOCTORS_BY_ID);
	  try {
		  
		  PreparedStatement preparedStatement = con.prepareStatement("insert into doctor (username,nom,prenom,tel,email,password,specialite) values(?,?,?,?,?,?,?)");
		  preparedStatement.setString(1,doctor.getUsername());
		  preparedStatement.setString(2,doctor.getNom());
		  preparedStatement.setString(3,doctor.getPrenom());
		  preparedStatement.setString(4,doctor.getTel());
		  preparedStatement.setString(5,doctor.getEmail());
		  preparedStatement.setString(6,doctor.getPassword());
		  preparedStatement.setString(7,doctor.getSpecialite());
		  preparedStatement.executeUpdate();
		  
		  
	  }catch(SQLException e) {
		  printSQLException(e);
	  }
	  
  }
  
  // select doctor by id
  public Doctor selectDoctor(int id) {
	  Doctor doctor=null;
	// Step 1: Establishing a Connection
			try (
					// Step 2:Create a statement using connection object
					PreparedStatement preparedStatement = con.prepareStatement(SELECT_DOCTOR_BY_ID);) {
				preparedStatement.setInt(1, id);
				System.out.println(preparedStatement);
				// Step 3: Execute the query or update query
				ResultSet rs = preparedStatement.executeQuery();

				// Step 4: Process the ResultSet object.
				while (rs.next()) {
					String username= rs.getString("username");
					String nom= rs.getString("nom");
					String prenom = rs.getString("prenom");
					String tel =rs.getString("tel");
					String email =rs.getString("email");
					String password =rs.getString("password");
					String specialite =rs.getString("specialite");
					doctor = new Doctor(username,nom,prenom,tel,email,password,specialite);
					
					
				}
			} catch (SQLException e) {
				printSQLException(e);
			}
	  return doctor;
  }
  
  //select all doctors
  
  public List<Doctor> selectAllDoctors(){
	  List<Doctor> doctors =new ArrayList<>();
	  //step1 : Establishing a connection 
	  try {
		  
		  //step 2: Create statement using connection object
		  PreparedStatement preparedStatement =con.prepareStatement(SELECT_ALL_DOCTORS);
		   //step3: Execute the query or update query
		  ResultSet rs= preparedStatement.executeQuery();
		  
		  
		  //step4: Process the Resultset object 
		  while(rs.next()) {
			  int id = rs.getInt("id");
			  String username= rs.getString("username");
			  String nom= rs.getString("nom");
			  String prenom= rs.getString("prenom");
			  String tel= rs.getString("tel");
			  String email= rs.getString("email");
			  String password= rs.getString("password");
			  String specialite= rs.getString("specialite");
			  doctors.add(new Doctor(username,nom,prenom,tel,email,password,specialite));
			  
			  
		  }
	  }catch(SQLException e) {
		  printSQLException(e);
	  }
	  return doctors;
	  
  }
  
  public boolean deleteDoctor(int id) throws SQLException {
		boolean rowDeleted;
		try (
				PreparedStatement statement = con.prepareStatement(DELETE_DOCTOR_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
  
  
  public boolean updateDoctor(Doctor doctor) throws SQLException{
	  boolean rowUpdated=false;
	  try {
		 
		  PreparedStatement preparedStatement = con.prepareStatement(UPDATE_DOCTOR_SQL);
		  preparedStatement.setString(1, doctor.getNom());
		  preparedStatement.setString(2, doctor.getPrenom());
		  preparedStatement.setString(3, doctor.getTel());
		  preparedStatement.setString(4, doctor.getEmail());
		  preparedStatement.setString(5, doctor.getPassword());
		  preparedStatement.setString(6, doctor.getSpecialite());
		  rowUpdated = preparedStatement.executeUpdate()>0;
		  
	  }catch(SQLException e) {
		  printSQLException(e);
	  }
	  return rowUpdated;
  }
  
  
  
  
  
  
  
  private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
  
  
}




