<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<div class="container shopping-cart">
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
            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" class="img-responsive"></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 3</h4>
                            <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum
                                dolor sit amet.</p>
                        </div>
                    </div>
                </td>
                <td data-th="Price">$1.99</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="1">
                </td>
                <td data-th="Subtotal" class="text-center">85.99</td>
                <td class="actions" data-th="">
                    <button class="btn button buttonBlue btn-info btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-refresh"></i></button>
                    <button class="btn button buttonBlue btn-danger btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>

            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" class="img-responsive"></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 3</h4>
                            <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum
                                dolor sit amet.</p>
                        </div>
                    </div>
                </td>
                <td data-th="Price">$1.99</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="1">
                </td>
                <td data-th="Subtotal" class="text-center">85.99</td>
                <td class="actions" data-th="">
                    <button class="btn button buttonBlue btn-info btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-refresh"></i></button>
                    <button class="btn button buttonBlue btn-danger btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>

            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" class="img-responsive"></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 3</h4>
                            <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum
                                dolor sit amet.</p>
                        </div>
                    </div>
                </td>
                <td data-th="Price">$1.99</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="1">
                </td>
                <td data-th="Subtotal" class="text-center">85.99</td>
                <td class="actions" data-th="">
                    <button class="btn button buttonBlue btn-info btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-refresh"></i></button>
                    <button class="btn button buttonBlue btn-danger btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>

            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp" class="img-responsive"></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 3</h4>
                            <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum
                                dolor sit amet.</p>
                        </div>
                    </div>
                </td>
                <td data-th="Price">$1.99</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="1">
                </td>
                <td data-th="Subtotal" class="text-center">85.99</td>
                <td class="actions" data-th="">
                    <button class="btn button buttonBlue btn-info btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-refresh"></i></button>
                    <button class="btn button buttonBlue btn-danger btn-sm"><div class="ripples buttonRipples"><span class="ripplesCircle"></span></div><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr class="visible-xs">
                <td class="text-center"><strong>Total 1.99</strong></td>
            </tr>
            <tr>
                <td>
                    <form action="home.jsp">
                        <button type="submit" class="button buttonBlue btn-block btn-warning"><i class="fa fa-angle-left"></i>Continue
                            <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                        </button>
                    </form>
                </td>
                <td colspan="2" class="hidden-xs"></td>
                <td class="hidden-xs text-center"><strong>Total $1000</strong></td>
                <td>
                    <form action="check-out.jsp">
                        <button type="submit" class="button buttonBlue btn-block btn-success">Check out<i class="fa fa-angle-right"></i>
                            <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                        </button>
                    </form>
                </td>
            </tr>
        </tfoot>
    </table>
</div>

<%@include file="footer.jsp" %>