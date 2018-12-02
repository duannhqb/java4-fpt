<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<%@include file="header.jsp" %>

<div class="login">
    <form action="home.jsp">
        <div class="group">
            <input type="text"><span class="highlight"></span><span class="bar"></span>
            <label>Tên đăng nhập</label>
        </div>
        <div class="group">
            <input type="password"><span class="highlight"></span><span class="bar"></span>
            <label>Mật khẩu</label>
        </div>
        <button type="submit" class="button buttonBlue">Đăng nhập
            <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
        </button>
    </form>
</div>

<%@include file="footer.jsp" %>
