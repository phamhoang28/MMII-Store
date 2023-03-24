/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Admin;

import DAO.productDAO;
import Entity.Category;
import Entity.Product;
import Entity.Sex;
import Entity.Size;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class Update extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Update</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Update at " + request.getContextPath() + "</h1>");
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

        try {
            String product_id = request.getParameter("product_id");
            String category_id = request.getParameter("category_id");
            String product_name = request.getParameter("product_name");
            String product_price = request.getParameter("price");
            String product_size = request.getParameter("size");
            String product_sex = request.getParameter("sex");
            String product_quantity = request.getParameter("quantity");
            String product_img = "images/" + request.getParameter("product_img");
            String product_describe = request.getParameter("describe");
//            int quantity = Integer.parseInt("product_quantity");
//            Float price = Float.parseFloat("product_price");
            //int cid = Integer.parseInt(category_id);
            productDAO c = new productDAO();
            List<Product> product =  c.getProductByCategory(0);
            List<Size> size = c.getSize();
            List<Sex> sex = c.getSex();
            //request.setAttribute("CategoryData", category);
            request.setAttribute("ProductData", product);
            request.setAttribute("SizeData", size);
            request.setAttribute("SexData", sex);
            //request.getRequestDispatcher("/admin/product.jsp").forward(request, response);
           
//            product.setCate(cate);
//            product.setProduct_id(product_id);
//            product.setProduct_name(product_name);
//            product.setProduct_price(price);
//            product.setProduct_describe(product_describe);
//            product.setQuantity(quantity);
//            product.setImg(product_img);
//            product.setSize(list);
//            product.setSex(list2);
            //c.updateProduct( product);
            //response.sendRedirect("update.jsp");
            request.getRequestDispatcher("/admin/update.jsp").forward(request, response);

        } catch (NumberFormatException e) {

        }
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
