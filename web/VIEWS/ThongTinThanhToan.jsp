<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>


<div id="thongtinthanhtoan">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-push-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Thông tin người nhận</div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label for="hoTen">Họ và tên</label>
                            <input type="text" class="form-control" id="hoTen" placeholder="Họ và tên" value="${user.fullName}">
                        </div>

                        <div class="form-group">
                            <label for="sdt">Số điện thoại</label>
                            <input type="text" class="form-control" id="sdt" placeholder="Số điện thoại" value="${user.numberPhone}">
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" id="email" placeholder="Email" value="${user.email}">
                        </div>

                        <div class="form-group">
                            <label for="address">Địa chỉ</label>
                            <input type="text" class="form-control" id="address" placeholder="Địa chỉ" value="${user.address}">
                        </div>

                    </div>
                    <div class="panel-footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <a class="btn btn-primary" id="update">Cập nhật</a>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <a href="ProductController?action=go-to-dat-hang" class="btn btn-primary" id="update">Tiếp tục</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../Common/footer.jsp" %>
