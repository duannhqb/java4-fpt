/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.controllers;

import edu.poly.store.domain.Users;
import edu.poly.store.service.CartService;
import edu.poly.store.service.CategoryService;
import edu.poly.store.service.ProductService;
import edu.poly.store.service.UsersService;
import java.io.IOException;
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
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {

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

        UsersService usersService = new UsersService();

        if (action == null || action.equals("go-to-login")) {
            showLoginPage(request, response);
            return;
        } else if (action.equals("go-to-registration")) {
            showRegistration(request, response);
            return;
        } else if (action.equals("logout")) {
            logoutAndShowHomePage(request, response);
            return;
        } else if (action.equals("update-user")) {
            updateUserAndShowDatHangPage(usersService, request, response);
            return;
        } else if (action.equals("go-to-list-form")) {
            showListPage(usersService, request, response);
            return;
        } else if (action.equals("go-to-edit-form")) {
            showEditPage(usersService, request, response);
            return;
        } else if (action.equals("go-to-find-form")) {
            findUser(usersService, request, response);
            return;
        } else if (action.equals("update")) {
            updateUserAndShowFormEdit(usersService, request, response);
            return;
        } else if (action.equals("go-to-dashboard")) {
            showDashboadPage(request, response);
            return;
        } else if (action.equals("go-to-add-form")) {
            showAddPage(request, response);
            return;
        } else if (action.equals("add-new")) {
            addNewUser(usersService, request, response);
            return;
        } else if (action.equals("search")) {
            findUser(usersService, request, response);
            return;
        }
    }

    private void findUser(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("value-search");
        List<Users> listUserFind = usersService.findUser(name);
        request.setAttribute("listUser", listUserFind);
        request.getRequestDispatcher("Users/search.jsp").forward(request, response);
    }

    private void addNewUser(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("hoTen");
        String phoneNumber = request.getParameter("sdt");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        boolean quyen = Boolean.parseBoolean(request.getParameter("quyen"));

        Users user = new Users();
        user.setAddress(address);
        user.setUsername(username);
        user.setPassword(password);
        user.setFullName(fullname);
        user.setNumberPhone(phoneNumber);
        user.setEmail(email);
        user.setRole(quyen);

        if (usersService.addUser(user) != null) {
            showListPage(usersService, request, response);
        } else {
            request.setAttribute("infomation", "Thêm mới thất bại!");
            showAddPage(request, response);
        }

    }

    private void showAddPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Users/add.jsp").forward(request, response);
    }

    private void showDashboadPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsersService usersService = new UsersService();
        CategoryService categoryService = new CategoryService();
        ProductService productService = new ProductService();
        CartService cartService = new CartService();

        request.setAttribute("countUser", usersService.listUser().size());
        request.setAttribute("countCategory", categoryService.listCategory().size());
        request.setAttribute("countProduct", productService.listProduct().size());
        request.setAttribute("countCart", cartService.listCart().size());
        request.getRequestDispatcher("VIEWS/Admin/Home.jsp").forward(request, response);
    }

    private void updateUserAndShowFormEdit(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("hoTen");
        String phoneNumber = request.getParameter("sdt");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        boolean quyen = Boolean.parseBoolean(request.getParameter("quyen"));

        Users user = new Users();
        user.setUsersId(userId);
        user.setAddress(address);
        user.setUsername(username);
        user.setPassword(password);
        user.setFullName(fullname);
        user.setNumberPhone(phoneNumber);
        user.setEmail(email);
        user.setRole(quyen);

        if (usersService.updateUser(user) != null) {
            showListPage(usersService, request, response);
        } else {
            request.setAttribute("infomation", "Cập nhật thất bại!");
            showEditPage(usersService, request, response);
        }

    }

    private void showEditPage(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        request.setAttribute("infUser", usersService.getUserById(userId));
        request.getRequestDispatcher("Users/edit.jsp").forward(request, response);
    }

    private void showListPage(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("listUser", usersService.listUser());
        request.getRequestDispatcher("Users/list.jsp").forward(request, response);
    }

    private void updateUserAndShowDatHangPage(UsersService usersService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("hoTen");
        String phoneNumber = request.getParameter("sdt");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
//        lấy user đang đăng nhập
        Users user = (Users) request.getSession().getAttribute("user");
        user.setFullName(fullName);
        user.setNumberPhone(phoneNumber);
        user.setEmail(email);
        user.setAddress(address);

        if (usersService.updateUser(user) == null) {
            request.setAttribute("userInf", "Cập nhật thất bại");
            request.getRequestDispatcher("VIEWS/ThongTinThanhToan.jsp").forward(request, response);
        } else {
            request.setAttribute("userInf", "Cập nhật thành công");
            request.getRequestDispatcher("VIEWS/DatHang.jsp").forward(request, response);
        }
    }

    private void logoutAndShowHomePage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().removeAttribute("user");
        request.getRequestDispatcher("ProductController?action=go-to-home").forward(request, response);
    }

    private void showRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("VIEWS/Registration.jsp").forward(request, response);
    }

    private void showLoginPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("VIEWS/Login.jsp").forward(request, response);
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
