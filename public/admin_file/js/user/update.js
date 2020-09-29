$('.act_update').on('click', function (e){
    e.preventDefault();
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            $('.name-user').val(data.user.name);
            $('.email-user').val(data.user.email);
            $('.id-user').val(data.user.id);

            var html = '';
            var roleOfUser = [];
            for (let i = 0; i < data.roleOfUser.length; i++) {
                roleOfUser.push(data.roleOfUser[i].id);
            }
            for (let i = 0; i < data.roles.length; i++) {
                if (roleOfUser.includes(data.roles[i].id)){
                    html += '<option selected value="'+data.roles[i].id+'">'+data.roles[i].name+'</option>';
                }
                else {
                    html += '<option  value="'+data.roles[i].id+'">'+data.roles[i].name+'</option>';
                }
            };
            $('.select-role').html(html);

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
