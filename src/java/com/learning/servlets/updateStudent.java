
package com.learning.servlets;

import com.learning.dao.StudentDao;
import com.learning.entities.student;
import com.learning.helper.ConnectionProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class updateStudent extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {
            
            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String add = request.getParameter("add");
            String clg = request.getParameter("clg");
            String gen = request.getParameter("gender");
            
            Part part = request.getPart("img");
            String fname = part.getSubmittedFileName();
            
            InputStream in = part.getInputStream();
            byte []data = new byte[in.available()];
            in.read(data);
            String path = request.getRealPath("/")+"/src/stud-img"+File.separator+fname;

            try (FileOutputStream fos = new FileOutputStream(path)) {
                fos.write(data);
            }
            
            student st = new student(name,"","",dob,add,clg,gen,"",fname);
            
            StudentDao dao = new StudentDao(ConnectionProvider.getConnection());
            boolean status = dao.updateStudent(st);
            
            if(status){
                out.println("done");
            }
            else{
                out.println("Some sql constraints are been voilated, please check again.\nUser may already exits \nEmail and phone number may be reapeted.");
            }
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
            throws ServletException, IOException{
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
