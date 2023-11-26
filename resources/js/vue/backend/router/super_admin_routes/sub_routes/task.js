import Layout from "../../../views/superadmin/task/Layout";
import All from "../../../views/superadmin/task/All";
import Create from "../../../views/superadmin/task/Create";
import Edit from "../../../views/superadmin/task/Edit";
import Details from "../../../views/superadmin/task/Details";
import Import from "../../../views/superadmin/task/Import";
import TaskCreate from "../../../views/superadmin/task/TaskCreate";

let prefix = "SuperAdminTask"
export default {
    path: "task",
    component: Layout,
    props: {
        role_permissions: ["super_admin"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `SuperAdminTaskCreate`,
            component: TaskCreate,
        },
        {
            path: `all`,
            name: `All${prefix}`,
            component: All,
        },
        {
            path: `import`,
            name: `Import${prefix}`,
            component: Import,
        },
        {
            path: `create`,
            name: `Create${prefix}`,
            component: Create,
        },
        {
            path: `edit/:id`,
            name: `Edit${prefix}`,
            component: Edit,
        },
        {
            path: `details/:id`,
            name: `Details${prefix}`,
            component: Details,
        },

    ],
};
