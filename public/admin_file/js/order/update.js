$('.btn-status').on('click', function (e){
    var url = $(this).data('url');
    var btn = $(this);
    $.ajax({
        type:'GET',
        url: url,
        success: function (data){
            var color = "#dc3545";
            var status = "Chưa giao";
            switch (data.nextStatus) {
                case 0:
                    color = "#dc3545";
                    status = "Chưa giao";
                    break;
                case 1:
                    color = "#ffc107";
                    status = "Đang giao";
                    break;
                case 2:
                    color = "#28a745";
                    status = "Giao hoàn tất";
                    break;
            }
            btn.css("background-color", color);
            btn.html(status);
        },
        error: function (e){
            console.log(e)
        }
    })
});

