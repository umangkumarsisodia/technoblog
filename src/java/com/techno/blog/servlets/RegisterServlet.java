/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.techno.blog.servlets;

import com.techno.blog.dao.Userdao;
import com.techno.blog.helper.ConnectionProvide;
import com.techno.blog.entities.user;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Umang Kumar Sisodia
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>TechnoBlog - Sign Up</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            
            //Fetching all data
            
            String checked = request.getParameter("check");
            
            if(checked == null) {
                out.println("Please accept terms and conditions.");
            }
            
            else {
                String fname = request.getParameter("fname");
                String mname = request.getParameter("mname");
                String lname = request.getParameter("lname");
                String email = request.getParameter("email");
                String username = request.getParameter("username");
                String gender = request.getParameter("gender");
                String about = request.getParameter("about");
                String password = request.getParameter("password");
                String cnfPassword = request.getParameter("confirmPassword");
                
                
                out.println(email);
                try {
                    user newUser = new user(fname, mname, lname, email, username, gender, about,  password);
                
                //creating userdao object
                Userdao dao = new Userdao(ConnectionProvide.getConnection());
               if(dao.saveUser(newUser) == true) {
                        out.println("Account created successfully....");
                }
               
              else {
                   out.println("Error");
               }
                }catch(Exception e) {
                    out.println(e.toString());
                }
  
            }
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
