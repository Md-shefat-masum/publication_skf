import Layout from "../../../views/accountant/papers/Layout";
import All from "../../../views/accountant/papers/All";
import Create from "../../../views/accountant/papers/Create";
import Edit from "../../../views/accountant/papers/Edit";
import Details from "../../../views/accountant/papers/Details";
import Import from "../../../views/accountant/papers/Import";

let prefix = "Paper"
export default {
    path: "paper",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `AllAcountant${prefix}`,
            component: All,
        },
        {
            path: `import`,
            name: `ImportAcountant${prefix}`,
            component: Import,
        },
        {
            path: `create`,
            name: `CreateAcountant${prefix}`,
            component: Create,
        },
        {
            path: `edit/:id`,
            name: `EditAcountant${prefix}`,
            component: Edit,
        },
        {
            path: `details/:id`,
            name: `DetailsAcountant${prefix}`,
            component: Details,
        },
    ],
};
