import Layout from "../../../views/accountant/reports/Layout";

import IncomeLedger from "../../../views/accountant/reports/IncomeLedger.vue";
import ExpenseLedger from "../../../views/accountant/reports/ExpenseLedger.vue";
import Statements from "../../../views/accountant/reports/Statements.vue";

let prefix = "AccountantReport"
export default {
    path: "report",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: `income-ledger`,
            name: `IncomeLedger`,
            component: IncomeLedger,
        },
        {
            path: `expense-ledger`,
            name: `ExpenseLedger`,
            component: ExpenseLedger,
        },
        {
            path: `statements`,
            name: `Statements`,
            component: Statements,
        },

    ],
};
