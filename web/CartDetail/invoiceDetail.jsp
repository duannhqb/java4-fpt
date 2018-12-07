<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/Dashboad-admin-header.jsp" %>


<div id="page-wrapper">
    <div class="container">
    </div>

    <div class="row" style="margin-top: 25px">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-10">
                            <span>HÓA ĐƠN</span>
                        </div>
                        <div class="col-md-2 text-right">
                            <span>#${cart.cartId}</span>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12 mt-5">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3>INVOICED TO</h3>
                                </div>
                                <div class="col-md-8">
                                    <div>
                                        <h5>Khách hàng : ${cart.getUsers().getFullName()}</h5>
                                        <p>Điện thoại : ${cart.getUsers().numberPhone}</p>
                                        <p>Địa chỉ : ${cart.getUsers().address}</p>
                                    </div>
                                </div>
                                <div class="col-md-4 mr-2 text-right">
                                    <div class="mt-5">
                                        <span>Ngày mua hàng : ${cart.paymentDate}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive mt-5">
                                <table class="table table-bordered table-hover text-right">
                                    <thead>
                                        <tr class="text-capitalize">
                                            <th class="text-center" style="width: 5%;">ID</th>
                                            <th class="text-center" style="width: 45%; min-width: 130px;">Tên sản phẩm</th>
                                            <th class="text-center">Số lượng mua</th>
                                            <th class="text-center">Đơn giá</th>
                                            <th class="text-center">Thành tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach var="item" items="${listCartDetail}">
                                            <tr>
                                                <td class="text-center">${item.cartDetailId}</td>
                                                <td class="text-center">${item.getProduct().getProductName()}</td>
                                                <td class="text-center">${item.quantity}</td>
                                                <td class="text-center">${item.getProduct().getPrice()} VNĐ</td>
                                                <td class="text-center">${item.getProduct().getPrice()*item.quantity} VNĐ</td>
                                            </tr>    
                                        </c:forEach>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="4">Tổng tiền thanh toán :</td>
                                            <td class="text-center">${cart.total} VNĐ</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <c:if test="${cart.cartStatus==false}">
                            <div class="text-right" style="margin-right: 15px;">
                                <a href="CartController?action=duyet-don-hang&cartId=${cart.cartId}" class="btn btn-primary">Duyệt đơn hàng</a>
                            </div>
                        </c:if>
                        <c:if test="${cart.cartStatus==true}">
                            <div class="text-right" style="margin-right: 15px;">
                                <a href="CartController?action=huy-duyet-don-hang&cartId=${cart.cartId}" class="btn btn-warning">Hủy duyệt đơn hàng</a>
                            </div>
                        </c:if>
                    </div>
                </div>
                <div class="panel-footer">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->


<%@include file="../Common/Dashboad-admin-footer.jsp" %>

