<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>


<div id="thongtinthanhtoan">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="panel panel-default">
                    <div class="panel-heading">Thông tin sản phẩm</div>
                    <div class="panel-body">
                        <table id="cart" class="table table-hover table-condensed">
                            <thead>
                                <tr>
                                    <th style="width:50%">Product</th>
                                    <th style="width:10%">Price</th>
                                    <th style="width:8%">Quantity</th>
                                    <th style="width:22%" class="text-center">Subtotal</th>
                                    <th style="width:10%"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="item" items="${shoppingCart}">
                                    <tr>
                                        <td data-th="Product">
                                            <div class="row">
                                                <div class="col-sm-3 hidden-xs"><img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" class="img-responsive"></div>
                                                <div class="col-sm-9">
                                                    <a href="ProductController?action=go-to-view-product&productId=${item.productId}"><h4 class="nomargin">${item.productName}</h4></a>
                                                </div>
                                            </div>
                                        </td>
                                        <td data-th="Price">${item.price} VNĐ</td>
                                        <td data-th="Quantity">
                                            <input type="number" class="quantity form-control text-center" min="1" value="${item.quantity}"/>
                                        </td>
                                        <td data-th="Subtotal" class="text-center total-price-product">${item.price*item.quantity} VNĐ</td>
                                        <td class="actions" data-th="">
                                            <input class="productId" type="hidden" value="${item.productId}">
                                            <button class="btn button buttonBlue btn-danger btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-trash-o"></i></button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                    </div>
                    <div class="panel-footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-6" style="margin: 10px 0;">
                                    <strong>Tổng cộng: </strong><strong class="tongCong">${totalPrice==null ? 0.0 : totalPrice} VNĐ</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="panel panel-default">
                    <div class="panel-heading">Chọn hình thức thanh toán</div>
                    <form action="CartController">
                        <div class="panel-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <div class="radio">
                                                <label><input type="radio" name="kieutThanhToan" value="false" checked>Thanh toán tại nhà.</label>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="radio">
                                                <label><input type="radio" name="kieutThanhToan" value="true">Thanh toán tại cửa hàng.</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="form-group">
                                <input type="hidden" name="action" value="dat-hang"/>
                                <input type="submit" class="btn btn-primary btn-block" id="update" value="Đặt hàng"/>
                                <h1 style="color: red;">${infCart}</h1>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../Common/footer.jsp" %>
