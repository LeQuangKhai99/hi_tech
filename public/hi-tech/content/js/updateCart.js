Number.prototype.format = function(n, x) {
    var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\.' : '$') + ')';
    return this.toFixed(Math.max(0, ~~n)).replace(new RegExp(re, 'g'), '$&,');
};

$('.btn-remove-cart').on('click', function (){
    var btn = $(this);
    removeCartItem(btn);
});

function removeCartItem(btn){
    var url = btn.data('url');
    if(confirm('Bạn có chắc muốn xóa ?')){
        $.ajax({
            url : url,
            type : "get",
            dataType:"text",
            success : function (){
                btn.parent().parent().parent().remove();
                getTotalPrice();
            }
        });
    }
}

function up(btn) {
    var url = btn.data('url');
    $.ajax({
        url : url,
        type : "get",
        dataType:"text",
        success : function (){
        }
    });
}

function down(btn) {
    var url = btn.data('url');
    $.ajax({
        url : url,
        type : "get",
        dataType:"text",
        success : function (){
        }
    });
}

function getTotalPrice(price, type){
    var total_price = 0;
    $('.total2').each(function (index, val){
        total_price += parseFloat(document.getElementsByClassName('total2')[index].value);
    });
    if (type == 'up') {
        total_price +=  parseFloat(price);
    }
    else {
        total_price -=  parseFloat(price);
    }
    $('.total_price').html(total_price.format());
}

function updateCart(){
    $('.up').on('click', function (){
        var btn = $(this);
        var box_qty = btn.parent().parent().parent();
        var inp_product = box_qty.find('.qty-product');
        var inp_total =  box_qty.find('.total');
        var inp_total2 =  box_qty.find('.total2');
        var inp_price = box_qty.find('.price2');

        if (parseInt(inp_product.val()) < 10){
            inp_product.val(parseInt(inp_product.val()) + 1);
            getTotalPrice(inp_price.val(), 'up');
            inp_total.html((inp_price.val() * inp_product.val()).format());
            inp_total2.val(inp_price.val() * inp_product.val());
            up(btn);
        }
        else {
            alert('Số lượng sản phẩm không được vượt quá 10');
        }
    });

    $('.down').on('click', function (){
        var btn = $(this);
        var box_qty = $(this).parent().parent().parent();
        var inp_product = box_qty.find('.qty-product');
        var inp_total = box_qty.find('.total');
        var inp_total2 = box_qty.find('.total2');
        var inp_price = box_qty.find('.price2');
        if (parseInt(inp_product.val()) > 1) {
            inp_product.val(parseInt(inp_product.val()) - 1);
            getTotalPrice(inp_price.val(), 'down');
            inp_total2.val(inp_price.val() * inp_product.val());
            inp_total.html((inp_price.val() * inp_product.val()).format());
            down(btn);
        }
        else {
            removeCartItem(btn);
        }
    });
}

getTotalPrice(0);
updateCart();
