<div>
    <footer class="mt-5">
        <div class="footer-mid ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12">

                        <ul>
                            <li id="custom_html-2">
                                <div>
                                    <img src="/{{ $logo }}" alt="" title="">
                                    <p class="mt-3 text-white">
                                        {{ $short_about }}
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-8 col-md-12">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="single-footer br-2 xs-mb">
                                    <div class="footer-title mb-20">
                                        <h3 class="hind-siliguri">প্রয়োজনীয় লিংক</h3>
                                    </div>
                                    <div class="footer-mid-menu">
                                        <ul>
                                            <li><a class="hind-siliguri" href="/contact/">যোগাযোগ করুন</a></li>
                                            <li><a class="hind-siliguri" target="_blank" href="#" rel="noopener">ব্লগ</a></li>

                                            <li><a class="hind-siliguri" href="/frequently-asked-questions/">প্রশ্নোত্তর</a></li>
                                            <li><a class="hind-siliguri" href="/how-to-buy">কিভাবে কেনাকাটা করবেন ?</a>
                                            </li>
                                            <li><a class="hind-siliguri" href="/terms">শর্তাবলী</a></li>
                                            <li><a class="hind-siliguri" href="/refund-policy">রিফান্ড নীতিমালা</a></li>
                                            <li><a class="hind-siliguri" href="/privacy-policy">প্রাইভেসী পলিসি</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="single-footer br-2 xs-mb">
                                    <div class="footer-title mb-20">
                                        <h3>জনপ্রিয়</h3>
                                    </div>
                                    <div class="footer-mid-menu">
                                        <ul>
                                            <li><a class="hind-siliguri" href="/cart/">শপিং ব্যাগ</a></li>
                                            <li><a class="hind-siliguri" href="/category/19/প্রি-অর্ডার">প্রি-অর্ডার</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="single-footer br-2 xs-mb">
                                    <div class="footer-title mb-20">
                                        <h3 class="hind-siliguri">যোগাযোগ</h3>
                                    </div>
                                    <div class="footer-mid-menu">
                                        <ul>
                                            <li style="margin-bottom:10px" class="text-white">
                                                <i class="fa fa-map-marker"></i>
                                                <b>
                                                    Address:
                                                </b>
                                                @foreach ($address as $item)
                                                    <p>
                                                        {{ $item->setting_value }}
                                                    </p>
                                                @endforeach
                                            </li>
                                            <li class="text-white">
                                                <div>
                                                    <i class="fa fa-mobile"></i>
                                                    &nbsp;
                                                    <b>
                                                        Phone:
                                                    </b>
                                                    <br>
                                                </div>
                                                <div>
                                                    @foreach ($phone_number as $item)
                                                        <a href="Tel:{{$item->setting_value}}">
                                                            {{ $item->setting_value }}
                                                        </a>
                                                    @endforeach
                                                </div>
                                            </li>
                                            <li class="text-white">
                                                <br>
                                                <i class="fa fa-envelope-o"></i>
                                                <b>
                                                    emails:
                                                </b>
                                                <div>
                                                    @foreach ($email as $item)
                                                        <a href="mailto:{{ $item->setting_value }}">
                                                            {{ $item->setting_value }}
                                                        </a>
                                                    @endforeach
                                                </div>
                                            </li>

                                        </ul>
                                        <!-- <ul>
                                            <li><a href="contact.html">Addresses</a></li>
                                            <li><a href="#">Credit slips </a></li>
                                            <li><a href="#"> Orders</a></li>
                                            <li><a href="#">Personal info</a></li>
                                        </ul> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-mid-end -->
        <!-- footer-bottom-start -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row bt-2">
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="copy-right-area">
                            <p>&copy; <strong> {{ $copy_right }} </strong>. Develop and maintainence by <a href="https://techparkit.org/" target="_blank"><strong>Techpark It</strong></a></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="payment-img text-end">
                            <a href="#"><img src="/frontend/img/1.png" alt="payment" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </footer>
</div>
