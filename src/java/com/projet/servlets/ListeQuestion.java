/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.projet.servlets;
// TESTE DE COMMIT
import com.projet.DAO.implementation.QuestionDAO;
import com.projet.classe.Question;
import com.projet.connexion.Connexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author usager
 */
public class ListeQuestion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * 
     * ICI JAI MIT EN COMMENTAIRE LE URL BD INSTANCE DE JDBC
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession Session =  request.getSession();
        PrintWriter out = response.getWriter() ;
             /*   try {
            //Chargement du pilote :
            Class.forName(this.getServletContext().getInitParameter("piloteJDBC"));
            
        } catch (ClassNotFoundException ex) {
            request.setAttribute("message", "Impossible de charger le pilote");
            RequestDispatcher r = this.getServletContext().getRequestDispatcher("/login.jsp");
            r.forward(request, response);
        }
        
        Connexion.setUrl(this.getServletContext().getInitParameter("urlDb"));*/
        
        List<Question> listeQ = new LinkedList<Question>();
        QuestionDAO daol = new QuestionDAO(Connexion.getInstance()); 
        listeQ = daol.findAll();
        Session.setAttribute("listeQ", listeQ);
        RequestDispatcher r = this.getServletContext().getRequestDispatcher("/index.jsp?actionPage=creerQuestion");        
        r.forward(request, response);
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
