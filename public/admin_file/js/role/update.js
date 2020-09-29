$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            $('.name-role').val(data.role.name);
            $('.user-update-role').val(data.user);
            $('.des-role').val(data.role.des);
            $('#id-role').val(data.role.id);
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
