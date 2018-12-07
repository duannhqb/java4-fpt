<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="container">
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-md-5">
            <a href="UserController?action=go-to-list-form" class="btn btn-primary" style="margin-top: 20px;">Trở lại</a>
        </div>
        <div class="col-md-7" style="top: 17px; left: -19px;">
            <form action="UserController">
                <div class="input-group">
                    <input type="hidden" name="action" value="search"/>
                    <input type="text" name="value-search" value="" class="form-control" placeholder="Tìm kiếm với tên người dùng...">
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
                    <i class="fa fa-bar-chart-o fa-fw"></i> DANH SÁCH NGƯỜI DÙNG

                    <div class="pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                Actions
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                                <li><a href="UserController?action=go-to-add-form">Thêm mới người dùng</a>
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
                                <th class="text-center">Tên đăng nhập</th>
                                <th class="text-center">Mật khẩu</th>
                                <th class="text-center">Họ và tên</th>
                                <th class="text-center">Số điện thoại</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Quyền</th>
                                <th class="text-center">Địa chỉ</th>
                                <th class="text-center">Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${listUser}">
                                <tr>
                                    <td class="userId">${user.usersId}</td>
                                    <td>${user.username}</td>
                                    <td>${user.password}</td>
                                    <td>${user.fullName}</td>
                                    <td>${user.numberPhone}</td>
                                    <td>${user.email}</td>
                                    <td>${user.role ? 'Quản lý' : 'Người mua hàng'}</td>
                                    <td>${user.address}</td>
                                    <td class="text-center">
                                        <a href="UserController?action=go-to-edit-form&userId=${user.usersId}" class="btn button btn-success btn-sm">
                                            <div class="ripples buttonRipples">
                                                <span class="ripplesCircle"></span>
                                            </div>
                                            <i class="fa fa-edit"></i>
                                        </a>

                                        <button class="btn button btn-warning btn-sm remove-user-dashboard">
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