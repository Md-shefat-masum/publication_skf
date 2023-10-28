import Layout from "../../../views/accountant/bindings/Layout";
import All from "../../../views/accountant/bindings/All";
import Create from "../../../views/accountant/bindings/Create";
import Edit from "../../../views/accountant/bindings/Edit";
import Details from "../../../views/accountant/bindings/Details";
import Import from "../../../views/accountant/bindings/Import";

let prefix = "Accountant Binding"
export default {
    path: "binding",
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
