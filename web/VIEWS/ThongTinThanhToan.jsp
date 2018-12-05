<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>


<div id="thongtinthanhtoan">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-push-2">
                <div class="panel panel-default">
                    <form action="UserController">
                        <input type="hidden" name="action" value="update-user"/>
                        <div class="panel-heading">Thông tin người nhận</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="hoTen">Họ và tên</label>
                                <input type="text" class="form-control" name="hoTen" id="hoTen" placeholder="Họ và tên" value="${user.fullName}">
                            </div>

                            <div class="form-group">
                                <label for="sdt">Số điện thoại</label>
                                <input type="text" class="form-control" name="sdt" id="sdt" placeholder="Số điện thoại" value="${user.numberPhone}">
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="${user.email}">
                            </div>

                            <div class="form-group">
                                <label for="address">Địa chỉ</label>
                                <input type="text" class="form-control" name="address" id="address" placeholder="Địa chỉ" value="${user.address}">
                            </div>

                        </div>
                        <div class="panel-footer">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <button class="btn btn-primary" type="submit">Cập nhật</button>
                                            <h2>${userInf}</h2>
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
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../Common/footer.jsp" %>
