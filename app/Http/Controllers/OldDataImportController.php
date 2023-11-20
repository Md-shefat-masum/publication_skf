<?php

namespace App\Http\Controllers;

use App\Models\Product\Category;
use App\Models\Product\Product;
use App\Models\Product\ProductStockLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use mysqli;

class OldDataImportController extends Controller
{
    public $conn = "";
    public function __construct()
    {
        $this->conn = new mysqli("localhost", "root", "1234", "almariz_prokasona");
        if ($this->conn->connect_error) {
            die("Connection failed: " . $this->conn->connect_error);
        }
    }

    function __destruct()
    {
        // $this->conn ->close();
    }

    public function old_products()
    {

        $sql = "SELECT * FROM products";
        $result = $this->conn->query($sql);
        $this->product_action($result);

        $this->conn->close();
    }

    public function old_categories()
    {
        $conn = new mysqli("localhost", "root", "1234", "almariz_prokasona");
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM categories";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $this->catogry_action($result);
        } else {
            echo "0 results";
        }
        $conn->close();
    }

    public function catogry_action($result)
    {
        if ($result->num_rows > 0) {
            // output data of each row
            Category::truncate();
            DB::table('category_product')->truncate();
            while ($row = $result->fetch_object()) {
                $category = Category::create([
                    'name' => $row->category_name,
                    'name_english' => Str::slug($row->category_name),
                    "parent_id" => 0,
                    "is_top_category" => 1,
                    "url" => Str::slug($row->category_name),
                    "description" => Str::slug($row->category_name),
                    "page_title" => $row->category_name,
                    "meta_keywords" => Str::slug($row->category_name),
                    "meta_description" => Str::slug($row->category_name),
                    "search_keywords" => Str::slug($row->category_name),
                ]);
                $this->sub_category_action($row, $category->id);
                // dd($row);
            }
        } else {
            echo "0 results";
        }
    }

    public function sub_category_action($category, $parent_id)
    {
        $sql = "SELECT * FROM sub_categories WHERE `category_id` = " . $category->id;
        $result = $this->conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_object()) {
                $category = Category::insert([
                    'name' => $row->sub_category_name,
                    'name_english' => Str::slug($row->sub_category_name),
                    "parent_id" => $parent_id,
                    "url" => Str::slug($row->sub_category_name),
                    "description" => Str::slug($row->sub_category_name),
                    "page_title" => $row->sub_category_name,
                    "meta_keywords" => Str::slug($row->sub_category_name),
                    "meta_description" => Str::slug($row->sub_category_name),
                    "search_keywords" => Str::slug($row->sub_category_name),
                ]);
                // dd($row);
            }
        } else {
            echo "0 results";
        }
    }

    public function product_action($result)
    {
        if ($result->num_rows > 0) {
            // output data of each row
            Product::truncate();
            ProductStockLog::truncate();
            DB::table('category_product')->truncate();
            while ($row = $result->fetch_object()) {
                // dd($row);
                $product = Product::create([
                    "product_name" => $row->product_title,
                    "product_name_english" => Str::slug($row->product_title),
                    "product_url" => Str::slug($row->product_title),

                    "thumb_image" => $row->product_main_image,
                    "thumb_alt" => Str::slug($row->product_title),
                    "is_public" => 0,

                    "page_title" => $row->product_title,
                    "meta_description" => $row->product_title,
                    "search_keywords" => $row->product_title . ", " . Str::slug($row->product_title),

                    "description" => $row->product_description,
                    "stock_alert_qty" => $row->alert_quantity,
                    "sales_price" => $row->product_price,
                    "is_top_product" => 0,

                    // "product_category" => $row->product_category,
                    // "product_sub_category" => $row->product_sub_category,
                    // "product_quantity" => $row->product_quantity,
                    // "special_offer" => $row->special_offer,
                ]);

                $p_id = $row->id;
                $sql = "SELECT a.id as p_id , a.product_category as c_id, a.product_sub_category as s_id,
                        b.id as c_id, c.id as s_id, b.category_name, c.sub_category_name
                        FROM products a, categories b, sub_categories c
                        WHERE a.id = $p_id AND  a.product_category = b.id AND a.product_sub_category = c.id";
                $rel_result = $this->conn->query($sql);

                if ($rel_result->num_rows > 0) {
                    $data = $rel_result->fetch_object();
                    $category = Category::where('name', $data->category_name)->first();
                    $sub_category = Category::where('name', $data->sub_category_name)->first();
                    $a_c = [];
                    if ($category) {
                        $a_c[] = $category->id;
                    }
                    if ($sub_category) {
                        $a_c[] = $sub_category->id;
                    }
                    $product->categories()->attach($a_c);
                }

                ProductStockLog::insert([
                    "product_id" => $product->id,
                    "qty" => $row->product_quantity,
                    "type" => "init",
                ]);
            }
        } else {
            echo "0 results";
        }
    }
}
