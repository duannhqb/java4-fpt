<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="row">
        <div class="col-md-10 col-md-push-1">
            <!--<form action="ProductController" method="post" enctype="multipart/form-data">-->
            <form action="ProductController" method="GET">
                <div class="panel panel-default" style="margin-top: 20px;">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i> THÊM MỚI SẢN PHẨM
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="productName">Tên sản phẩm</label>
                            <input type="text" class="form-control" name="productName" id="productName" placeholder="Nhập tên sản phẩm" value="${param.productName}">
                        </div>

                        <label for="categoryId">Loại sản phẩm</label>
                        <select name="categoryId" id="categoryId" class="form-control">
                            <c:forEach var="category" items="${category}">
                                <option value="${category.categoryId}">${category.categoryName}</option>
                            </c:forEach>
                        </select>

                        <div class="form-group">
                            <label for="image">Ảnh</label>
                            <input type="file" id="image" name="image">
                            <p class="help-block">Ảnh để hiển thị cho sản phẩm.</p>
                        </div>

                        <div class="form-group">
                            <label for="price">Đơn giá</label>
                            <input type="text" class="form-control" name="price" id="hoTen" placeholder="Nhập đơn giá của sản phẩm" value="${param.price}">
                        </div>

                        <label for="quantity">Số lượng</label>
                        <div class="input-group spinner">
                            <input type="text" name="quantity" id="quantity" class="form-control" value="${param.quantity == null? 50 : param.quantity}">
                            <div class="input-group-btn-vertical">
                                <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
                                <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
                            </div>
                        </div>
                    </div>
                    <!--end panel body--> 
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-md-9">                                    
                                <a href="ProductController?action=go-to-list-form" class="btn btn-primary">Trở lại</a>
                            </div>
                            <div class="col-md-3 text-right">
                                <input type="hidden" name="action" value="add-new"/>
                                <label style="color: red;">${infomation}</label>
                                <button type="submit" class="btn btn-success">Thêm mới</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- /#wrapper -->

<%@include file="../Common/Dashboad-admin-footer.jsp" %>