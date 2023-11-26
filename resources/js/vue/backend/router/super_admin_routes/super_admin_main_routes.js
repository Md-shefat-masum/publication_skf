import SuperAdminDashboard from "../../views/SuperAdminDashboard.vue"
import SuperAdminLayout from "../../views/SuperAdminLayout.vue"

export default {
    path: "/super-admin",
    component: SuperAdminLayout,
    children: [
        {
            path: "",
            name: "SuperAdminDashboard",
            component: SuperAdminDashboard,
        },
    ],
};
