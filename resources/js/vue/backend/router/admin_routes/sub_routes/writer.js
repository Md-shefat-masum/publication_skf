import Layout from "../../../views/admin/writers/Layout";
import All from "../../../views/admin/writers/All";
import Create from "../../../views/admin/writers/Create";
import Edit from "../../../views/admin/writers/Edit";
import Details from "../../../views/admin/writers/Details";
import Import from "../../../views/admin/writers/Import";

let prefix = `AdminWriter`
export default {
    path: "writer",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: "Writer Management",
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
