/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.controllers;

import edu.poly.store.domain.Cart;
import edu.poly.store.domain.CartDetail;
import edu.poly.store.domain.ShoppingCart;
import edu.poly.store.domain.Users;
import edu.poly.store.service.CartDetailService;
import edu.poly.store.service.CartService;
import edu.poly.store.service.ProductService;
import java.io.IOException;
import java.util.Date;
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
@WebServlet(name = "CartController", urlPatterns = {"/CartController"})
public class CartController extends HttpServlet {

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
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        CartService cartService;
        if (action.equals("dat-hang")) {
            cartService = new CartService();
            datHangProcess(cartService, request, response);
            return;
        }
    }

    private void datHangProcess(CartService cartService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ProductService productService = new ProductService();
            boolean kieutThanhToan = Boolean.parseBoolean(request.getParameter("kieutThanhToan"));
//        false : tại nhà
//        true : tại cửa hàng

            List<ShoppingCart> listShoppingCart = (List<ShoppingCart>) request.getSession().getAttribute("shoppingCart");
            int tongThanhToan = 0;

            for (ShoppingCart shoppingCart : listShoppingCart) {
                tongThanhToan += shoppingCart.getPrice() * shoppingCart.getQuantity();
            }

            Users user = (Users) request.getSession().getAttribute("user");
            Cart cart = new Cart();
            cart.setUsers(user);
            cart.setTotal(tongThanhToan);
            cart.setPaymentDate(new Date());
            cart.setCartStatus(false); // mặc định là false : chưa được duyệt
            cart.setCachThanhToan(kieutThanhToan);
            
            Cart c = cartService.addCart(cart);

            for (ShoppingCart shoppingCart : listShoppingCart) {
                CartDetail cartDetail = new CartDetail();
                cartDetail.setCart(c);
                cartDetail.setProduct(productService.getProductById(shoppingCart.getProductId()));
                cartDetail.setQuantity(shoppingCart.getQuantity());

                CartDetailService cartDetailService = new CartDetailService();
                cartDetailService.addCartDetail(cartDetail);
            }
            
            request.getSession().removeAttribute("shoppingCart");
            request.getRequestDispatcher("ApiController?action=remove-shopping-cart").forward(request, response);
        } catch (Exception e) {
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
