<?php

namespace App\Models\Product;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (isset($data->name_english)) {
                $data->slug = \Illuminate\Support\Str::slug($data->name_english);
            } else {
                $data->slug = $data->id . uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }

    public function child()
    {
        return $this->hasMany(Category::class, 'parent_id', 'id');
    }

    public function parent()
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }

    public function products()
    {
        return $this->belongsToMany(Product::class)->select([
            "products.id",
            "products.product_name",
            "products.sales_price",
            "products.thumb_image",
            "products.status",
        ]);
    }

    public function products_custom()
    {
        return $this->belongsToMany(Product::class);
    }

    public function buildCategories($children, $parent_id)
    {
        $result = array();
        foreach ($children as $row) {
            if ($row->parent_id == $parent_id) {
                if (Category::where('parent_id', $row->id)->where('status', 1)->exists()) {
                    $children = Category::where('parent_id', $row->id)->where("status", 1)->get();
                    $temp_category = [];
                    $temp_category['id'] = $row->id;
                    $temp_category['name'] = $row->name;
                    $temp_category['name_english'] = $row->name_english;
                    $temp_category['parent'] = $parent_id;
                    $temp_category['child'] = $this->buildCategories($children, $row->id);
                    $result[] = (object) $temp_category;
                } else {
                    $temp_category['id'] = $row->id;
                    $temp_category['name'] = $row->name;
                    $temp_category['name_english'] = $row->name_english;
                    $temp_category['parent'] = $parent_id;
                    $temp_category['child'] = [];
                    $result[] = (object) $temp_category;
                }
            }
        }
        return $result;
    }

    public function get_category_nested()
    {
        $categories = Category::select(['id', 'name', 'name_english', 'parent_id'])
            ->where("status", 1)
            ->where('parent_id', 0)
            ->get();

        $all_category = [];

        foreach ($categories as $key => $item) {
            if (Category::where('parent_id', $item->id)->where('status', 1)->exists()) {
                $children = Category::where('parent_id', $item->id)->where("status", 1)->get();
                $temp_category = [];
                $temp_category['id'] = $item->id;
                $temp_category['name'] = $item->name;
                $temp_category['name_english'] = $item->name_english;
                $temp_category['child'] = $this->buildCategories($children, $item->id);
                $all_category[] = (object) $temp_category;
            } else {
                $temp_category['id'] = $item->id;
                $temp_category['name'] = $item->name;
                $temp_category['name_english'] = $item->name_english;
                $temp_category['child'] = [];
                $all_category[] = (object) $temp_category;
            }
        }
        return $all_category;
    }

    public function frontend_child()
    {
        $fields = ['id','name','name_english','parent_id','url','is_top_category','is_public'];
        return $this->hasMany(Category::class, 'parent_id' ,'id')
            ->select($fields)
            ->where('is_public', 1)
            ->where('status', 1)
            ->with('frontend_child');
    }
}
