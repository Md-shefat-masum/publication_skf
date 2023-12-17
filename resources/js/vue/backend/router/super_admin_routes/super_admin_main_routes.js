import SuperAdminDashboard from "../../views/SuperAdminDashboard.vue"
import SuperAdminLayout from "../../views/SuperAdminLayout.vue"

import task from "./sub_routes/task"
import report from "./sub_routes/report"

export default {
    path: "/super-admin",
    component: SuperAdminLayout,
    children: [
        {
            path: "",
            name: "SuperAdminDashboard",
            component: SuperAdminDashboard,
        },
        task,
        report,
    ],
};
