<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="row">
        <div class="col-md-10 col-md-push-1">
            <form action="CategoryController" method="GET">
                <div class="panel panel-default" style="margin-top: 20px;">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i> THÊM MỚI LOẠI SẢN PHẨM
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="categoryName">Tên loại sản phẩm</label>
                            <input type="text" class="form-control" name="categoryName" id="categoryName" placeholder="Nhập tên loại sản phẩm" value="${param.categoryName}">
                        </div>
                    </div>
                    <!--end panel body--> 
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-md-9">                                    
                                <a href="CategoryController?action=go-to-list-form" class="btn btn-primary">Trở lại</a>
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