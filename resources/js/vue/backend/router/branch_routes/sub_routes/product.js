import Layout from '../../../views/branch/products/Layout'
import AllBranchProduct from '../../../views/branch/products/All'
import CreateBranchProduct from '../../../views/branch/products/Create'
import EditBranchProduct from '../../../views/branch/products/Edit'
import DetailsBranchProduct from '../../../views/branch/products/Details'
import ImportBranchProduct from '../../../views/branch/products/Import'

export default {
    path: 'product',
    component: Layout,
    props: {
        role_permissions: ['branch'],
        layout_title: 'Product Management',
    },
    children: [{
            path: '',
            name: 'AllBranchProduct',
            component: AllBranchProduct,
        },
        {
            path: 'import',
            name: 'ImportBranchProduct',
            component: ImportBranchProduct,
        },
        {
            path: 'create',
            name: 'CreateBranchProduct',
            component: CreateBranchProduct,
        },
        {
            path: 'edit/:id',
            name: 'EditBranchProduct',
            component: EditBranchProduct,
        },
        {
            path: 'details/:id',
            name: 'DetailsBranchProduct',
            component: DetailsBranchProduct,
        },
    ],

};
