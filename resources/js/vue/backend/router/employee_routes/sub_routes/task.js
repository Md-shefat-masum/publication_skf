import Layout from "../../../views/employee/task/Layout";
import All from "../../../views/employee/task/All";
import Create from "../../../views/employee/task/Create";
import Edit from "../../../views/employee/task/Edit";
import Details from "../../../views/employee/task/Details";
import Import from "../../../views/employee/task/Import";
import TaskCreate from "../../../views/employee/task/TaskCreate";
import TaskVarient from "../../../views/employee/task/TaskVarient";
import TaskDetails from "../../../views/employee/task/TaskDetails";

let prefix = "EmployeeTask"
export default {
    path: "task",
    component: Layout,
    props: {
        role_permissions: ["employee"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `EmployeeTaskCreate`,
            component: TaskCreate,
        },
        {
            path: `varient`,
            name: `EmployeeTaskVarient`,
            component: TaskVarient,
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
            path: `details/:id/emp`,
            name: `TaskDetailsEmployee`,
            component: TaskDetails,
        },

    ],
};
