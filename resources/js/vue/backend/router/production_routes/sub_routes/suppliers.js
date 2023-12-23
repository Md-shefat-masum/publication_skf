import Layout from "../../../views/production/suppliers/Layout";
import All from "../../../views/production/suppliers/All";
import Create from "../../../views/production/suppliers/Create";
import Edit from "../../../views/production/suppliers/Edit";
import Details from "../../../views/production/suppliers/Details";
import Import from "../../../views/production/suppliers/Import";

let prefix = "ProductionSuppliers"
export default {
    path: "supplier",
    component: Layout,
    props: {
        role_permissions: ["production"],
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
