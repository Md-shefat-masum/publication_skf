import Layout from "../../../views/production/supplier_categories/Layout";
import All from "../../../views/production/supplier_categories/All";
import Create from "../../../views/production/supplier_categories/Create";
import Edit from "../../../views/production/supplier_categories/Edit";
import Details from "../../../views/production/supplier_categories/Details";
import Import from "../../../views/production/supplier_categories/Import";

let prefix = "ProductionSupplierCategories"
export default {
    path: "supplier-category",
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
