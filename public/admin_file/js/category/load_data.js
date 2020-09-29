function loadData(){
    var html = '';
    $.ajax({
        url:'http://localhost:8000/admin/category/listData',
        type:'GET',
        dataType:'json',
        success: function (data){
            data.cates.forEach(function (item, index){
                console.log(item)
            });
        }
    })

}

loadData()
