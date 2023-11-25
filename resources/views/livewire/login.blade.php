<div>
    <div class="user-login-area mb-70">
        <div class="breadcrumbs-area mb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumbs-menu">
                            <ul>
                                <li><a href="/" class="hind-siliguri">হোম</a></li>
                                <li><a href="#" class="hind-siliguri">লগইন</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="login-title text-center mb-30">
                        <h2 class="hind-siliguri">লগইন</h2>
                        {{-- <div wire:loading.delay>Loading please wait...</div> --}}
                    </div>
                </div>
                <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
                    <form id="login-form" wire:submit.prevent="login_submit">
                        <div class="login-form">
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার ইমেইল অথবা মোবাইল নাম্বার লিখুন<span>*</span></label>
                                <input type="text" wire:model="email" type="email" class="form-control" name="email" placeholder="email / mobile no" required />
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার পাসওয়ার্ড লিখুন <span>*</span></label>
                                <input wire:model="password" type="password" class="form-control" name="password" pattern=".{5,}" required />
                            </div>
                            <div class="single-login single-login-2">
                                <div class="text-danger">{{$error}}</div>
                                <button class="submit_btn" type="submit">login</button>
                            </div>
                            <div class="d-flex mt-4 gap-4 flex-wrap justify-content-between hind-siliguri font-16">
                                <a href="#">পাসওয়ার্ড ভুলে গেছেন?</a>
                                <a href="/register">নতুন একাউন্ট তৈরী করুন</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
