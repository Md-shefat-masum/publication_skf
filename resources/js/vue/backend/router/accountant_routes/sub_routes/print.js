import Layout from "../../../views/accountant/prints/Layout";
import All from "../../../views/accountant/prints/All";
import Create from "../../../views/accountant/prints/Create";
import Edit from "../../../views/accountant/prints/Edit";
import Details from "../../../views/accountant/prints/Details";
import Import from "../../../views/accountant/prints/Import";

let prefix = "AccountantPrinting"
export default {
    path: "printing",
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
