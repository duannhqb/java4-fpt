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