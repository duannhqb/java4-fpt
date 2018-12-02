/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.controllers;

import edu.poly.store.domain.ShoppingCart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duann
 */
@WebServlet(name = "ApiController", urlPatterns = {"/ApiController"})
public class ApiController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    List<ShoppingCart> listCart = new ArrayList<>();
    ShoppingCart shoppingCart;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        shoppingCart = new ShoppingCart();
        if (action.equals("add-to-cart")) {
            addProductToCart(request, response);
            return;
        } else if (action.equals("update-quantity")) {
            updateQuantity(request, response);
            return;
        } else if (action.equals("lay-tong-tien")) {
            layTongTien(request, response);
            return;
        } else if (action.equals("remote-product")) {
            removeProduct(request, response);
            return;
        } else if (action.equals("dem-gio-hang")) {
            demGioHang(request, response);
            return;
        }
    }

    private void demGioHang(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("soLuong", listCart.size());
        request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
    }

    private void removeProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer productId = Integer.parseInt(request.getParameter("productId"));
        shoppingCart.setProductId(productId);
        listCart.remove(checkDoubleIdProduct(shoppingCart));
        layTongTien(request, response);
    }

    private void layTongTien(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        float total = 0;
        for (ShoppingCart shoppingCart1 : listCart) {
            total += shoppingCart1.getPrice() * shoppingCart1.getQuantity();
        }
        request.setAttribute("tongTien", total);
        request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
    }

    private void tongTien(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        float total = 0;
        for (ShoppingCart shoppingCart1 : listCart) {
            total += shoppingCart1.getPrice() * shoppingCart1.getQuantity();
        }
        request.getSession().setAttribute("totalPrice", total);
    }

    private void updateQuantity(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer productId = Integer.parseInt(request.getParameter("productId"));
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        shoppingCart.setProductId(productId);
        listCart.get(checkDoubleIdProduct(shoppingCart)).setQuantity(quantity);

        float tongTien = quantity * listCart.get(checkDoubleIdProduct(shoppingCart)).getPrice();

        tongTien(request, response);

        request.setAttribute("price", tongTien);
        request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
    }

    private void addProductToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String categoryName = request.getParameter("categoryName");
        Integer productId = Integer.parseInt(request.getParameter("productId"));
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        float price = Float.parseFloat(request.getParameter("price"));

        shoppingCart.setProductName(productName);
        shoppingCart.setCategoryName(categoryName);
        shoppingCart.setProductId(productId);
        shoppingCart.setPrice(price);
        shoppingCart.setQuantity(quantity);

        if (null == request.getSession().getAttribute("shoppingCart")) {
            listCart.add(shoppingCart);
        } else {
            if (checkDoubleIdProduct(shoppingCart) == -1) {
                listCart.add(shoppingCart);
            } else {
                listCart.get(checkDoubleIdProduct(shoppingCart)).setQuantity(listCart.get(checkDoubleIdProduct(shoppingCart)).getQuantity() + shoppingCart.getQuantity());
            }
        }

        request.getSession().setAttribute("shoppingCart", listCart);
        request.setAttribute("quantityCart", listCart);
        tongTien(request, response);
        request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
    }

    private int checkDoubleIdProduct(ShoppingCart shoppingCart) {
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getProductId() == shoppingCart.getProductId()) {
                return i;
            }
        }
        return -1;
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
