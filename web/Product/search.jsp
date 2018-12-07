<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="container">
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-md-5">
            <a href="ProductController?action=go-to-list-form" class="btn btn-primary" style="margin-top: 20px">Trở lại</a>
        </div>

        <div class="col-md-7" style="top: 17px; left: -19px;">
            <form action="ProductController">
                <div class="input-group">
                    <input type="hidden" name="action" value="search"/>
                    <input type="text" name="value-search" value="" class="form-control" placeholder="Tìm kiếm với tên sản phẩm...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
        </div>
    </div>
    <!-- /.row -->

    <div class="row" style="margin-top: 34px">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> DANH SÁCH SẢN PHẨM

                    <div class="pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                Actions
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                                <li><a href="ProductController?action=go-to-add-form">Thêm mới sản phẩm</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-hover table-bordered" id="dataTables-example">
                        <thead>
                            <tr>
                                <th class="text-center">ID</th>
                                <th class="text-center">Sản phẩm</th>
                                <th class="text-center">Loại sản phẩm</th>
                                <th class="text-center">Ảnh</th>
                                <th class="text-center">Đơn giá</th>
                                <th class="text-center">Số lượng tồn kho</th>
                                <th class="text-center">Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="product" items="${listProduct}">
                                <tr>
                                    <td class="productId text-center">${product.productId}</td>
                                    <td class="text-center">${product.productName}</td>
                                    <td class="text-center">${product.getCategory().getCategoryName()}</td>
                                    <td class="text-center">${product.image}</td>
                                    <td class="text-center">${product.price}</td>
                                    <td class="text-center">${product.quantity}</td>
                                    <td class="text-center">
                                        <a href="ProductController?action=go-to-edit-form&productId=${product.productId}" class="btn button btn-success btn-sm">
                                            <div class="ripples buttonRipples">
                                                <span class="ripplesCircle"></span>
                                            </div>
                                            <i class="fa fa-edit"></i>
                                        </a>

                                        <button class="btn button btn-warning btn-sm remove-product-dashboad">
                                            <div class="ripples buttonRipples">
                                                <span class="ripplesCircle"></span>
                                            </div>
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="panel-footer">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->


<%@include file="../Common/Dashboad-admin-footer.jsp" %>