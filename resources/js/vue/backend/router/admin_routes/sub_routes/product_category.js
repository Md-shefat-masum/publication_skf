import Layout from "../../../views/admin/product_categories/Layout";
import All from "../../../views/admin/product_categories/All";
import Create from "../../../views/admin/product_categories/Create";
import Edit from "../../../views/admin/product_categories/Edit";
import Details from "../../../views/admin/product_categories/Details";
import Import from "../../../views/admin/product_categories/Import";

let prefix = `AdminProductCategory`;
export default {
    path: "product-category",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: "Product Category Management",
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
