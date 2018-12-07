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

//    private static final long serialVersionUID = 1L;
//
//    // location to store file uploaded
//    private static final String UPLOAD_DIRECTORY = "images/products";
//
//    // upload settings
//    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
//    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
//    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
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
            updateProductDashboard(productService, request, response);
            return;
        } else if (action.equals("search")) {
            searchProduct(productService, request, response);
            return;
        } else if (action.equals("go-to-find-form")) {
            searchProduct(productService, request, response);
            return;
        } else if (action.equals("go-to-add-form")) {
            showAddPage(request, response);
            return;
        } else if (action.equals("add-new")) {
            addNewProduct(productService, request, response);
            return;
        }
    }

//    
//    String fileImage = "";
//
//    private void uploadImage(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        // checks if the request actually contains upload file
//        if (!ServletFileUpload.isMultipartContent(request)) {
//            // if not, we stop here
//            PrintWriter writer = response.getWriter();
//            writer.println("Error: Form must has enctype=multipart/form-data.");
//            writer.flush();
//            return;
//        }
//
//        // configures upload settings
//        DiskFileItemFactory factory = new DiskFileItemFactory();
//        // sets memory threshold - beyond which files are stored in disk 
//        factory.setSizeThreshold(MEMORY_THRESHOLD);
//        // sets temporary location to store files
//        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
//
//        ServletFileUpload upload = new ServletFileUpload(factory);
//
//        // sets maximum size of upload file
//        upload.setFileSizeMax(MAX_FILE_SIZE);
//
//        // sets maximum size of request (include file + form data)
//        upload.setSizeMax(MAX_REQUEST_SIZE);
//
//        // constructs the directory path to store upload file
//        // this path is relative to application's directory
//        String uploadPath = getServletContext().getRealPath("")
//                + File.separator + UPLOAD_DIRECTORY;
//
//        // creates the directory if it does not exist
//        File uploadDir = new File(uploadPath);
//        if (!uploadDir.exists()) {
//            uploadDir.mkdir();
//        }
//
//        try {
//            // parses the request's content to extract file data
//            @SuppressWarnings("unchecked")
//            List<FileItem> formItems = upload.parseRequest(request);
//
//            if (formItems != null && formItems.size() > 0) {
//                // iterates over form's fields
//                for (FileItem item : formItems) {
//                    // processes only fields that are not form fields
//                    if (!item.isFormField()) {
//                        String fileName = new File(item.getName()).getName();
//                        String filePath = uploadPath + File.separator + fileName;
//                        File storeFile = new File(filePath);
//
//                        // saves the file on disk
//                        item.write(storeFile);
//                        fileImage = fileName;
//                    }
//                }
//            }
//        } catch (Exception e) {
//            System.out.println(e.toString());
//        }
//    }
    private void addNewProduct(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        uploadImage(request, response);
        try {
            String productName = request.getParameter("productName");
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            String image = "";
            int price = Integer.parseInt(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            CategoryService categoryService = new CategoryService();

            Product product = new Product();
            product.setProductName(productName);
            product.setCategory(categoryService.getCategoryById(categoryId));
            product.setImage(image);
            product.setPrice(price);
            product.setQuantity(quantity);

            productService.addProduct(product);
            showListPage(productService, request, response);

        } catch (Exception e) {
            request.setAttribute("infomation", "Thêm mới thất bại!");
            showAddPage(request, response);
        }
    }

    private void showAddPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        request.setAttribute("category", categoryService.listCategory());
        request.getRequestDispatcher("Product/add.jsp").forward(request, response);
    }

    private void searchProduct(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String value = request.getParameter("value-search");
        request.setAttribute("listProduct", productService.findProduct(value));
        request.getRequestDispatcher("Product/search.jsp").forward(request, response);
    }

    private void updateProductDashboard(ProductService productService, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
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

            productService.updateProduct(product);
            showListPage(productService, request, response);

        } catch (Exception e) {
            request.setAttribute("infomation", "Cập nhật thất bại!");
            showEditPage(productService, request, response);
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
        CategoryService categoryService = new CategoryService();

        request.setAttribute("product", productService.listProductLimit(12));
        request.setAttribute("category", categoryService.listCategory());
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
