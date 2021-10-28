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
import java.util.ArrayList;

import model.*;


public class ProductListServlet extends HttpServlet{
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException{
    res.setContentType("text/html");

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
        rs = stmt.executeQuery("select * from product");

        ArrayList<Product> productList = new ArrayList<Product>();

        while(rs.next()){
          int id = (int)rs.getString("id");
          String title = rs.getString("title");
          double price = (double)rs.getString("price");
          String category = rs.getString("category");
          String description = rs.getString("description");

          Product product = new Product(id,title,price,category,description);
          productList.add(product);
          
        }

        req.setAttribute("products", productList);
        req.getRequestDispatcher("views/product-list.jsp").forward(req, res);

    } catch (Exception ex) {
        out.println("Error while connecting database");
        out.println("<br>");
        out.println(ex.getMessage());
    }





  }
}