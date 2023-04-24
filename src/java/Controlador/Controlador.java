/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author KAKAKDK
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     String consultar="consultar.jsp";
    String registrar="registrar.jsp";
    String editar="editar.jsp";
    String menu = "Menu.jsp";
   
    Persona p= new Persona();
    PersonaDAO pd= new PersonaDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("consultar")){
            acceso=consultar;
        }
        else if(action.equalsIgnoreCase("registrar")){
            acceso=registrar;
        }else if(action.equalsIgnoreCase("Agregar")){
             String nom=request.getParameter("Correo");
            String nss=request.getParameter("Apellidos");
            int id=Integer.parseInt(request.getParameter("Nombre"));
            p.setId(id);
            p.setNSS(nss);
            p.setNombre(nom);
            pd.registrar(p);
        }else if(action.equalsIgnoreCase("Actualizar")){
            String nom=request.getParameter("Correo");
            String nss=request.getParameter("Apellidos");
            int id=Integer.parseInt(request.getParameter("Nombre"));
            p.setId(id);
            p.setNSS(nss);
            p.setNombre(nom);
            pd.editar(p);
            acceso=consultar;
        }else if(action.equalsIgnoreCase("editar")){
           request.setAttribute("idper",request.getParameter("Nombre"));
           acceso=editar;
        }else if(action.equalsIgnoreCase("Elimnar"))
        {
           request.setAttribute("idper",request.getParameter("Nombre"));
           int ide=Integer.parseInt(request.getParameter("Nombre"));
           p.setId(ide);
           pd.eliminar(ide);
           acceso=consultar;
        }
            
            
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
