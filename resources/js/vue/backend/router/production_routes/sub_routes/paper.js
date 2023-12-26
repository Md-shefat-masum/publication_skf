import Layout from "../../../views/production/papers/Layout";
import All from "../../../views/production/papers/All";
import Create from "../../../views/production/papers/Create";
import Edit from "../../../views/production/papers/Edit";
import Details from "../../../views/production/papers/Details";
import Import from "../../../views/production/papers/Import";
import PaperPlan from "../../../views/production/papers/PaperPlan";

let prefix = "Paper"
export default {
    path: "paper",
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
            path: `paper-plan`,
            name: `PaperPlan`,
            component: PaperPlan,
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
