<section class="w-100">
    <aside>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                @foreach($slides as $key => $slide)
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="{{$key == 0 ? 'active' : ''}}"></li>
                @endforeach
            </ol>
            <div class="carousel-inner">
                @foreach($slides as $key => $slide)
                <div class="carousel-item {{$key == 0 ? 'active' : ''}}">
                    <img class="d-block w-100 " src="{{$slide->image_path}}">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>TM Hi-Tech</h5>
                        <p>...</p>
                    </div>
                </div>
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </aside>
</section>
