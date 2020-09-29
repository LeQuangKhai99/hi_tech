$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            $('.name-per').val(data.per.name);
            $('.des-per').val(data.per.des);
            $('.key-code-per').val(data.per.key_code);
            $('#id-per').val(data.per.id);
            $('.select-per').html(data.html)
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
