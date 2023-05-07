import BranchDashboard from "../../views/BranchDashboard.vue"
import BranchLayout from "../../views/BranchLayout.vue"
import product from "./sub_routes/product";
import order from "./sub_routes/order";
export default {
    path: "/branch",
    component: BranchLayout,
    children: [
        {
            path: "",
            name: "BranchDashboard",
            component: BranchDashboard,
        },
        product,
        order,
    ],
};
