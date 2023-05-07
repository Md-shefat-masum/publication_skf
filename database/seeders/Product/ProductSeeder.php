<?php

namespace Database\Seeders\Product;

use App\Models\Product\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::truncate();
        $descriptions = [
            "আল কুদস প্রখ্যাত মিশরীয় ইসলামী চিন্তাবিদ ড. মুহাম্মাদ ইমারাহ রহ.-এর সাড়াজাগানো পুস্তিকা। বইটিতে পশ্চিমা খ্রিষ্টান বিশ্বের যোগসাজশে জায়নবাদী ইসরাইল প্রতিষ্ঠার আদ্যোপান্ত তথ্যভিত্তিক সংক্ষিপ্ত বর্ণনায় ফুটে উঠেছে। বইটির লেখক ঐতিহাসিক তথ্য-প্রমাণ ও দলিলের মাধ্যমে প্রমাণ করেছেন—জেরুসালেম নগরীর প্রকৃত অধিকার কার।",
            "আঠারো ও উনিশ শতক। তখন মুসলিম বিশ্বের সবখানে জেঁকে বসেছে উপনিবেশবাদ। উসমানি সালতানাত তখনও খিলাফতের একটি ছায়া হিসেবে টিকেছিল। কিন্তু ১৯২৪ সালে পতন ঘটে আশার শেষ প্রদীপ উসমানি খিলাফতের। রাষ্ট্র ও সমাজ থেকে অপসারিত হলো ইসলাম। ব্যক্তিজীবনের ক্ষুদ্র গ-িতেই সীমাবদ্ধ করা হলো ইসলামকে। তখন চারদিকে হতাশা আর অন্ধকার।            ",
            "তুমি যে পথে হাঁটছ, ওটা অন্ধকারের পথ। বিন্দুমাত্র আলো নেই ওখানে। ও পথ যতই পাড়ি দেবে, ততই হারিয়ে যাবে নিকষকালো আঁধারে। তুমি অন্ধকারে হাঁটবে আর পথহারা হবে। আঁধারের বাঁদুরেরা তোমায় ভয় দেখাবে ক্ষণে ক্ষণে। একাকী তুমি আরও ভীতসন্ত্রস্ত হয়ে পড়বে। ভীত-বিহ্বল চিত্তে একসময় ক্লান্ত-পরিশ্রান্ত হয়ে তলিয়ে যাবে অতল ভয়ানক খাঁদে। পথিক! তোমায় আলোর পথে ডাকছি। এখানে আলোআঁধারি খেলা নেই।            ",
            "মুহাম্মদ আসাদ উত্তর আধুনিক বিশ্বে একজন প্রধান মুসলিম চিন্তাবিদ। উত্তর আধুনিক কালে সমস্যা অনুধাবন,বিশ্লেষণ ও ইসলামের সাথে এর সম্পর্ক করণে উনার মৌলিক ও সূক্ষ্ম চিন্তার বিশ্ব ব্যাপী সমাদৃত। তিনি একজন ইউরোপিয়ান, জীবিকার তাগিদে উনি মুসলিম বিশ্বে আসেন আর দীর্ঘদিন এই সমাজের সাথে বাস করে মনে প্রাণে ইসলামকে গ্রহণ করে নেয়। উপনিবেশিক শক্তি থেকে স্বাধীনতা উত্তর অনেক গুলো দেশের জন্য বুদ্ধি ভিত্তিক অনেক কাজের আঞ্জাম দিয়েছেন এই চিন্তক। লিখেন অনেক গুরুত্বপূর্ণ বই যার মধ্যে রোড টু মক্কা, সংঘাতের মুখে ইসলাম ও ইসলামে রাষ্ট্র ও সরকার পরিচালনার মূলনীতি এই তিনটি বই বাংলায় অনূদিত হয়েছে। বাংলায় বই তিনটি অনুবাদ করেছেন অধ্যাপক শাহেদ আলী            ",
            "১৯৪৮ সালে পাকিস্তানের পাঞ্জাব সরকার এর ইসলামি পুনর্গঠন বিভাগে কাজ করার সময় তিনি যেসব মতামত প্রদান করেন তার পুস্তক রূপ হচ্ছে এই বই। যদিও তিনি আক্ষেপ করে বলেন যে আমার পরামর্শগুলোর অতি অল্প কয়েকটি মাত্র গৃহীত হয়েছে। বইটি কয়েকটি কারণে ইসলামি রাজনীতি বা ইসলামে রাষ্ট্র ব্যবস্থা কি হবে তা নিয়ে লেখা অনেক গুলো বই থেকে আলাদা। বইটিতে আবেগধর্মী উপস্থাপনা নেই বরং বর্তমান সময়ে রাষ্ট্র ব্যবস্থাকে কিভাবে ইসলামের মৌলিক নীতি অনুযায়ী সাজানো যায় তার একটি বাস্তব প্রকল্প তুলে ধরা আছে।            ",
            "এটি একটি রাজনৈতিক প্রচারণামূলক বই নয় আর শুধু ধর্মীয় নীতির বইও নয়। রাষ্ট্র পরিচালনায় ইসলামের শরিয়াহতে যে বিস্তর স্বাধীনতা দেয়া হয়েছে মানুষকে তার সময় উপযোগী ব্যবস্থা প্রণয়নে এই বইটি আপনার সামনে তাকে সুন্দর ভাবে উপস্থাপন করবে। বইটিতে লেখক আগের জমানার লেখকদের রাষ্ট্র ব্যবস্থা সংক্রান্ত নীতি সমূহ তুলে না ধরে সরাসরি কোরান-হাদিস থেকে মূলনীতি গুলো নেয়ার চেষ্টা করেছেন এবং ইতিহাস থেকে তার উদাহরণ টেনেছেন। যারা ইসলামে রাজনীতির বিধান জানতে আগ্রহী, যারা এটির সাথে যুক্ত এবং যারা এটির বিরোধিতা করেন সবার জন্যই এটি একটি সুখপাঠ্য বই।",
            "আধুনিক কথিত উন্নত রাষ্ট্রগুলো বাছবিচারহীনভাবে নাগরিকের প্রত্যাশা পূরণকেই অগ্রাধিকার দেয়; এমনকি তা চরম পর্যায়ের নোংরামি হলেও। তাই সেসব রাষ্ট্রে ব্যক্তি স্বাধীনতার নামে বেপরোয়া উচ্ছৃঙ্খলতাই আমরা দেখতে পাই। এই লাগামহীন ব্যক্তি স্বাধীনতার বিনিময়ে সেখানকার নাগরিকরা রাষ্ট্রের ন্যায়-অন্যায় প্রত্যেক অবস্থানকেই সমর্থন করে। এর পরিণতি দেখা যায় সেসব রাষ্ট্রের পররাষ্ট্রনীতিতে। তারা নিজের নাগরিকদের আরাম-আয়েশ নিশ্চিত করতে অন্যান্য দুর্বল দেশের ওপর বইয়ে দেয় লুণ্ঠন ও জুলুমের তাণ্ডব। আফ্রিকার ওপর ইউরোপ-আমেরিকার সীমাহীন জুলুমের ইতিহাস তারই দগদগে উদাহরণ। একসময়ের সমৃদ্ধ আফ্রিকায় নজিরবিহীন জুলুম ও লুটপাটের মাধ্যমেই বর্তমান পশ্চিমের এই চাকচিক্য গড়ে উঠেছে। পাশ্চাত্যের চোখ ধাঁধাঁনো চাকচিক্যের আড়ালে আছে লক্ষ লক্ষ বনি আদমের রক্তের দাগ আর অশ্রুর চাপা আওয়াজ।",
            "লেখক : ড. ইয়াসির ক্বাদি প্রকাশনী : প্রচ্ছদ প্রকাশন বিষয় : নবী-রাসূল ও সাহাবীদের জীবনী অনুবাদ: মোহাম্মাদ সাইফুল্লাহ পৃষ্ঠা: ৮০পৃথিবীর শ্রেষ্ঠ সেনাপতি খালিদ বিন ওয়ালিদ। যিনি কখনো কোনো যুদ্ধে পরাজয় বরণ করেননি। ইসলাম গ্রহণের পূর্বেও তিনি ছিলেন কাফের বাহিনীর সেনাপতি। তখনও তিনি ছিলেন অপরাজেয়। আর ইসলাম গ্রহণের পর কালেমার ঝান্ডা নিজ হাতে তুলে ধরেন, সেনাপতি খালিদ বিন ওয়ালিদ রা.।বিখ্যাত এই সাহাবীকে নিয়ে বিস্তারিত আলোচনা করেছেন প্রখ্যাত দা’ঈ ড. ইয়াসির ক্বাদি। এমন আলোচনা সচারাচর খুব একটা পাওয়া যায় না। যার দরুন এই লেকচারটি বাংলা ভাষাভাষিদের হাতে পৌঁছানোর জন্য আমরা তা অনুবাদ করে বই আকারে প্রকাশের সিদ্ধান্ত গ্রহণ করি। অনুবাদ করেছেন তরুণ অনুবাদ মোহাম্মাদ সাইফুল্লাহ।",
            "তোমরা দেখবে, যারা আল্লাহর অবাধ্যতা করে তারা দুনিয়াকে ভালবাসে,দুনিয়ার জীবন নিয়ে অহংকার করে।অপরদিকে যারা আল্লাহর নিকটবর্তী, তার প্রিয়জন, তারা দুনিয়ায় নির্যাতিত,এমনকি তাদের দেশ থেকে বের করে দেয়া হয়।সাবধান! পার্থিব জীবন যেন তোমাদের পরকাল থেকে ভুলিয়ে না রাখে।আল্লাহ যাকে ভালবাসেন তাকে তিনি দুনিয়া দেন।যাকে ভালবাসেনা তাকেও দেন।কিন্তু তিনু ধার্মিকতা শুধু তাকেই দেন, যাকে তিনি ভালবাসেন।আর জ্ঞান ছাড়া ধার্মিকতা নেই,আমন করা ছাড়া জ্ঞান নেই এবং ইখলাস ছাড়া আমল নেই",
            "বাংলাভাষায় শহীদ প্রেসিডেন্ট মুহাম্মদ মুরসী রহ. কে নিয়ে এটা প্রথম বই। দেশ বিদেশের অনেকগুলো লেখার সমন্নয়ে একটি ভালো সংকলন। মুরসী ইখওয়ান মিসর তৎকালীন ঘটনা প্রবাহ জানতে ভালো সহায়ক হবে বইটি। একটি প্রামাণ্য কাজ করেছে প্রচ্ছদ।",
            "‘গণতন্ত্র’ আধুনিক রাষ্ট্রব্যবস্থায় একটি বহুলালোচিত পরিভাষা ও পদ্ধতি। গণতন্ত্র বিষয়েও বেশ কিছু মতামত ও মতপার্থক্য রয়েছে। সংজ্ঞাগত ও বা তাত্বিক দিক ও ব্যবহারিক ও বাস্তবিক দিক দিয়েও ‘গণতন্ত্র’ ব্যাপক পার্থক্য নিয়ে আমাদের সামনে হাজির। সবমিলিয়ে জটিলতর এ বিষয়ে ইসলামি দৃষ্টিকোন থেকে এক বাক্যে করা কোনো মন্তব্যকে অকাট্য হিসেবে চালিয়ে দেওয়া নিঃসন্দেহে বাড়াবাড়ি।",
            "যাকাত ইসলামের অতি গুরুত্বপূর্ণ একটি রুকন। ইসলামে এ রুকনটির অবস্থান সালাতের পরই। সালাত আদায় করে যেমন মুসলিমরা মহান আল্লাহর ইবাদত করে তাঁর নৈকট্য লাভ করেন; তেমনিভাবে যাকাত আদায় করেও মুসলিমরা তাদের ওপর আল্লাহ তায়ালা কর্তৃক ফরজকৃত ইবাদত আদায় করে তাঁর নৈকট্য হাসিল করেন।এছাড়াও মুসলিমরা এ ইবাদতটি পরিকল্পিতভাবে আদায় করে সমাজ থেকে দারিদ্র বিমোচনের মতো গুরুত্বপূর্ণ একটি অর্থনৈতিক সমস্যার সমাধানও করতে পারেন। দরিদ্র জনগণের অভাব মোচনের ব্যবস্থা করতে পারেন।",
            "উমর ইবনে আবদুল আজিজ রহ. তাঁর শাসনকালে পরিকল্পিতভাবে যাকাত আদায় ও বণ্টনের ব্যবস্থা করে সমাজ থেকে দারিদ্র সম্পূর্ণভাবে মোচন করতে সক্ষম হয়েছিলেন। এমনকি তিনি তখন যাকাতের অর্থ গ্রহণ করার মতো কোনো ফকির-মিসকিন পাওয়া না যাওয়ায় যাকাতের অর্থ দিয়ে দাস-দাসী ক্রয় করে তাদের আজাদ করার ব্যবস্থা করেছিলেন",
        ];
        $titles = [
            [
                "product_name" => "ইখওয়ানুল মুসলিমিনের ইতিহাস",
                "product_name_english" => "ikhwanul musliminer itihash",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10641555585e9bf1679119704.jpeg",
            ],
            [
                "product_name" => "আল কুদস",
                "product_name_english" => "al kuds",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_1063d8087bc78281675102331.jpg",
            ],
            [
                "product_name" => "ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত",
                "product_name_english" => "islami andoloner korrmider proti imam bannar nosihot",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10630203b4bb9b51661076404.jpg",
            ],
            [
                "product_name" => "কুরআনের সান্নিধ্যে",
                "product_name_english" => "kuraner sannidde",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10630202c613b031661076166.jpg",
            ],
            [
                "product_name" => "দুঃখ-কষ্টের হিকমত",
                "product_name_english" => "dukkho korster hikmot",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10630202c613b031661076166.jpg",
            ],
            [
                "product_name" => "ইমাম বান্নার পাঠশালা",
                "product_name_english" => "imam banner pathshala",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10628497e549aa41652856805.jpg",
            ],
            [
                "product_name" => "ইমাম হাসান আল বান্নার ওযিফা",
                "product_name_english" => "imam hasanul bannr ojifa",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10628497278550c1652856615.jpg",
            ],
            [
                "product_name" => "জীবন বিধান ইসলাম",
                "product_name_english" => "jibon bidhan islam",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_10623abc790480c1648016505.jpg",
            ],
            [
                "product_name" => "রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন",
                "product_name_english" => "rasulullah sm er sathe romanchokor ekdin",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_1061f4f02922e971643442217.jpg",
            ],
            [
                "product_name" => "দ্বীন কায়েমের নববী রূপরেখা",
                "product_name_english" => "din kayemer nobobi rup rekha",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_106195dcbdefd971637211325.jpg",
            ],
            [
                "product_name" => "মানুষ গড়ার নববি শিল্প",
                "product_name_english" => "manush gorar nobobi shilpo",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_1063bbd8f5f14ce1673255157.jpg",
            ],
            [
                "product_name" => "পাবলিক ম্যাটারস",
                "product_name_english" => "public matters",
                "image" => "https://prossodprokashon.com/uploads/file_manager/fm_image_350x500_106295b776190dc1653978998.jpg",
            ],
        ];

        foreach ($titles as $item) {
            Product::create(
                [
                    "product_name" => $item["product_name"],
                    "product_name_english" => $item["product_name_english"],
                    "product_url" => \Illuminate\Support\Str::slug($item["product_name_english"]),
                    "is_top_product" => rand(0, 1),
                    "cost" => rand(300, 500),
                    "sales_price" => rand(501, 700),
                    "stock_alert_qty" => 10,
                    "pages" => rand(800, 1600),
                    "binding" => ['হার্ডকভার', 'পেপারব্যাক'][rand(0, 1)],
                    "isbn" => "bk-" . rand(1000, 2000),
                    "sku" => "sk-" . rand(1000, 2000),
                    "height" => rand(8, 12),
                    "width" => rand(5, 8),
                    "weight" => rand(100, 300),
                    "depth" => rand(1, 5),
                    "description" => $descriptions[rand(0, count($descriptions)-1)],
                    "thumb_image" => $item["image"],
                    "search_keywords" => \Illuminate\Support\Str::slug($item["product_name_english"]),
                    "page_title" => $item["product_name"],
                    "meta_description" => $item["product_name"],
                ]
            );
        }
    }
}
