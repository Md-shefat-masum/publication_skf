import BranchTestLayout from '../../../views/branch/test/Layout'
import BranchTestPage1 from '../../../views/branch/test/Page1'
import BranchTestPage2 from '../../../views/branch/test/Page2'
export default {
    path: 'test',
    component: BranchTestLayout,
    props: {
        role_permissions: ['branch'],
        layout_title: 'Management',
    },
    children: [{
            path: '',
            name: 'BranchTestPage1',
            component: BranchTestPage1,
        },
        {
            path: 'test2',
            name: 'BranchTestPage2',
            component: BranchTestPage2,
        },
    ],
};
