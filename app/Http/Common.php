<?php

function enToBn($NRS)
{
    $englDTN = array(
        '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
        'Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
        'Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri',
        'am', 'pm', 'at', 'st', 'nd', 'rd', 'th',
        'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December',
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    );
    $bangDTN = array(
        '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০',
        'শনিবার', 'রবিবার', 'সোমবার', 'মঙ্গলবার', 'বুধবার', 'বৃহস্পতিবার', 'শুক্রবার',
        'শনি', 'রবি', 'সোম', 'মঙ্গল', 'বুধ', 'বৃহঃ', 'শুক্র',
        'পূর্বাহ্ণ', 'অপরাহ্ণ', '', '', '', '', '',
        'জানুয়ারি', 'ফেব্রুয়ারি', 'মার্চ', 'এপ্রিল', 'মে', 'জুন', 'জুলাই', 'আগস্ট', 'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর',
        'জানু', 'ফেব্রু', 'মার্চ', 'এপ্রি', 'মে', 'জুন', 'জুলা', 'আগ', 'সেপ্টে', 'অক্টো', 'নভে', 'ডিসে'
    );
    $converted = str_replace($englDTN, $bangDTN, $NRS);
    return $converted;
}

function setting($key, $multiple = false)
{
    try {
        if(!$multiple){
            $value = $GLOBALS['app_settings']->where("title", $key)->first();
            if ($value) {
                return $value->setting_value;
            } else {
                return '';
            }
        }else{
            $values = $GLOBALS['app_settings']->where("title", $key)->all();
            return $values;
        }
    } catch (\Throwable $th) {
        var_dump($th->getMessage());
    }
}
