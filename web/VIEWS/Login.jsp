<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>

<div class="login">
    <form>
        <div class="group">
            <input type="text" id="name"><span class="highlight"></span><span class="bar"></span>
            <label>Tên đăng nhập</label>
        </div>
        <div class="group">
            <input type="password" id="pass"><span class="highlight"></span><span class="bar"></span>
            <label>Mật khẩu</label>
        </div>
        <button id="login" class="button buttonBlue">Đăng nhập
            <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
        </button>
        <h4 style="color: red" class="text-center mb-3 mt-3" id="result"></h4>
    </form>
</div>

<%@include file="../Common/footer.jsp" %>