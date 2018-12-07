/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.controllers;

import edu.poly.store.domain.ShoppingCart;
import edu.poly.store.domain.Users;
import edu.poly.store.service.CategoryService;
import edu.poly.store.service.ProductService;
import edu.poly.store.service.UsersService;
import java.io.IOException;
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
        UsersService usersService;
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
        } else if (action.equals("dang-nhap")) {
            usersService = new UsersService();
            processLogin(usersService, request, response);
            return;
        } else if (action.equals("registration")) {
            usersService = new UsersService();
            registrationUser(usersService, request, response);
            return;
        } else if (action.equals("remove-shopping-cart")) {
            removeShoppingCart(request, response);
            return;
        } else if (action.equals("remove-user-dashboard")) {
            usersService = new UsersService();
            removeUserInDashboard(usersService, request, response);
            return;
        } else if (action.equals("remove-product-dashboard")) {
            removeProductInDashboard(request, response);
            return;
        } else if (action.equals("remove-category-dashboard")) {
            removeCategoryInDashboard(request, response);
            return;
        }
    }

    private void removeCategoryInDashboard(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        categoryService.removeCategory(Integer.parseInt(request.getParameter("categoryId")));
    }

    private void removeProductInDashboard(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductService productService = new ProductService();
        int productId = Integer.parseInt(request.getParameter("productId"));
        productService.removeProduct(productId);
    }

    private void removeUserInDashboard(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        usersService.removeUser(userId);
    }

    private void removeShoppingCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        listCart.removeAll(listCart);
        request.getRequestDispatcher("VIEWS/ShoppingStatus.jsp").forward(request, response);
    }

    private void registrationUser(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String numberPhone = request.getParameter("numberPhone");
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        String email = request.getParameter("email");

        Users user = new Users();
        user.setFullName(fullName);
        user.setAddress(address);
        user.setRole(Boolean.parseBoolean(role));
        user.setUsername(username);
        user.setNumberPhone(numberPhone);
        user.setPassword(password);
        user.setEmail(email);

        if (usersService.addUser(user) == null) {
            request.setAttribute("dangKi", "Đăng ký thất bại!");
            request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
        } else {
            request.setAttribute("dangKi", "Đăng ký thành công!");
            request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
        }

    }

    private void processLogin(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Users user = null;
        try {
            user = usersService.checkLogin(username, password);
        } catch (Exception e) {
        }
        if (user == null) {
            request.setAttribute("infoLogin", "Thông tin đăng nhập sai!!!");
            request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
        } else {
            request.getSession().setAttribute("user", user);
            request.setAttribute("infoLogin", "loginok");
            request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
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
        try {
            listCart.remove(checkDoubleIdProduct(shoppingCart));
            if (listCart.size() == 0) {
                request.getSession().removeAttribute("totalPrice");
            }
            layTongTien(request, response);
        } catch (Exception e) {
        }
    }

    private void layTongTien(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer total = 0;
        for (ShoppingCart shoppingCart1 : listCart) {
            total += shoppingCart1.getPrice() * shoppingCart1.getQuantity();
        }
        request.setAttribute("tongTien", total);
        request.getRequestDispatcher("VIEWS/apiView.jsp").forward(request, response);
    }

    private void tongTien(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer total = 0;
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

        Integer tongTien = quantity * listCart.get(checkDoubleIdProduct(shoppingCart)).getPrice();

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
        Integer price = Integer.parseInt(request.getParameter("price"));

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
