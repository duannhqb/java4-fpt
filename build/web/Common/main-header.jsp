
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- end header-menu-store -->
<div class="header-menu-main" style="margin-top: -10px;">
    <div class="row">
        <div class="container header-main">
            <div class="col-md-3 header-main-left" style="overflow: hidden">
                <ul class="nav nav-pills nav-stacked">
                    <c:forEach var="item" items="${category}">
                        <li role="presentation"><a href="#">${item.categoryName}</a></li>
                        </c:forEach>
                </ul>
            </div>
            <div class="col-md-9 header-main-right">
                <div class="row">
                    <div id="carousel-id" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-id" data-slide-to="0" class=""></li>
                            <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                            <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item">
                                <div class="overlay"></div>
                                <img class="img-header-main" src="https://images.mobilecity.vn/media/images/2018/11/cover-FB.jpg">
                            </div>
                            <div class="item">
                                <div class="overlay"></div>
                                <img class="img-header-main" src="https://images.mobilecity.vn/media/images/2018/11/IPHONE-MOBILECITY.jpg">
                            </div>
                            <div class="item active">
                                <div class="overlay"></div>
                                <img class="img-header-main" src="https://images.mobilecity.vn/media/images/2018/11/XS-MAX-MC-1.jpg">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-id" data-slide="prev"><img class="img-right" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAD/SURBVGhD7Y8xDgFRFEUHUdmBQquwConERvRam5BoVKJiUxq1DUg0ZpwxLySY2n3JPcnLnz//FecUxvymqqpufOaEgE5ZlmvmxpyYcTzlISL2nC+4H+I5Bzh/RdTwbxcr+uDbbYk4M8NY0wbf1giOUaxpg6gjJEDUERIg6ggJEHWEBIg6QgJEHSEBoo6QANH8ETUIbxr1NxkjBsy90W/gfuHIE1GDcC/EX3CvWcRKHpCeMtfoePJMyRiD+wxxx8iBu2Mkwd0xkuDuGElwd4wkuDtGEtwdIwnujpEE97aYeazkAfdfMcd4zgXunzGreMoHIRNmyywJ6cdvY/5PUTwA1NabXgCBD5AAAAAASUVORK5CYII="></span></a>
                        <a class="right carousel-control" href="#carousel-id" data-slide="next"><img class="img-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAEISURBVGhD7Y+xbQJBEEUPyYnBOhfhFijAgQuxZDISckI34Boc0wJkbsIZRWAHSHe8ux246FL05/SfNNrV7gTvVWYqtG07i2temqbZMP/MkaDXeM4F8jVzJqCH+4njLb7zgPiC+SsZhbQxSL8j3/QVQdoYxFeOUQTxD8co4hhVHKOKY1RxjCqOUcUxqozFMMtYyQPS62i4wdt3fOcA5znS+6I/wNtnrOiD71jED8dTrGmD6GgEU8eaNvg6QgJ8u4hDUR9wxL3Bd9oRHM+xpg2ijpAAUUdIgKgjJEDUERIgmj+iA+FdUR/IGFEX9YF0ER0IPyD+2xdAyogryL8wX8yWeYxnY6ZHVV0A4IebTw9xXbsAAAAASUVORK5CYII="></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- </div> -->
<!-- end header -->