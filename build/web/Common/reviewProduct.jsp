<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>


<div class="container review-product">
    <div class="row">
        <div class="col-xs-4 col-md-4 col-md-push-2 item-photo">
            <img style="max-width:100%;" src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" />
        </div>
        <div class="col-xs-5 col-md-4 col-md-push-2" style="border:0px solid gray">
            <!-- Datos del vendedor y titulo del producto -->
            <h3>IPhone X 256GB 4G LTE</h3>    
            <h5 style="color:#337ab7"><a href="#">Iphone</a> · <small style="color:#337ab7">(2018)</small></h5>

            <!-- Precios -->
            <h6 class="title-price"><small>PRECIO OFERTA</small></h6>
            <h3 style="margin-top:0px;">$ 2534</h3>

            <!-- Detalles especificos del producto -->
            <div class="section">
                <h6 class="title-attr" style="margin-top:15px;" ><small>COLOR</small></h6>                    
                <div>
                    <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                    <div class="attr" style="width:25px;background:white;"></div>
                </div>
            </div>
            <div class="section" style="padding-bottom:5px;">
                <h6 class="title-attr"><small>CAPACIDAD</small></h6>                    
                <div>
                    <div class="attr2">16 GB</div>
                    <div class="attr2">32 GB</div>
                </div>
            </div>   
            <div class="section" style="padding-bottom:20px;">
                <h6 class="title-attr"><small>CANTIDAD</small></h6>                    
                <div>
                    <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                    <input value="1" />
                    <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                </div>
            </div>                

            <!-- Botones de compra -->
            <div class="section" style="padding-bottom:20px;">
                <!--<form action="shoppingCartPage.jsp">-->
                <!--<button class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add to Cart</button>-->
                <button type="submit" class="btn-block button buttonBlue btn-success">Add to Cart
                    <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                </button>
                <!--</form>-->
                <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span>Thêm vào danh sách yêu thích</a></h6>
            </div>                                        
        </div>                              
    </div>
</div>    

<%@include file="footer.jsp" %>