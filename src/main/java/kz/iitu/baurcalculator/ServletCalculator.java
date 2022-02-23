/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package kz.iitu.baurcalculator;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LT.Mark
 */
public class ServletCalculator extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String valor1 = request.getParameter("valor1");
        String valor2 = request.getParameter("valor2");
        String operation = request.getParameter("operation");
        
        if(valor1.equals("") || valor2.equals("") || operation.equals("")){
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        else{
            float val1 = Float.parseFloat(valor1);
            float val2 = Float.parseFloat(valor2);
            
            Calculator calll = new Calculator(val1, val2, operation); 
           
            
            request.getSession().setAttribute("calculator", calll);
            
            request.getRequestDispatcher("exitocampos.jsp").forward(request, response);
        }
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
