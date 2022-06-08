package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import connecton.DbCon;
import Model.Doctor;


/**
 * Servlet implementation class DoctorsCrudServlet
 */

public class DoctorsCrudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        String Path = request.getServletPath();
        RequestDispatcher dispatcher = null;
        /*======= Admin's actions=======*/
      //insert doctor
        if (Path.equalsIgnoreCase("/save.doctor")) {
        	try {
        	       Connection con=DbCon.getConnection();

				
        	
        	String username= request.getParameter("username");
        	String nom= request.getParameter("nom");
			String prenom= request.getParameter("prenom");
			String tel= request.getParameter("tel");
			String email= request.getParameter("email");
			String password= request.getParameter("password");
			String specialite= request.getParameter("specialite");
			
			 PreparedStatement preparedStatement;
			
				preparedStatement = con.prepareStatement("insert into doctor(username,nom,prenom,tel,email,password,specialite) values (?,?,?,?,?,?,?)");
			
			  preparedStatement.setString(1,username);
			  preparedStatement.setString(2,nom);
			  preparedStatement.setString(3,prenom);
			  preparedStatement.setString(4,tel);
			  preparedStatement.setString(5,email);
			  preparedStatement.setString(6,password);
			  preparedStatement.setString(7,specialite);

			 
			 int row= preparedStatement.executeUpdate();
			 if(row>0) {
				 System.out.println("okkk");
			 }else {
				 System.out.println("laaaa");
			 }} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			request.getRequestDispatcher("list.doctor").forward(request, response);
        	
        }
        
        else if (Path.equalsIgnoreCase("/edit.doctor")) {
        	Doctor doctorToEdit=null;
        	
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id to edit: "+ id);
            Connection con=DbCon.getConnection();

            PreparedStatement preparedStatement = con.prepareStatement("select username,nom,prenom,tel,email,specialite from doctor where id =?");
            preparedStatement.setInt(1, id);
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
				doctorToEdit = new Doctor(username,nom,prenom,tel,email,password,specialite);
			
			}}catch(SQLException | ClassNotFoundException e) {
				e.printStackTrace();}
           
            request.setAttribute("doctorToEdit" , doctorToEdit);

            request.getRequestDispatcher("admin/edit-doctor.jsp").forward(request, response);
        }
        
        else if (Path.equalsIgnoreCase("/update.doctor")) {
            // get infos and save action (add,edit,delete) to database
           
            int id = Integer.parseInt(request.getParameter("id"));
            String username= request.getParameter("username");
            String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String tel= request.getParameter("tel");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String specialite= request.getParameter("specialite");
			
			 boolean rowUpdated=false;
			  try {
			       Connection con=DbCon.getConnection();

				  PreparedStatement preparedStatement = con.prepareStatement("update doctor set username=? nom=?,prenom=?,tel=?,email=?,password=?,specialite=? where id=?");
				  preparedStatement.setString(1, username);
				  preparedStatement.setString(2, nom);
				  preparedStatement.setString(3, prenom);
				  preparedStatement.setString(4, tel);
				  preparedStatement.setString(5, email);
				  preparedStatement.setString(6, password);
				  preparedStatement.setString(7, specialite);
				  
				  rowUpdated = preparedStatement.executeUpdate()>0;
				  
				  if(rowUpdated) {
					  System.out.println("ndaaaa");
				  }
				  else {
					 System.out.println("9lbi 3la l'erreur a benty");}
				  
			  }catch(SQLException e) {
				  e.printStackTrace();
			  } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  
        }
			  
			  else if (Path.equalsIgnoreCase("/delete.doctor")) {
					int id = Integer.parseInt(request.getParameter("id"));
					boolean rowDeleted;
					try {
					       Connection con=DbCon.getConnection();

						PreparedStatement statement = con.prepareStatement("delete from doctor where id=?") ;
							statement.setInt(1, id);
							rowDeleted = statement.executeUpdate() > 0;
							
							
					}catch(Exception e) {
						e.printStackTrace();
					}
					 request.getRequestDispatcher("list.doctor").forward(request, response);
					
		        }
			  
			 /* else {
		        	// get doctors list
		        	try {
		        	       Connection con=DbCon.getConnection();

		        		List<Doctor> doctors =new ArrayList<>();
		        		 //step 2: Create statement using connection object
		      		  PreparedStatement preparedStatement =con.prepareStatement("");
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
		      			  doctors.add(new Doctor(id,username,nom,prenom,tel,email,password,specialite));
		      			  
		        		
		        		
		        		
						request.setAttribute("listDoctors", doctors);
						  request.getRequestDispatcher("/doctorsCrud.jsp").forward(request, response);
						
						
						
					
		        
		        }}catch(Exception e) {
					e.printStackTrace();
				}}
			  
			  */
			
        

	
	
	
	
	
	}
        
        
		
	
	
	
	
	
	}
	





