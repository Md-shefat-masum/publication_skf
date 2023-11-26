import Layout from "../../../views/accountant/customers/Layout";
import All from "../../../views/accountant/customers/All";
import Create from "../../../views/accountant/customers/Create";
import Edit from "../../../views/accountant/customers/Edit";
import Details from "../../../views/accountant/customers/Details";
import Import from "../../../views/accountant/customers/Import";

let prefix = "AccountantCustomer"
export default {
    path: "customer",
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
