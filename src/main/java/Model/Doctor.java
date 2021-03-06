package Model;

import java.io.Serializable;

public class Doctor implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int id;
	private String username;
	private String nom;
	private String prenom;
	private String email;
	private String tel;
	private String password;
	private String specialite;
	
	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public Doctor(String username, String nom, String prenom, String email, String tel, String password,
			String specialite) {
		super();
		this.username = username;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
		this.password = password;
		this.specialite = specialite;
	}
	
	
	 public Doctor() {}
	 
	 
	public Doctor(String nom, String prenom, String email, String tel, String password, String specialite) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
		this.password = password;
		this.specialite = specialite;
	}


	public Doctor(int id,String username, String nom, String prenom, String email, String tel, String password, String specialite) {
		super();
		this.username=username;
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
		this.password = password;
		this.specialite = specialite;
	}


	public Doctor(int id, String nom, String prenom, String email, String tel) {
		
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Doctor [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", tel=" + tel
				+ ", password=" + password + ", specialite=" + specialite + "]";
	}
	
	

}
