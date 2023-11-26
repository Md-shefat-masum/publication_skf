import Layout from "../../../views/accountant/account_categories/Layout";
import All from "../../../views/accountant/account_categories/All";
import AllincomeExpense from "../../../views/accountant/account_categories/AllincomeExpense.vue";
import Create from "../../../views/accountant/account_categories/Create";
import Edit from "../../../views/accountant/account_categories/Edit";
import Details from "../../../views/accountant/account_categories/Details";
import Import from "../../../views/accountant/account_categories/Import";

let prefix = `AcountantAccountCategories`
export default {
    path: "account-categories",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: "Account Category Management",
    },
    children: [
        {
            path: ``,
            name: `All${prefix}`,
            component: All,
        },
        {
            path: `income-expense`,
            name: `AccountantAllincomeExpense`,
            component: AllincomeExpense,
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
