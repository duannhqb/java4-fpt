<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>
<%@include file="../Common/main-header.jsp" %>

<!-- start content -->
<div class="container" id="content">

    <div class="card">
        <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
        </div>
        <div class="row">

            <c:forEach var="item" items="${product}">
                <div class="col-sm-6 col-md-3 col-xs-12">
                    <a href="ProductController?action=go-to-view-product&productId=${item.productId}">
                        <div class="thumbnail">
                            <div class="image-thumbnail">
                                <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                            </div>
                            <div class="caption">
                                <h4 class="text-center">${item.productName}</h4>
                                <div class="caption-footer">
                                    <div class="don-gia">${item.price}</div>
                                    <div class="bd-bt"></div>
                                    <button type="button" class="btn">Xem chi tiết
                                        <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
            <!-- end -->
        </div>
        <!-- end row -->
    </div>
    <!-- end card -->
</div>
<!-- end content -->

<%@include file="../Common/footer.jsp" %>