package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Doctor;
import Model.rv;

public class AppointementDAO {
	 private Connection con;
	    private static String query;
	    private static PreparedStatement pst;
	    private static ResultSet rs;
	    
		public AppointementDAO(Connection con) {
			super();
			this.con = con;
		}
		
		public List<rv> getAllAppById(int id){
		    List<rv> appointements = new ArrayList<rv>();
		    try {
				query = "select * from rv where id_p=? ";
				
				pst = this.con.prepareStatement(query);
				pst.setInt(1, id);
				rs = pst.executeQuery();
				while(rs.next()) {
					rv row = new rv();
					row.setId(rs.getInt("id"));
					row.setId_d(rs.getInt("id_d"));
					row.setId_p(rs.getInt("id_p"));
					row.setDate(rs.getDate("date"));
					
					appointements.add(row);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
	    	return appointements;
	    }
		public List<rv> getAllDocAppById(int id){
		    List<rv> appointements = new ArrayList<rv>();
		    try {
				query = "select * from rv where id_d=? ";
				
				pst = this.con.prepareStatement(query);
				pst.setInt(1, id);
				rs = pst.executeQuery();
				while(rs.next()) {
					rv row = new rv();
					row.setId(rs.getInt("id"));
					row.setId_d(rs.getInt("id_d"));
					row.setId_p(rs.getInt("id_p"));
					row.setDate(rs.getDate("date"));
					
					appointements.add(row);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
	    	return appointements;
	    }

}
