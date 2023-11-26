<?php

namespace Database\Seeders\Task;

use App\Models\Task\Task;
use App\Models\Task\TaskUser;
use App\Models\Task\TaskVariant;
use App\Models\Task\TaskVariantValue;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class TaskSeeder extends Seeder
{
    /**
     php artisan db:seed --class="\Database\Seeders\Task\TaskSeeder"
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Task::truncate();
        TaskVariant::truncate();
        TaskVariantValue::truncate();

        $variants = [
            [
                "title" => "Priority",
                "value" => [
                    "High",
                    "Medium",
                    "Low",
                ],
            ],
            [
                "title" => "Status",
                "value" => [
                    "In Progress",
                    "Completed",
                    "Pending",
                    "On Hold",
                ],
            ],
            [
                "title" => "Project",
                "value" => [
                    "Project A",
                    "Project B",
                    "Project C",
                ],
            ],
            [
                "title" => "Due Date",
                "value" => [
                    "Today",
                    "Tomorrow",
                    "This Week",
                    "Next Week",
                    "Overdue",
                ],
            ],
            [
                "title" => "Category",
                "value" => [
                    "Personal",
                    "Work",
                    "Home",
                    "Errands",
                ],
            ],
            [
                "title" => "Context",
                "value" => [
                    "Phone",
                    "Email",
                    "Meeting",
                    "Online",
                    "Offline",
                ],
            ],
            [
                "title" => "Urgency",
                "value" => [
                    "Urgent",
                    "Important",
                    "Not Urgent",
                    "Not Important",
                ],
            ],
            [
                "title" => "Collaboration",
                "value" => [
                    "Team",
                    "Individual",
                    "Client",
                ],
            ],
            [
                "title" => "Location",
                "value" => [
                    "Office",
                    "Home",
                    "Outdoors",
                    "Travel",
                ],
            ],
            [
                "title" => "Time",
                "value" => [
                    "Morning",
                    "Afternoon",
                    "Evening",
                    "Night",
                ],
            ],
        ];

        foreach ($variants as $item) {
            $task_variant = TaskVariant::create([
                "title" => $item["title"],
            ]);

            foreach ($item["value"] as $value) {
                TaskVariantValue::create([
                    "task_variant_id" => $task_variant->id,
                    "task_variant_title" => $task_variant->title,
                    "title" => $value,
                    "color" => "#" . rand(100000, 999999),
                ]);
            }
        }

        $taskTitles = [
            "Complete project proposal",
            "Review client feedback",
            "Update website content",
            "Test application functionality",
            "Prepare presentation slides",
            "Schedule team meeting",
            "Fix bug in login module",
            "Research competitor analysis",
            "Write user documentation",
            "Optimize website performance",
            "Create social media campaign",
            "Design new logo",
            "Implement payment gateway",
            "Conduct user testing",
            "Generate monthly sales report",
            "Deploy application to server",
            "Create database schema",
            "Coordinate with marketing team",
            "Train new team members",
            "Perform security audit",
        ];

        $taskDescriptions = [
            "This task involves completing the proposal for the current project, outlining the goals, objectives, and deliverables.",
            "In this task, you need to review and analyze the feedback provided by the client and address any concerns or suggestions.",
            "You will be responsible for updating the content of the website, ensuring it is accurate, relevant, and up to date.",
            "The task involves testing the functionality of the application to identify and fix any bugs or issues.",
            "Prepare visually appealing and informative slides for an upcoming presentation to stakeholders.",
            "Schedule and coordinate a team meeting to discuss project progress, challenges, and next steps.",
            "Fix a bug in the login module of the application to ensure users can log in without any issues.",
            "Conduct research on competitors to gather information on their products, services, and strategies.",
            "Write clear and comprehensive user documentation to guide users in effectively using the application.",
            "Optimize the performance of the website by improving page load times, optimizing code, and implementing caching mechanisms.",
            "Create a social media campaign to promote the product or service, targeting the desired audience.",
            "Design a new logo for the company or product, considering the brand identity and target market.",
            "Implement a payment gateway to enable secure and seamless online transactions.",
            "Conduct user testing sessions to gather feedback on the usability and user experience of the application.",
            "Generate a monthly sales report summarizing the sales performance, trends, and key metrics.",
            "Deploy the application to a server to make it accessible to users.",
            "Create a database schema that defines the structure and relationships of the database.",
            "Coordinate with the marketing team to align efforts, share information, and collaborate on promotional activities.",
            "Train new team members on the project requirements, processes, and tools.",
            "Perform a security audit to identify vulnerabilities and implement measures to protect the application and data.",
        ];

        foreach ($taskTitles as $index => $title) {
            $task = Task::create([
                "title" => $title,
                "details" => $taskDescriptions[$index],
                "complete" => rand(0, 1),
                "target_date" => Carbon::now()->addDays(rand(1, 5)),
                "target_time" => rand(10, 22) . ":" . rand(10, 55). ":00",
                "is_blink" => rand(0, 1),
            ]);

            foreach ([8,9,10,11,12] as $user_id) {
                TaskUser::create([
                    "task_id" => $task->id,
                    "user_id" => $user_id,
                ]);
            }

            $task->variants()->attach([rand(1,3),rand(4,6),rand(7,9)]);
        }
    }
}
