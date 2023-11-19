<div>
    <div class="main-menu-area d-md-none d-none d-lg-block sticky-header-1" id="header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="menu-area">
                        <nav>
                            @include('livewire.frontend.includes.menu')
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main-menu-area-end -->


    <!-- mobile-menu-area-start -->
    <div class="mobile-menu-area d-lg-none d-block fix">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="mobile-menu" id="mobile_menu">
                        <div class="backdrop" onclick="mobile_menu.classList.toggle('active')"></div>
                        <nav>
                            <i class="fa nav_close fa-close" onclick="mobile_menu.classList.toggle('active')"></i>
                            @include('livewire.frontend.includes.menu')
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
