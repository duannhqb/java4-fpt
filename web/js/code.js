// registration
$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
                $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-primary').addClass('btn-default');
            $item.addClass('btn-primary');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function () {
        var curStep = $(this).closest(".setup-content"),
                curStepBtn = curStep.attr("id"),
                nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                curInputs = curStep.find("input[type='text'],input[type='url']"),
                isValid = true;

        $(".form-group").removeClass("has-error");
        for (var i = 0; i < curInputs.length; i++) {
            if (!curInputs[i].validity.valid) {
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
            }
        }

        if (isValid)
            nextStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-primary').trigger('click');
});

// shopping cart
$(document).ready(function () {
    //-- Click on detail
    $("ul.menu-items > li").on("click", function () {
        $("ul.menu-items > li").removeClass("active");
        $(this).addClass("active");
    })

    $(".attr,.attr2").on("click", function () {
        var clase = $(this).attr("class");

        $("." + clase).removeClass("active");
        $(this).addClass("active");
    })

    //-- Click on QUANTITY
    $(".btn-minus").on("click", function () {
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)) {
            if (parseInt(now) - 1 > 0) {
                now--;
            }
            $(".section > div > input").val(now);
        } else {
            $(".section > div > input").val("1");
        }
    })
    $(".btn-plus").on("click", function () {
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)) {
            $(".section > div > input").val(parseInt(now) + 1);
        } else {
            $(".section > div > input").val("1");
        }
    })
})

// div

//$('.material-click').on('click', function (e) {
//    var element, circle, d, x, y;
//    element = $(this);
//    if (element.find(".md-click-circle").length == 0) {
//        element.prepend("<span class='md-click-circle'></span>");
//    }
//    circle = element.find(".md-click-circle");
//    circle.removeClass("md-click-animate");
//    if (!circle.height() && !circle.width()) {
//        d = Math.max(100, 100);
//        circle.css({height: d, width: d});
//    }
//    x = e.pageX - element.offset().left - circle.width() / 2;
//    y = e.pageY - element.offset().top - circle.height() / 2;
//    circle.css({top: y + 'px', left: x + 'px'}).addClass("md-click-animate");
//});

//$('#wrapper').on('click', function (e) {
//    var element, circle, d, x, y;
//    element = $(this);
//    if (element.find(".md-click-circle").length == 0) {
//        element.prepend("<span class='md-click-circle'></span>");
//    }
//    circle = element.find(".md-click-circle");
//    circle.removeClass("md-click-animate");
//    if (!circle.height() && !circle.width()) {
//        d = Math.max(100, 100);
//        circle.css({height: d, width: d});
//    }
//    x = e.pageX - element.offset().left - circle.width() / 2;
//    y = e.pageY - element.offset().top - circle.height() / 2;
//    circle.css({top: y + 'px', left: x + 'px'}).addClass("md-click-animate");
//});

$('.spinner .btn:first-of-type').on('click', function () {
    $('.spinner input').val(parseInt($('.spinner input').val(), 10) + 1);
});
$('.spinner .btn:last-of-type').on('click', function () {
    $('.spinner input').val(parseInt($('.spinner input').val(), 10) - 1);
});