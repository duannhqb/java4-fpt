$('#add-to-cart').click(function () {
    let productName = $('#productName').text();
    let productId = $('#productId').val();
    let categoryName = $('#categoryName').text();
    let price = $('#price').text();
    let quantity = $('#quantity').val();

    $.ajax({
        type: 'GET',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        contentType: 'text/html',
        data: {
            action: "add-to-cart",
            productName: productName,
            productId: productId,
            categoryName: categoryName,
            price: price,
            quantity: quantity
        },
        success: function (value) {
            $('#badge-bag').text(value);
        }
    }).done(function () {
        $.ajax({
            type: 'GET',
            url: "/Duannhpd02217_ASS_JAVA4/ApiController",
            data: {
                action: "lay-tong-tien"
            },
            success: function (value) {
                $('.tongCong').text(value + " VNĐ");
            }
        });
    });
});

// page shopping cart
$('.quantity').change(function () {
    let ss = $(this);
    let quantity = $(this).val();
    let productId = $(this).closest('tr').find('.productId').val();
    $.ajax({
        type: 'GET',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "update-quantity",
            productId: productId,
            quantity: quantity
        },
        success: function (value) {
            ss.closest("tr").find(".total-price-product").text(value + " VNĐ");
        }
    }).done(function () {
        $.ajax({
            type: 'GET',
            url: "/Duannhpd02217_ASS_JAVA4/ApiController",
            data: {
                action: "lay-tong-tien"
            },
            success: function (value) {
                $('.tongCong').text(value + " VNĐ");
            }
        });
    });
});

$('.quantity').keyup(function () {
    let ss = $(this);
    let quantity = $(this).val();
    let productId = $(this).closest('tr').find('.productId').val();
    $.ajax({
        type: 'GET',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "update-quantity",
            productId: productId,
            quantity: quantity
        },
        success: function (value) {
            ss.closest("tr").find(".total-price-product").text(value + " VNĐ");
        }
    }).done(function () {
        $.ajax({
            type: 'GET',
            url: "/Duannhpd02217_ASS_JAVA4/ApiController",
            data: {
                action: "lay-tong-tien"
            },
            success: function (value) {
                $('.tongCong').text(value + " VNĐ");
            }
        });
    });
});

// xoa gio hang
$('.btn-danger').click(function () {
    let ss = $(this);
    let productId = $(this).closest('tr').find('.productId').val();

    $.ajax({
        type: 'GET',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "remote-product",
            productId: productId
        },
        success: function (value) {
            ss.closest('tr').remove();
            $('.tongCong').text(value + " VNĐ");
        }
    }).done(function () {
        $.ajax({
            type: 'GET',
            url: "/Duannhpd02217_ASS_JAVA4/ApiController",
            data: {
                action: "dem-gio-hang"
            },
            success: function (value) {
                $('#badge-bag').text(value);
            }
        });
    });
});


//  xử lý login
$('#login').click(function () {
    let username = $('#name').val();
    let password = $('#pass').val();

    $.ajax({
        type: 'GET',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "dang-nhap",
            username: username,
            password: password
        },
        success: function (value) {
            if (value.indexOf("loginok") !== -1) {
                $(location).attr('href', 'ProductController');
            } else {
                $('#result').text(value);
            }
        }
    });

    return false;
});

// xử lý đăng ký
$('#event-registration').click(function () {
    let fullName = $('#fullName').val();
    let username = $('#username').val();
    let password = $('#password').val();
    let email = $('#email').val();
    let numberPhone = $('#numberPhone').val();
    let address = $('#address').val();
    let role = $('#role').val();

    $.ajax({
        type: 'POST',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "registration",
            username: username,
            fullName: fullName,
            password: password,
            numberPhone: numberPhone,
            address: address,
            role: role,
            email: email
        },
        success: function (value) {
            $('#result-registration').text(value);
        }
    });

    return false;
});

//  Xóa user in dashboard
$('.remove-user-dashboard').click(function () {
    let ss = $(this);
    let userId = $(this).closest('tr').find('.userId').text();

    $.ajax({
        type: 'POST',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "remove-user-dashboard",
            userId: userId
        },
        success: function () {
            ss.closest('tr').remove();
        }
    });

    return false;
});


//  Xóa san pham in dashboard
$('.remove-product-dashboard').click(function () {
    let ss = $(this);
    let productId = $(this).closest('tr').find('.productId').text();

    $.ajax({
        type: 'POST',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "remove-product-dashboard",
            productId: productId
        },
        success: function () {
            ss.closest('tr').remove();
        }
    });

    return false;
});

// upload image
//let files = [];
//$('#image').change(function (event) {
//    files = event.target.files;
//
//    forms = new FormData();
//    forms.append("file", files[0]);
//
//    $.ajax({
//        type: 'POST',
//        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
//        data: {forms, action:"upload-image"},
//        contentType: false,
//        processData: false,
//        enctype: "multipart/form-data"
//    });
//});


//  Xóa category in dashboard
$('.remove-category-dashboard').click(function () {
    let ss = $(this);
    let categoryId = $(this).closest('tr').find('.categoryId').text();

    $.ajax({
        type: 'POST',
        url: "/Duannhpd02217_ASS_JAVA4/ApiController",
        data: {
            action: "remove-category-dashboard",
            categoryId: categoryId
        },
        success: function () {
            ss.closest('tr').remove();
        }
    });

    return false;
});