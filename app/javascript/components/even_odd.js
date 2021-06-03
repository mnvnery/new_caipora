function evenOdd(){
    $('.faq-question:even').addClass('green');
    $('.faq-answer:even').addClass('green');
    $('.arrow-faq').click(function() {
        jQuery(this).parent().next().toggle();
        $(this).toggleClass('ri-arrow-up-s-line');
    });
}

export {evenOdd};