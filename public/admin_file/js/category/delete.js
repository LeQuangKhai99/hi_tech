
$('.act-del').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    Swal.fire({
        title: 'Bạn có chắc muốn xóa?',
        text: "Bạn sẽ không thể khôi phục!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.value) {
            $.ajax({
                type:'GET',
                url: url,
                success: function (data){
                    console.log(data)
                    if (data.code == 200){
                        btn.parent().parent().remove();
                        Swal.fire(
                            'Deleted!',
                            'Dữ liệu đã được xóa',
                            'success'
                        )
                    }
                    else {
                        Swal.fire(
                            'ERROR!',
                            'Dữ liệu chưa được xóa',
                            'error'
                        )
                    }

                },
                error: function (){
                    Swal.fire(
                        'ERROR!',
                        'Bạn không có quyền xóa',
                        'error'
                    )
                }
            })
        }
    })
})
