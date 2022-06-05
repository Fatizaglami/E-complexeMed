package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Model.Doctor;
import connecton.DbCon;
import jakarta.servlet.RequestDispatcher;


public class AddDocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddDocServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;

		try {
			Connection con = DbCon.getConnection();
			String nom= request.getParameter("nom");
			String prenom= request.getParameter("prenom");
			String tel= request.getParameter("tel");
			String email= request.getParameter("email");
			String password= request.getParameter("password");
			String uname = request.getParameter("username");

			//String specialite= request.getParameter("specialite");
			
			
			  PreparedStatement preparedStatement = con.prepareStatement("insert into doctor(nom,prenom,tel,email,password,username) values (?,?,?,?,?,?)");
			  preparedStatement.setString(1,nom);
			  preparedStatement.setString(2,prenom);
			  preparedStatement.setString(3,tel);
			  preparedStatement.setString(4,email);
			  preparedStatement.setString(5,password);
			  preparedStatement.setString(6,uname);

			 // preparedStatement.setString(6,specialite);
			 int row= preparedStatement.executeUpdate();
			 if(row>0) {
				 System.out.println("okkk");
			 }else {
				 System.out.println("laaaa");
			 }
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	


}
