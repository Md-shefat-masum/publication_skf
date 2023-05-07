import Layout from "../../../views/production/products/Layout";
import All from "../../../views/production/products/All";
import Create from "../../../views/production/products/Create";
import Edit from "../../../views/production/products/Edit";
import Details from "../../../views/production/products/Details";
import Import from "../../../views/production/products/Import";

export default {
    path: "product",
    component: Layout,
    props: {
        role_permissions: ["production"],
        layout_title: "Product Management",
    },
    children: [
        {
            path: "",
            name: "AllProductionProduct",
            component: All,
        },
        {
            path: "import",
            name: "ImportProductionProduct",
            component: Import,
        },
        {
            path: "create",
            name: "CreateProductionProduct",
            component: Create,
        },
        {
            path: "edit/:id",
            name: "EditProductionProduct",
            component: Edit,
        },
        {
            path: "details/:id",
            name: "DetailsProductionProduct",
            component: Details,
        },
    ],
};
