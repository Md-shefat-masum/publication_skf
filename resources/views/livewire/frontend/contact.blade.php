<div>
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
    <div class="breadcrumbs-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs-menu">
                        <ul>
                            <li><a href="/" class="hind-siliguri">হোম</a></li>
                            <li><a href="#" class="active hind-siliguri">যোগাযোগ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs-area-end -->
    <!-- contact-area-start -->
    <div class="contact-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="contact-info">
                        <h3 class="hind-siliguri">যোগাযোগের ঠিকানা</h3>
                        <ul>
                            <li class="">
                                <div>
                                    <i class="fa fa-map-marker"></i>
                                    <span class="hind-siliguri">অফিসের ঠিকানা: </span>
                                </div>
                                <div >
                                    @foreach ($address as $item)
                                        {{ $item->setting_value }} <br>
                                    @endforeach
                                </div>
                            </li>
                            <li>
                                <div>
                                    <i class="fa fa-phone"></i>
                                    <span class="hind-siliguri">মোবাইল নাম্বার: </span>
                                </div>
                                <div>
                                    @foreach ($phone_number as $item)
                                        <a href="Tel:{{$item->setting_value}}">
                                            {{ $item->setting_value }}
                                        </a>
                                        <br>
                                    @endforeach
                                </div>
                            </li>
                            <li>
                                <div>
                                    <i class="fa fa-envelope"></i>
                                    <span class="hind-siliguri">ইমেইল: </span>
                                </div>
                                <div>
                                    @foreach ($email as $item)
                                        <a href="mailto:{{ $item->setting_value }}">
                                            {{ $item->setting_value }}
                                        </a><br>
                                    @endforeach
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="contact-form">
                        <h3><i class="fa fa-envelope-o"></i>Leave a Message</h3>
                        <form onsubmit="send_message()" action="" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-form-3">
                                        <div>
                                            <input name="full_name" type="text" placeholder="Name">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-form-3">
                                        <div>
                                            <input name="email" type="email" placeholder="Email">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single-form-3">
                                        <div>
                                            <input name="subject" type="text" placeholder="Subject">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single-form-3">
                                        <div>
                                            <textarea name="message" placeholder="Message"></textarea>
                                        </div>
                                        <button class="submit" type="submit">SEND MESSAGE</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <p class="form-messege"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
