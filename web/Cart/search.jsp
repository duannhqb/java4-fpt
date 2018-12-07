<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="container">
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-md-4">
            <a href="CartController?action=go-to-list-form" class="btn btn-primary" style="margin-top: 20px;">Trở lại</a>
        </div>

        <div class="col-md-7" style="top: 17px; left: -19px;">
            <form action="CartController">
                <div class="input-group">
                    <input type="hidden" name="action" value="search"/>
                    <input type="text" name="value-search" value="" class="form-control" placeholder="Tìm kiếm với mã hóa đơn...">
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
                    <i class="fa fa-bar-chart-o fa-fw"></i> Danh sách đơn hàng
                </div>
                <div class="panel-body">
                    <table class="table table-hover table-bordered" id="dataTables-example">
                        <thead>
                            <tr>
                                <th class="text-center">ID</th>
                                <th class="text-center">Người mua hàng</th>
                                <th class="text-center">Ngày mua hàng</th>
                                <th class="text-center">Tổng tiền</th>
                                <th class="text-center">Trạng thái đơn hàng</th>
                                <th class="text-center">Cách thức thanh toán</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cart" items="${listCart}">
                                <tr>
                                    <td class="text-center">${cart.cartId}</td>
                                    <td class="text-center">${cart.getUsers().getFullName()}</td>
                                    <td class="text-center">${cart.paymentDate}</td>
                                    <td class="text-center">${cart.total}</td>
                                    <td class="text-center">${cart.cartStatus==true ? 'Đã duyệt' : 'Chưa duyệt'}</td>
                                    <td class="text-center">${cart.cachThanhToan==true ? 'Tại cửa hàng' : 'Tại nhà'}</td>
                                    <td class="text-center"><a href="CartController?action=view-detail&cartId=${cart.cartId}">Chi tiết đơn hàng</a></td>
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