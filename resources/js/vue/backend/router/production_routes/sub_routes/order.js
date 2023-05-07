import Layout from "../../../views/production/orders/Layout";
import All from "../../../views/production/orders/All";
import Create from "../../../views/production/orders/Create";
import Production from "../../../views/production/orders/Production";
import Pricing from "../../../views/production/orders/Pricing";
import Edit from "../../../views/production/orders/Edit";
import Details from "../../../views/production/orders/Details";
import Import from "../../../views/production/orders/Import";

export default {
    path: "order",
    component: Layout,
    props: {
        role_permissions: ["production"],
        layout_title: "Order Management",
    },
    children: [
        {
            path: "",
            name: "AllProductionOrder",
            component: All,
        },
        {
            path: "import",
            name: "ImportProductionOrder",
            component: Import,
        },
        {
            path: "create",
            name: "CreateProductionOrder",
            component: Create,
        },
        {
            path: "production",
            name: "ProductionProductionOrder",
            component: Production,
        },
        {
            path: "pricing",
            name: "ProductionProductionPricing",
            component: Pricing,
        },
        {
            path: "edit/:id",
            name: "EditProductionOrder",
            component: Edit,
        },
        {
            path: "details/:id",
            name: "DetailsProductionOrder",
            component: Details,
        },
    ],
};
