<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Dashboard USER</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <div class="row">
        <form action="UserController" method="POST">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> ADD NEW USER
                </div>
                <div class="panel-body">

                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" name="username" id="username" placeholder="Nhập username" value="${infUser.username}">
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Nhập password" value="${infUser.password}">
                    </div>

                    <div class="form-group">
                        <label for="hoTen">Họ và tên</label>
                        <input type="text" class="form-control" name="hoTen" id="hoTen" placeholder="Họ và tên" value="${infUser.fullName}">
                    </div>

                    <div class="form-group">
                        <label for="sdt">Số điện thoại</label>
                        <input type="text" class="form-control" name="sdt" id="sdt" placeholder="Số điện thoại" value="${infUser.numberPhone}">
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="${infUser.email}">
                    </div>

                    <div class="form-group">
                        <div class="radio">
                            <label><input type="radio" name="quyen" value="false" checked>Người mua hàng</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="radio">
                            <label><input type="radio" name="quyen" value="true">Quản lý</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="address">Địa chỉ</label>
                        <input type="text" class="form-control" name="address" id="address" placeholder="Địa chỉ" value="${infUser.address}">
                    </div>
                </div>
                <!--end panel body--> 
                <div class="panel-footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9">                                    
                                <a href="UserController?action=go-to-list-form" class="btn btn-primary">Trở lại</a>
                            </div>
                            <div class="col-md-2">
                                <input type="hidden" name="action" value="add-new"/>
                                <label style="color: red;">${infomation}</label>
                                <button type="submit" class="btn btn-success">Thêm mới</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- /#wrapper -->


<%@include file="../Common/Dashboad-admin-footer.jsp" %>