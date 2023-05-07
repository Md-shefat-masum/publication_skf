import Layout from "../../../views/admin/products/Layout";
import All from "../../../views/admin/products/All";
import Create from "../../../views/admin/products/Create";
import Edit from "../../../views/admin/products/Edit";
import Details from "../../../views/admin/products/Details";
import Import from "../../../views/admin/products/Import";

let prefix = `AdminProduct`;
export default {
    path: "product",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: "Product Management",
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
