import EmployeeDashboard from "../../views/EmployeeDashboard.vue"
import EmployeeLayout from "../../views/EmployeeLayout.vue"

import task from "./sub_routes/task"

export default {
    path: "/employee",
    component: EmployeeLayout,
    children: [
        {
            path: "",
            name: "EmployeeDashboard",
            component: EmployeeDashboard,
        },
        task,
    ],
};
