import AccountantDashboard from "../../views/AccountantDashboard.vue"
import AccountantLayout from "../../views/AccountantLayout.vue"
import account_categories from "./sub_routes/account_categories";
import account_types from "./sub_routes/account_types";
import account_entries from "./sub_routes/account_entries";
import account_supplier_log from "./sub_routes/account_supplier_log";

import paper from "./sub_routes/paper";
import print from "./sub_routes/print";
import binding from "./sub_routes/binding";
import designer from "./sub_routes/designer";
import report from "./sub_routes/report";

export default {
    path: "/accountant",
    component: AccountantLayout,
    children: [
        {
            path: "",
            name: "AccountantDashboard",
            component: AccountantDashboard,
        },
        account_categories,
        account_types,
        account_entries,
        account_supplier_log,

        paper,
        print,
        binding,
        designer,
        report,
    ],
};
