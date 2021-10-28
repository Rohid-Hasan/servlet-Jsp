package controller;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.Cookie;
import java.io.*;
import javax.naming.*;
import javax.sql.*;
import java.sql.*;

public  class LoginServlet extends  HttpServlet{
    protected  void doGet(HttpServletRequest req, HttpServletResponse res) throws
            ServletException, IOException  {
        res.setContentType("text/html");
        res.sendRedirect("views/login.jsp");
    }

    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        res.setContentType("text/html");
        
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        PrintWriter out = res.getWriter();

        Context initCtx = null;
        Context envCtx = null;
        DataSource ds = null;

        try {
            initCtx = new InitialContext();
            envCtx = (Context) initCtx.lookup("java:comp/env");
            ds = (DataSource) envCtx.lookup("jdbc/test"); 
        } catch (Exception ex) {
            out.println("Error while initializing context");
            out.println("<br>");
            out.println(ex.getMessage());
        }

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = ds.getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from user where email='"+email+"'");

            if(rs.next()){
                out.println("Email found");

                String dbPass = rs.getString("password");
                
                if(dbPass.equals(password)){
                    out.println("login successfull");
                }else{
                    out.println("wrong password");
                }
            }else{
                out.println("Invalid email");
            }

        } catch (Exception ex) {
            out.println("Error while connecting database");
            out.println("<br>");
            out.println(ex.getMessage());
        }
    }
}