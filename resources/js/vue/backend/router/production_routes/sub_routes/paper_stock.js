import Layout from "../../../views/production/paper_stocks/Layout";
import All from "../../../views/production/paper_stocks/All";
import Create from "../../../views/production/paper_stocks/Create";
import Edit from "../../../views/production/paper_stocks/Edit";
import Details from "../../../views/production/paper_stocks/Details";
import Import from "../../../views/production/paper_stocks/Import";

let prefix = "PaperStock"
export default {
    path: "paper-stock",
    component: Layout,
    props: {
        role_permissions: ["production"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `AllProduction${prefix}`,
            component: All,
        },
        {
            path: `import`,
            name: `ImportProduction${prefix}`,
            component: Import,
        },
        {
            path: `create`,
            name: `CreateProduction${prefix}`,
            component: Create,
        },
        {
            path: `edit/:id`,
            name: `EditProduction${prefix}`,
            component: Edit,
        },
        {
            path: `details/:id`,
            name: `DetailsProduction${prefix}`,
            component: Details,
        },
    ],
};
