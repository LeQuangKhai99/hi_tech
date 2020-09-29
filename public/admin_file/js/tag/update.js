$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            console.log(data)
            $('.name-tag').val(data.tag.name);
            $('.user-update-tag').val(data.user);
            $('#id-tag').val(data.tag.id);
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
