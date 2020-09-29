$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            if (data.brand.image_path != ''){
                var html = '<div><img width="20%" class="img-update-cate" src="'+data.brand.image_path+'" alt="">';
                html += '<div class="del-img" onclick="delImg();">';
                html += '<i class="fas fa-times"></i></div>';
                html += '<input type="file" name="image" class="form-control-file input-file mt-2">'
                html += '<input type="hidden" name="is_isset_image" value="yes"/></div>';

                $('.update-image').html(html)
            }
            else {
                $('.update-image').html('<input type="file" name="image" class="form-control-file input-file mt-2">')
            }
            $('.name-brand').val(data.brand.name);
            $('.user-update-brand').val(data.user);
            $('#id-brand').val(data.brand.id);
            $('#myModal2').modal('show');
        },
        error: function (e){
            console.log(e)
        }

    })

});

function  delImg(){
    $('.del-img').parent().remove();
    $('.update-image').html('Bạn đã xóa hình ảnh');
}
