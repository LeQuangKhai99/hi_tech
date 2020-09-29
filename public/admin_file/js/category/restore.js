
$('.act-restore').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    Swal.fire({
        title: 'Bạn có chắc muốn khôi phục?',
        text: "Bạn sẽ nhìn thấy lại dữ liệu này!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, restore it!'
    }).then((result) => {
        if (result.value) {
            $.ajax({
                type:'GET',
                url: url,
                success: function (data){
                    if (data.code == 200){
                        btn.parent().parent().remove();
                        Swal.fire(
                            'Restored!',
                            'Dữ liệu đã được khôi phục',
                            'success'
                        )
                    }
                    else {
                        Swal.fire(
                            'ERROR!',
                            'Dữ liệu chưa được khôi phục',
                            'error'
                        )
                    }

                },
                error: function (){
                    Swal.fire(
                        'ERROR!',
                        'Bạn không có quyền khôi phục',
                        'error'
                    )
                }
            })
        }
    })
})
