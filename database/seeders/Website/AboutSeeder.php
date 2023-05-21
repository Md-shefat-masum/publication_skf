<?php

namespace Database\Seeders\Website;

use App\Models\Website\About;
use Illuminate\Database\Seeder;

class AboutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        About::truncate();
        About::create([
            'type' => 'short_about',
            'description' => "Publication is a leading book shop in Bangladesh. We offer thousands of islamic, general and academic books at a discounted price. We provide good packaging with low shipping cost all over the Bangladesh.",
        ]);
        About::create([
            'type' => 'long_about',
            'description' => "
                <p>
                    Best publications is a dynamic and innovative publication that aims to inspire, educate, and entertain readers of all ages and interests. With a diverse range of topics and a commitment to excellence, Best publications offers a wide array of content including books, magazines, articles, and digital media.
                    <br>

                    At Best publications, we are passionate about literature, knowledge, and the power of storytelling. Our team of experienced writers, editors, and researchers diligently curates and creates engaging content that captivates readers from different walks of life.
                    <br>

                    Whether you are a bookworm seeking literary treasures, a student in search of academic resources, a tech enthusiast craving the latest gadgets, or someone looking for insightful articles on various subjects, Best publications has something for everyone.
                    <br>

                    We take pride in fostering a vibrant community where readers can connect, share ideas, and engage in meaningful discussions. Through our online platform and social media channels, we encourage interaction, feedback, and collaboration among our readers and authors.
                    <br>

                    Best publications also collaborates with renowned authors, experts, and thought leaders to bring exclusive interviews, thought-provoking essays, and expert opinions to our readers. We strive to be a trusted source of information and inspiration, empowering our readers to explore new horizons and broaden their perspectives.
                    <br>

                    Whether you prefer the tactile experience of flipping through the pages of a book or the convenience of digital reading, Best publications offers a seamless and user-friendly reading experience across multiple platforms.
                    <br>

                    Join us on a literary adventure, as Best publications opens the doors to a world of knowledge, imagination, and inspiration. Together, let's embark on a journey of discovery and lifelong learning.
                    <br>
                </p>
            ",
        ]);
    }
}
