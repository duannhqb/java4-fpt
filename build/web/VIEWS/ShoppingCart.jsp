<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>

<div class="container shopping-cart">
    <div class="row">
        <c:if test="${not empty shoppingCart}">
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
                                    <div class="col-sm-2 hidden-xs"><img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" class="img-responsive"></div>
                                    <div class="col-sm-10">
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
                <tfoot>
                    <tr>
                        <td>
                            <a href="ProductController" class="button buttonBlue btn-block btn-warning">Xem tiếp
                                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                            </a>
                        </td>
                        <td colspan="2" class="hidden-xs"></td>
                        <td class="hidden-xs text-center"><strong>Tổng cộng: </strong><strong class="tongCong">${totalPrice} VNĐ</strong></td>
                        <td>
                            <a href="ProductController?action=go-to-check-out" class="button buttonBlue btn-block btn-success">Check out
                                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                            </a>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </c:if>
        <c:if test="${empty shoppingCart}">
            <h1 class="text-center">Bạn chưa chọn sản phẩm nào !!!</h1>
        </c:if>
    </div>
</div>

<%@include file="../Common/footer.jsp" %>