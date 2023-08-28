import ProductionDashboard from "../../views/ProductionDashboard.vue"
import ProductionLayout from "../../views/ProductionLayout.vue"
import product from "./sub_routes/product";
import product_category from "./sub_routes/product_category";
import order from "./sub_routes/order";
import paper from "./sub_routes/paper";
import print from "./sub_routes/print";
import binding from "./sub_routes/binding";
import designer from "./sub_routes/designer";
import account from "./sub_routes/account";
import account_category from "./sub_routes/account_category";
import account_bank from "./sub_routes/account_bank";
import paper_stock from "./sub_routes/paper_stock";

export default {
    path: "/production",
    component: ProductionLayout,
    children: [
        {
            path: "",
            name: "ProductionDashboard",
            component: ProductionDashboard,
        },
        product,
        product_category,
        order,
        paper,
        paper_stock,
        print,
        binding,
        designer,
        account,
        account_category,
        account_bank,
    ],
};
