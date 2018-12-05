<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Common/header.jsp" %>

<div class="container">
    <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step">
                <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                <p>Bước 1</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                <p>Bước 2</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                <p>Bước 3</p>
            </div>
        </div>
    </div>
    <form action="UserController" id="registration" role="form">
        <input value="false" type="hidden" id="role"/>
        <div class="row setup-content" id="step-1">
            <div class="col-xs-12">
                <div class="col-md-8 col-md-push-2">
                    <h3> Bước 1</h3>
                    <div class="form-group">
                        <label class="control-label">Họ và tên</label>
                        <input  maxlength="100" type="text" id="fullName" required="required" class="form-control" placeholder="Nhập họ và tên"/>
                    </div>

                    <div class="form-group">
                        <label class="control-label">Tên đăng nhập</label>
                        <input maxlength="200" type="text" id="username" required="required" class="form-control" placeholder="Nhập tên đăng nhập" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Mật khẩu</label>
                        <input maxlength="200" type="password" id="password" required="required" class="form-control" placeholder="Nhập mật khẩu"  />
                    </div>

                    <button type="button" class="button buttonBlue btn-primary nextBtn pull-right">Next
                        <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                    </button>

                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-8 col-md-push-2">
                    <h3> Bước 2</h3>
                    <div class="form-group">
                        <label class="control-label">Email</label>
                        <input maxlength="100" type="text" id="email" required="required" class="form-control" placeholder="Nhập email" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Số điện thoại</label>
                        <input maxlength="200" type="text" id="numberPhone" required="required" class="form-control" placeholder="Nhập số điện thoại"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Địa chỉ</label>
                        <input maxlength="200" type="text" id="address" required="required" class="form-control" placeholder="Nhập địa chỉ"/>
                    </div>
                    <button type="button" id="event-registration" class="button buttonBlue btn-primary nextBtn pull-right">Đăng ký
                        <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                    </button>
                </div>
            </div>
        </div>

        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3 class="text-center" style="margin-top: 50px;" id="result-registration"></h3>
                    <a href="UserController?action=go-to-login" class="button buttonBlue btn-success pull-right">Bấm vào đây để đăng nhập
                        <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                    </a>
                </div>
            </div>
        </div>
    </form>
</div>

<%@include file="../Common/footer.jsp" %>
