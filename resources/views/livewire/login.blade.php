<div>
    <div class="user-login-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="login-title text-center mb-30">
                        <h2>Login</h2>
                        <div wire:loading.delay>Loading please wait...</div>
                    </div>
                </div>
                <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
                    <form id="login-form" wire:submit.prevent="login_submit">
                        <div class="login-form">
                            <div class="single-login">
                                <label>email<span>*</span></label>
                                <input type="email" wire:model="email" type="email" class="form-control" name="email" placeholder="email" required />
                            </div>
                            <div class="single-login">
                                <label>Passwords <span>*</span></label>
                                <input wire:model="password" type="password" class="form-control" name="password" pattern=".{5,}" required />
                            </div>
                            <div class="single-login single-login-2">
                                <button class="submit_btn" type="submit">login</button>
                            </div>
                            <a href="#">Lost your password?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>