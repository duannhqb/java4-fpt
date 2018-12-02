<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>

<div class="login">
    <form>
        <input type="hidden" name="action" value="login"/>
        <div class="group">
            <input type="text" id="name"><span class="highlight"></span><span class="bar"></span>
            <label>Tên đăng nhập</label>
        </div>
        <div class="group">
            <input type="password" id="pass"><span class="highlight"></span><span class="bar"></span>
            <label>Mật khẩu</label>
        </div>
        <button type="submit" id="login" class="button buttonBlue">Đăng nhập
            <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
        </button>
    </form>
    <h1 id="result"></h1>
</div>

<%@include file="../Common/footer.jsp" %>
