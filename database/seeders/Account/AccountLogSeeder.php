<?php

namespace Database\Seeders\Account;

use App\Models\Account\Account;
use App\Models\Account\AccountLog;
use Illuminate\Database\Seeder;

class AccountLogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        AccountLog::truncate();
        $data = [
            [
                'title' => 'Salary',
                'type' => 'Earned income',
                'amount' => '$5,000 per month'
            ],
            [
                'title' => 'Rental income',
                'type' => 'Passive income',
                'amount' => '$1,500 per month'
            ],
            [
                'title' => 'Dividend income',
                'type' => 'Investment income',
                'amount' => '$500 per quarter'
            ],
            [
                'title' => 'Freelance work',
                'type' => 'Self-employment income',
                'amount' => '$2,000 per project'
            ],
            [
                'title' => 'Consulting fees',
                'type' => 'Self-employment income',
                'amount' => '$150 per hour'
            ],
            [
                'title' => 'Business sales',
                'type' => 'Business income',
                'amount' => '$10,000 per month'
            ],
            [
                'title' => 'Interest income',
                'type' => 'Investment income',
                'amount' => '$200 per month'
            ],
            [
                'title' => 'Capital gains',
                'type' => 'Investment income',
                'amount' => '$1,000 per sale'
            ],
            [
                'title' => 'Royalties',
                'type' => 'Passive income',
                'amount' => '$300 per quarter'
            ],
            [
                'title' => 'Referral bonuses',
                'type' => 'Other income',
                'amount' => '$50 per referral'
            ],
            [
                'title' => 'Part-time job',
                'type' => 'Earned income',
                'amount' => '$800 per month'
            ],
            [
                'title' => 'Online course sales',
                'type' => 'Business income',
                'amount' => '$500 per course'
            ],
            [
                'title' => 'Cashback rewards',
                'type' => 'Other income',
                'amount' => '$20 per purchase'
            ],
            [
                'title' => 'YouTube ad revenue',
                'type' => 'Passive income',
                'amount' => '$100 per month'
            ],
            [
                'title' => 'Stock dividends',
                'type' => 'Investment income',
                'amount' => '$50 per quarter'
            ],
            [
                'title' => 'Freelance design work',
                'type' => 'Self-employment income',
                'amount' => '$500 per project'
            ],
            [
                'title' => 'Bonus',
                'type' => 'Earned income',
                'amount' => '$1,000'
            ],
            [
                'title' => 'Real estate rental',
                'type' => 'Passive income',
                'amount' => '$2,500 per month'
            ],
            [
                'title' => 'Online store sales',
                'type' => 'Business income',
                'amount' => '$3,000 per month'
            ],
            [
                'title' => 'Website ad revenue',
                'type' => 'Passive income',
                'amount' => '$300 per month'
            ],
            [
                'title' => 'Inheritance',
                'type' => 'Other income',
                'amount' => '$50,000'
            ],
            [
                'title' => 'Freelance writing',
                'type' => 'Self-employment income',
                'amount' => '$100 per article'
            ],
            [
                'title' => 'Savings account interest',
                'type' => 'Passive income',
                'amount' => '$50 per month'
            ],
            [
                'title' => 'Consulting retainer',
                'type' => 'Self-employment income',
                'amount' => '$1,000 per month'
            ],
            [
                'title' => 'Car rental income',
                'type' => 'Passive income',
                'amount' => '$300 per week'
            ],
            [
                'title' => 'Influencer sponsorships',
                'type' => 'Other income',
                'amount' => '$500 per collaboration'
            ],
            [
                'title' => 'Photography gigs',
                'type' => 'Self-employment income',
                'amount' => '$200 per event'
            ],
            [
                'title' => 'Affiliate marketing',
                'type' => 'Passive income',
                'amount' => '10% commission per sale'
            ],
            [
                'title' => 'Social media management',
                'type' => 'Self-employment income',
                'amount' => '$500 per month'
            ],
            [
                'title' => 'Online surveys',
                'type' => 'Other income',
                'amount' => '$50 per survey'
            ],
            [
                'title' => 'Property flipping',
                'type' => 'Business income',
                'amount' => '$20,000 per sale'
            ],
            [
                'title' => 'Airbnb rental income',
                'type' => 'Passive income',
                'amount' => '$2,000 per month'
            ],
            [
                'title' => 'Fitness coaching',
                'type' => 'Self-employment income',
                'amount' => '$100 per session'
            ],
            [
                'title' => 'Tuition or teaching',
                'type' => 'Self-employment income',
                'amount' => '$50 per hour'
            ],
            [
                'title' => 'Stock trading profits',
                'type' => 'Investment income',
                'amount' => 'Varies'
            ],
            [
                'title' => 'Web development projects',
                'type' => 'Self-employment income',
                'amount' => 'Varies'
            ],
            [
                'title' => 'Amazon FBA sales',
                'type' => 'Business income',
                'amount' => 'Varies'
            ],
            [
                'title' => 'Licensing royalties',
                'type' => 'Passive income',
                'amount' => 'Varies'
            ],
            [
                'title' => 'Paid focus groups',
                'type' => 'Other income',
                'amount' => 'Varies'
            ],
            [
                'title' => 'Cryptocurrency mining',
                'type' => 'Passive income',
                'amount' => 'Varies'
            ],
            [
                'title' => 'Virtual assistant work',
                'type' => 'Self-employment income',
                'amount' => 'Varies'
            ],
        ];

        $i = 1;
        foreach ($data as $item) {
            AccountLog::create([
                "date" => '2023' . '-' . rand(1, 5) . '-' . rand(1, 28),
                "category_id" => rand(1, 29),
                "is_expense" => $i % 2 == 0 ? 1 : 0,
                "is_income" => $i % 2 != 0 ? 1 : 0,
                "amount" => rand(500, 5000),
                "description" => $item["title"],
            ]);
            $i++;
        }
    }
}
