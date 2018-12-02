<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../Common/header.jsp" %>

<div class="container review-product">
    <div class="row">
        <h2 class="col-md-9 col-md-push-3">Thông tin sản phẩm</h2>
        <div class="col">
            <div class="col-xs-4 col-md-4 col-md-push-2 item-photo">
                <img style="max-width:100%;" src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" />
            </div>
            <div class="col-xs-5 col-md-4 col-md-push-2" style="border:0px solid gray">
                <h3 id="productName">${product.productName}</h3>
                <h5 style="color:#337ab7" id="categoryName">${product.getCategory().categoryName}</h5>
                <h3 style="margin-top:0px;" id="price">${product.price}</h3> VNĐ
                <div class="section" style="padding-bottom:20px; padding-top: 30px;">
                    <h6 class="title-attr"><small>Số lượng</small></h6>                    
                    <div>
                        <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                        <input id="quantity" min="1" value="1" />
                        <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                    </div>
                </div>                
                <div class="section" style="padding-bottom:20px;">
                    <input type="hidden" id="productId" value="${product.productId}"/>
                    <button type="submit" id="add-to-cart" class="btn-block button buttonBlue btn-success">Add to Cart
                        <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                    </button>
                </div>                                        
            </div> 
        </div>      
    </div>


    <div class="row">

        <div class="col-md-2">
            <a href="ProductController" class="button buttonBlue btn-block btn-warning">Xem tiếp
                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
            </a>
        </div>
        <div class="col-md-8"></div>
        <div class="col-md-2">
            <a href="ProductController?action=go-to-shopping-cart" class="button buttonBlue btn-block btn-success">Giỏ hàng
                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
            </a>
        </div>

    </div>
</div>    

<%@include file="../Common/footer.jsp" %>