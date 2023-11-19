<div>
    <div class="slider-area">
        <div class="container">
            <div class="slider-active owl-carousel">
                @foreach ($sliders as $item)
                    <div class="single-slider bg-img" style="">
                        <img src="/{{$item->image}}" class="w-100" alt="">
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
