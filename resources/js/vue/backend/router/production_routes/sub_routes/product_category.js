import Layout from "../../../views/production/product_categories/Layout";
import All from "../../../views/production/product_categories/All";
import Create from "../../../views/production/product_categories/Create";
import Edit from "../../../views/production/product_categories/Edit";
import Details from "../../../views/production/product_categories/Details";
import Import from "../../../views/production/product_categories/Import";

export default {
    path: "product-category",
    component: Layout,
    props: {
        role_permissions: ["production"],
        layout_title: "Product Category Management",
    },
    children: [
        {
            path: "",
            name: "AllProductionProductCategory",
            component: All,
        },
        {
            path: "import",
            name: "ImportProductionProductCategory",
            component: Import,
        },
        {
            path: "create",
            name: "CreateProductionProductCategory",
            component: Create,
        },
        {
            path: "edit/:id",
            name: "EditProductionProductCategory",
            component: Edit,
        },
        {
            path: "details/:id",
            name: "DetailsProductionProductCategory",
            component: Details,
        },
    ],
};
