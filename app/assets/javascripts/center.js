
jQuery.fn.center = function () {
    var cont = this.outerWidth();
    var cont1 = 400;
    //var cont1 = parseInt($('.box').css('width'));
    var n = Math.floor(cont/cont1);
    var leftWidth = Math.floor((cont - cont1*n)/n);
    
    var widthCont1 = 180;
        widthCont1 = (widthCont1 + leftWidth) + 'px';
    $('.work-short-desc').css('width', widthCont1);
    
    var widthCont2 = (cont1 + leftWidth) + 'px';
    $('.box').css('width', widthCont2);
    
    //this.css("position","absolute");
    //this.css("left", (($(window).width() - this.outerWidth()) / 2) + 
                                                //$(window).scrollLeft() + "px");
    //return this;
}



