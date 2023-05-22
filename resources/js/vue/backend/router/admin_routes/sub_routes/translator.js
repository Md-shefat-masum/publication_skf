import Layout from "../../../views/admin/translators/Layout";
import All from "../../../views/admin/translators/All";
import Create from "../../../views/admin/translators/Create";
import Edit from "../../../views/admin/translators/Edit";
import Details from "../../../views/admin/translators/Details";
import Import from "../../../views/admin/translators/Import";

let prefix = `AdminTranslator`
export default {
    path: "translator",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: "Translator Management",
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
