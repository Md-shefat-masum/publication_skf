import Layout from "../../../views/production/orders/Layout";
import All from "../../../views/production/orders/All";
import AllProduction from "../../../views/production/orders/AllProduction";
import Create from "../../../views/production/orders/Create";
import Production from "../../../views/production/orders/Production";
import ProductionEdit from "../../../views/production/orders/ProductionEdit";
import Pricing from "../../../views/production/orders/Pricing";
import Edit from "../../../views/production/orders/Edit";
import Details from "../../../views/production/orders/Details";
import Import from "../../../views/production/orders/Import";
import UpdateStatus from "../../../views/production/orders/UpdateStatus";
import CompleteProduction from "../../../views/production/orders/CompleteProduction";

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
            path: "productions",
            name: "AllProductions",
            component: AllProduction,
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
            path: "update-status/:id",
            name: "UpdateStatus",
            component: UpdateStatus,
        },
        {
            path: "complete-production/:id",
            name: "CompleteProduction",
            component: CompleteProduction,
        },
        {
            path: "production/:id",
            name: "ProductionProductionEdit",
            component: ProductionEdit,
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
