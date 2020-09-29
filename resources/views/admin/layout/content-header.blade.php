<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">{{$title}}</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{route('trang-chu')}}">Home</a></li>
                    @for($i = 0; $i< count($path_chird); $i++)
                    <li class="breadcrumb-item"><a href="{{route($route[$i])}}">{{$path_chird[$i]}}</a></li>
                    @endfor
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
