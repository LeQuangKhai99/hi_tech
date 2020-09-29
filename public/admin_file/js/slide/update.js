$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            console.log(data)
            if (data.slide.image_path != ''){
                var html = '<div><img width="20%" class="img-update-cate" src="'+data.slide.image_path+'" alt="">';
                html += '<div class="del-img" onclick="delImg();">';
                html += '<i class="fas fa-times"></i></div>';
                html += '<input type="file" name="image" class="form-control-file input-file mt-2">'
                html += '<input type="hidden" name="is_isset_image" value="yes"/></div>';

                $('.update-image').html(html)
            }
            else {
                $('.update-image').html('<input type="file" name="image" class="form-control-file input-file mt-2">')
            }
            $('.user-update-cate').val(data.user);
            $('#id-cate').val(data.slide.id);
            $('#myModal2').modal('show');
        },
        error: function (e){
            Swal.fire(
                'ERROR!',
                'Bạn không có quyền cập nhập',
                'error'
            )
        }

    })

});

function  delImg(){
    $('.del-img').parent().remove();
    $('.update-image').html('Bạn đã xóa hình ảnh');
}
