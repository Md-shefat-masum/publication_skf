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
                    @if (session()->has('message'))
                    <div class="alert alert-success">
                        {{ session('message') }}
                    </div>
                    @endif
                    @if (session()->has('error'))
                    <div class="alert alert-danger">
                        {{ session('error') }}
                    </div>
                    @endif
                    <form id="login-form" method="POST">
                        @csrf
                        <div class="login-form">
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার সম্পূর্ণ নাম লিখুন<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" value="{{ old('first_name') }}" name="first_name" placeholder="Full name" />
                                @error('first_name')
                                <div class="text-danger error">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার ইমেইল লিখুন</label>
                                <input type="email" class="form-control" value="{{ old('email') }}" name="email" placeholder="email" />
                                @error('email')
                                    <div class="text-danger error">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার মোবাইল নাম্বার লিখুন<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" value="{{ old('mobile_number') }}" name="mobile_number" placeholder="mobile no" />
                                @error('mobile_number')
                                    <div class="text-danger error">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">আপনার পাসওয়ার্ড লিখুন <span class="text-danger">*</span></label>
                                <input type="password" class="form-control" value="{{ old('password') }}" name="password"  />
                                @error('password')
                                    <div class="text-danger error">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="single-login">
                                <label class="hind-siliguri font-18">পুনরায় পাসওয়ার্ড লিখুন <span class="text-danger">*</span></label>
                                <input type="password_confirmation" value="{{ old('password') }}" class="form-control" name="password_confirmation"  />
                                @error('password_confirmation')
                                    <div class="text-danger error">
                                        {{ $message }}
                                    </div>
                                @enderror
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

