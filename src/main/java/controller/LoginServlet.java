package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Beans.LoginBean;
import DAO.AdminDAO;
import DAO.AdminDaoImp;
import DAO.DAOFactory;
import DAO.LoginDao;
import Model.Admin;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private LoginDao logindao;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init() {
        logindao = new LoginDao();
    }
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String username = (String)session.getAttribute("username");
        if(username==null) {
            request.getRequestDispatcher("/Vue/err.jsp").forward(request, response);
            System.out.println("non");
        }
        else {
            request.getRequestDispatcher("/Vue/home.jsp").forward(request, response);
            System.out.println("okkkk");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String type = request.getParameter("type");
        System.out.println(username);
        LoginBean loginbean = new LoginBean();
        //Remplir LoginBean
        loginbean.setUsername(username);
        loginbean.setPassword(password);
        loginbean.setType(type);

        HttpSession session = request.getSession();




        try {
            if (logindao.validate(loginbean))
            {

                //Acquérir le nom et le prenom du patient
                logindao.setColumns(loginbean);
                int id = loginbean.getId();
                String nom = loginbean.getNom();
                String prenom = loginbean.getPrenom();
                session.setAttribute("id",id);
                session.setAttribute("nom",nom);
                session.setAttribute("prenom",prenom);
                session.setAttribute("username", username);

                if(loginbean.getType().equals("Admin")) {
                    request.getRequestDispatcher("/Vue/home.jsp").forward(request, response);
                    System.out.println("admin");
                } else if(loginbean.getType().equals("Medecin")){
                    this.getServletContext().getRequestDispatcher("/espacePsy.jsp").forward(request, response);

                }else {
                    request.getRequestDispatcher("/espacePsy.jsp").forward(request, response);

                }
            }
            else
            {
                String msg = "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\r\n"
                        + "  <strong>Erreur lors de l'authentification !</strong> Verifier votre username ou votre mot de passe ou bien le type de connexion.\r\n"
                        + "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n"
                        + "</div>";
                request.setAttribute("msg",msg);
                request.getRequestDispatcher("/Vue/err.jsp").forward(request, response);
                System.out.println("makayn walu");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

}
