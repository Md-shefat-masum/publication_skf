<?php

namespace App\Models;

use App\Models\Account\AccountCategory;
use App\Models\Account\AccountLog;
use App\Models\Order\OrderPayment;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    // protected $fillable = [
    //     'name', 'email', 'password',
    // ];
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (isset($data->name)) {
                $data->slug = \Illuminate\Support\Str::slug($data->name);
            } else if (isset($data->title)) {
                $data->slug = \Illuminate\Support\Str::slug($data->title);
            } else {
                $data->slug = $data->id . uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }
    protected $hidden = [
        'password', 'remember_token',
    ];
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    protected $appends = [
        'photo_url',
        'transaction',
    ];

    protected static function booted()
    {
        static::created(function ($user) {
            $user->slug = random_int(100,999).$user->id.random_int(1000,9999);
            $user->save();
        });
    }

    public function getPhotoUrlAttribute()
    {
        if (count(explode('http', $this->photo)) > 1) {
            return $this->photo;
        } else {
            return url('') . '/' . $this->photo;
        }
    }

    public function getTransactionAttribute()
    {
        $expense_amount = OrderPayment::where('user_id',$this->id)->where('approved',1)->sum('amount');
        $deposit_amount = AccountLog::where('customer_id',$this->id)->where('related_table','users')->sum('amount');
        $extra_money = $deposit_amount - $expense_amount;
        return [
            "expese_amount" => $expense_amount,
            "deposit_amount" => $deposit_amount,
            "extra_money" => $extra_money > 0 ? $extra_money : 0,
        ];
    }

    public function roles()
    {
        return $this->belongsToMany(UserRole::class, 'user_user_role', 'user_id', 'user_role_id', 'id', 'role_serial');
    }

    public function permissions()
    {
        return $this->belongsToMany(UserPermission::class, 'user_user_permission', 'user_id', 'user_permission_id', 'id', 'permission_serial'); //user::id
    }
}
