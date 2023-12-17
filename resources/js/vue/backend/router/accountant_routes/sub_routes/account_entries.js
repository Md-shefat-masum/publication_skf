import Layout from "../../../views/accountant/account_entries/Layout";
import All from "../../../views/accountant/account_entries/All";
import Create from "../../../views/accountant/account_entries/Create";
import Edit from "../../../views/accountant/account_entries/Edit";
import Details from "../../../views/accountant/account_entries/Details";
import Import from "../../../views/accountant/account_entries/Import";

import Income from "../../../views/accountant/account_entries/Income";
import Expense from "../../../views/accountant/account_entries/Expense";
import BranchDue from "../../../views/accountant/account_entries/BranchDue.vue";
import BranchDuePayment from "../../../views/accountant/account_entries/BranchDuePayment.vue";

let prefix = `AcountantEntries`
export default {
    path: "account-entries",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: "Account Entry Management",
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
            path: `income`,
            name: `Income${prefix}`,
            component: Income,
        },
        {
            path: `expense`,
            name: `Expense${prefix}`,
            component: Expense,
        },
        {
            path: `branch-due`,
            name: `AccountBranchDue`,
            component: BranchDue,
        },
        {
            path: `branch-due-payment/:user_id`,
            name: `BranchDuePayment`,
            component: BranchDuePayment,
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
