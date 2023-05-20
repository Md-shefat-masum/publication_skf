<div>
    <div class="user-login-area mb-70">
        <div class="breadcrumbs-area mb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumbs-menu">
                            <ul>
                                <li><a href="/" class="hind-siliguri">হোম</a></li>
                                <li><a href="#" class="hind-siliguri">রেজিস্টেশন</a></li>
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
                        <h2 class="hind-siliguri">একাউন্ট রেজিস্টেশন</h2>
                        {{-- <div wire:loading.delay>Loading please wait...</div> --}}
                    </div>
                </div>
                <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
                    <form id="login-form" wire:submit.prevent="login_submit">
                        <div class="login-form">
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার সম্পূর্ণ নাম লিখুন<span class="text-danger">*</span></label>
                                <input type="email" wire:model="email" type="email" class="form-control" name="email" placeholder="Full name" required />
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার ইমেইল লিখুন</label>
                                <input type="email" wire:model="email" type="email" class="form-control" name="email" placeholder="email" required />
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার মোবাইল নাম্বার লিখুন<span class="text-danger">*</span></label>
                                <input type="email" wire:model="email" type="email" class="form-control" name="email" placeholder="mobile no" required />
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার পাসওয়ার্ড লিখুন <span class="text-danger">*</span></label>
                                <input wire:model="password" type="password" class="form-control" name="password" pattern=".{5,}" required />
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">পুনরায় পাসওয়ার্ড লিখুন <span class="text-danger">*</span></label>
                                <input wire:model="password" type="password_confirmation" class="form-control" name="password" pattern=".{5,}" required />
                            </div>
                            <div class="single-login single-login-2">
                                <button class="submit_btn" type="submit">Submit</button>
                            </div>
                            <div class="mt-4 gap-4 text-end flex-wrap justify-content-between hind-siliguri font-16">
                                <a href="/login">পূর্বে একাউন্ট তৈরী থাকলে লগইন করুন</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

