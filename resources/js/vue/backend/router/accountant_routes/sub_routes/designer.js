import Layout from "../../../views/accountant/designer/Layout";
import All from "../../../views/accountant/designer/All";
import Create from "../../../views/accountant/designer/Create";
import Edit from "../../../views/accountant/designer/Edit";
import Details from "../../../views/accountant/designer/Details";
import Import from "../../../views/accountant/designer/Import";

let prefix = "AccountantDesigner"
export default {
    path: "designer",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
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
