function evenOdd(){
    $('.faq-question:even').addClass('green');
    $('.faq-answer:even').addClass('green');
    $('.arrow-faq').click(function() {
        jQuery(this).parent().next(".faq-answer").toggle();
        $('.ri-arrow-up-s-line').toggle();
        $('.ri-arrow-down-s-line').toggle();
    });
}

export {evenOdd};