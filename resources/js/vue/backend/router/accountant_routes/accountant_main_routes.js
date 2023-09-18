import AccountantDashboard from "../../views/AccountantDashboard.vue"
import AccountantLayout from "../../views/AccountantLayout.vue"
import account_categories from "./sub_routes/account_categories";
import account_types from "./sub_routes/account_types";
import account_entries from "./sub_routes/account_entries";
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
    ],
};
