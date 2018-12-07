/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.poly.store.controllers;

import edu.poly.store.domain.Category;
import edu.poly.store.service.CategoryService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duann
 */
@WebServlet(name = "CategoryController", urlPatterns = {"/CategoryController"})
public class CategoryController extends HttpServlet {

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
        CategoryService categoryService = new CategoryService();
        if (action.equals("add-new")) {
            addNewCategory(categoryService, request, response);
            return;
        } else if (action.equals("go-to-list-form")) {
            showListPage(categoryService, request, response);
            return;
        } else if (action.equals("go-to-add-form")) {
            showAddNewPage(request, response);
            return;
        } else if (action.equals("go-to-edit-form")) {
            showEditPage(categoryService, request, response);
            return;
        } else if (action.equals("update")) {
            updateCatedory(categoryService, request, response);
            return;
        } else if (action.equals("go-to-find-form")) {
            showSearchPage(categoryService, request, response);
            return;
        } else if (action.equals("search")) {
            showSearchPage(categoryService, request, response);
            return;
        }
    }

    private void showSearchPage(CategoryService categoryService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("listCategory", categoryService.findCategory(request.getParameter("value-search")));
        request.getRequestDispatcher("Category/search.jsp").forward(request, response);
    }

    private void updateCatedory(CategoryService categoryService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Category category = new Category();
            category.setCategoryId(Integer.parseInt(request.getParameter("categoryId")));
            category.setCategoryName(request.getParameter("categoryName"));
            categoryService.updateCategory(category);
            showListPage(categoryService, request, response);
        } catch (Exception e) {
            request.setAttribute("infomation", "Cập nhật thất bại!");
            showEditPage(categoryService, request, response);
        }
    }

    private void addNewCategory(CategoryService categoryService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if (!request.getParameter("categoryName").equals("")) {
                Category category = new Category();
                category.setCategoryName(request.getParameter("categoryName"));
                categoryService.addCategory(category);
                showListPage(categoryService, request, response);
            } else {
                request.setAttribute("infomation", "Thêm mới thất bại!");
                showAddNewPage(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("infomation", "Thêm mới thất bại!");
            showAddNewPage(request, response);
        }
    }

    private void showAddNewPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Category/add.jsp").forward(request, response);
    }

    private void showEditPage(CategoryService categoryService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("category", categoryService.getCategoryById(Integer.parseInt(request.getParameter("categoryId"))));
        request.getRequestDispatcher("Category/edit.jsp").forward(request, response);
    }

    private void showListPage(CategoryService categoryService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("listCategory", categoryService.listCategory());
        request.getRequestDispatcher("Category/list.jsp").forward(request, response);
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
