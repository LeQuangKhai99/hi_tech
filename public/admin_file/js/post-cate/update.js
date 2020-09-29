$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            $('.name-tag').val(data.postCate.name);
            $('.user-update-tag').val(data.user);
            $('#id-tag').val(data.postCate.id);
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
