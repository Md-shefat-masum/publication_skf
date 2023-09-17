import AccountantDashboard from "../../views/AccountantDashboard.vue"
import AccountantLayout from "../../views/AccountantLayout.vue"
import account_categories from "./sub_routes/account_categories";
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
    ],
};
