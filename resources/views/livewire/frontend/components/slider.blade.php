<div>
    <div class="slider-area">
        <div class="container">
            <div class="slider-active owl-carousel">
                @foreach ($sliders as $item)
                    <div class="single-slider pt-125 pb-130 bg-img" style="background-image:url(/{{$item->image}});">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="slider-content slider-animated-1 text-center" style="height: 150px;">
                                        <!-- <h1>Huge Sale</h1>
                                        <h2>koparion</h2>
                                        <h3>Now starting at £99.00</h3>
                                        <a href="#">Shop now</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <script>
                setTimeout(() => {
                    slider_reboot();
                }, 800);
            </script>
        </div>
    </div>
</div>
