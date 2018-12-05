/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.controllers;

import edu.poly.store.domain.Product;
import edu.poly.store.service.CategoryService;
import edu.poly.store.service.ProductService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duann
 */
@WebServlet(name = "ProductController", urlPatterns = {"/ProductController"})
public class ProductController extends HttpServlet {

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
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        ProductService productService = new ProductService();
        String action = request.getParameter("action");
        if (action == null || action.equals("go-to-home")) {
            showListProduct(productService, request, response);
            return;
        } else if (action.equals("go-to-view-product")) {
            showProduct(productService, request, response);
            return;
        } else if (action.equals("go-to-shopping-cart")) {
            showShoppingCartPage(request, response);
            return;
        } else if (action.equals("go-to-thanh-toan")) {
            showThanhToanPage(request, response);
            return;
        } else if (action.equals("go-to-dat-hang")) {
            showDatHangPage(request, response);
            return;
        } else if (action.equals("go-to-list-form")) {
            showListPage(productService, request, response);
            return;
        } else if (action.equals("go-to-edit-form")) {
            showEditPage(productService, request, response);
            return;
        } else if (action.equals("update")) {
            updateProductDashboad(productService, request, response);
            return;
        }
    }

    private void updateProductDashboad(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String image = "";
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        CategoryService categoryService = new CategoryService();

        Product product = new Product();
        product.setProductId(productId);
        product.setProductName(productName);
        product.setCategory(categoryService.getCategoryById(categoryId));
        product.setImage(image);
        product.setPrice(price);
        product.setQuantity(quantity);

        if (productService.updateProduct(product) == null) {
            request.setAttribute("infomation", "Cập nhật thất bại!");
            showEditPage(productService, request, response);
        } else {
            showListPage(productService, request, response);
        }
    }

    private void showEditPage(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        request.setAttribute("product", productService.getProductById(productId));

        CategoryService categoryService = new CategoryService();
        request.setAttribute("category", categoryService.listCategory());
        request.getRequestDispatcher("Product/edit.jsp").forward(request, response);
    }

    private void showListPage(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("listProduct", productService.listProduct());
        request.getRequestDispatcher("Product/list.jsp").forward(request, response);
    }

    private void showDatHangPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("VIEWS/DatHang.jsp").forward(request, response);
    }

    private void showThanhToanPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (null == request.getSession().getAttribute("user")) {
            request.getRequestDispatcher("VIEWS/Login.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("VIEWS/ThongTinThanhToan.jsp").forward(request, response);
        }
    }

    private void showShoppingCartPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("VIEWS/ShoppingCart.jsp").forward(request, response);
    }

    private void showProduct(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer productId = Integer.parseInt(request.getParameter("productId"));
        request.setAttribute("product", productService.getProductById(productId));
        request.getRequestDispatcher("VIEWS/ViewProduct.jsp").forward(request, response);
    }

    private void showListProduct(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("product", productService.listProductLimit(12));
        request.getRequestDispatcher("VIEWS/TrangChu.jsp").forward(request, response);
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
