import Layout from "../../../views/accountant/account_supplier_logs/Layout";
import All from "../../../views/accountant/account_supplier_logs/All";
import Create from "../../../views/accountant/account_supplier_logs/Create";
import Edit from "../../../views/accountant/account_supplier_logs/Edit";
import Details from "../../../views/accountant/account_supplier_logs/Details";
import Import from "../../../views/accountant/account_supplier_logs/Import";

import Income from "../../../views/accountant/account_supplier_logs/Income";
import Expense from "../../../views/accountant/account_supplier_logs/Expense";

import AllPayments from "../../../views/accountant/account_supplier_logs/AllPayments.vue";
import CreatePayment from "../../../views/accountant/account_supplier_logs/CreatePayment.vue";


let prefix = `AcountantSupplierLog`
export default {
    path: "account-supplier-log",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: "Supplier payments Management",
    },
    children: [
        {
            path: ``,
            name: `All${prefix}`,
            component: All,
        },
        {
            path: `import`,
            name: `Import${prefix}`,
            component: Import,
        },
        {
            path: `create`,
            name: `Create${prefix}`,
            component: Create,
        },
        {
            path: `income`,
            name: `Income${prefix}`,
            component: Income,
        },
        {
            path: `expense`,
            name: `Expense${prefix}`,
            component: Expense,
        },
        {
            path: `supplier-payments`,
            name: `AllSupplierPayments`,
            component: AllPayments,
        },
        {
            path: `edit/:id`,
            name: `Edit${prefix}`,
            component: Edit,
        },
        {
            path: `details/:id`,
            name: `Details${prefix}`,
            component: Details,
        },
    ],
};
