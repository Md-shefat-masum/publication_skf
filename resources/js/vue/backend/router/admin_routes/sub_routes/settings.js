import Layout from "../../../views/admin/settings/Layout";

// import All from "../../../views/admin/settings/All";
// import Create from "../../../views/admin/settings/Create";
// import Edit from "../../../views/admin/settings/Edit";
// import Details from "../../../views/admin/settings/Details";
// import Import from "../../../views/admin/settings/Import";

import BasicInfo from "../../../views/admin/settings/BasicInfo";
import PaymentInfo from "../../../views/admin/settings/PaymentInfo";
import DeliveryCost from "../../../views/admin/settings/DeliveryCost";
import OfficeTime from "../../../views/admin/settings/OfficeTime";
import WebsiteHeadInfo from "../../../views/admin/settings/WebsiteHeadInfo";
import SeoInformation from "../../../views/admin/settings/SeoInformation";
import SocialLinks from "../../../views/admin/settings/SocialLinks";
import InvoiceInfo from "../../../views/admin/settings/InvoiceInfo";
import ApiInfo from "../../../views/admin/settings/ApiInfo";
import EmailInfo from "../../../views/admin/settings/EmailInfo";
import WebsiteControll from "../../../views/admin/settings/WebsiteControll";

let prefix = `AdminSetting`
export default {
    path: "settings",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: "App Settings",
    },
    children: [
        {
            path: ``,
            name: `All${prefix}`,
            component: BasicInfo,
        },
        {
            path: `payment-info`,
            name: `PaymentInfoSettings`,
            component: PaymentInfo,
        },
        {
            path: `delivery-cost`,
            name: `DeliveryCostSettings`,
            component: DeliveryCost,
        },
        {
            path: `office-time`,
            name: `OfficeTimeSettings`,
            component: OfficeTime,
        },
        {
            path: `website-head-info`,
            name: `WebsiteHeadInfoSettings`,
            component: WebsiteHeadInfo,
        },
        {
            path: `seo-information`,
            name: `SeoInformationSettings`,
            component: SeoInformation,
        },
        {
            path: `social-links`,
            name: `SocialLinksSettings`,
            component: SocialLinks,
        },
        {
            path: `invoice-info`,
            name: `InvoiceInfoSettings`,
            component: InvoiceInfo,
        },
        {
            path: `api-info`,
            name: `ApiInfoSettings`,
            component: ApiInfo,
        },
        {
            path: `email-info`,
            name: `EmailInfoSettings`,
            component: EmailInfo,
        },
        {
            path: `website-controll`,
            name: `WebsiteControllSettings`,
            component: WebsiteControll,
        },
    ],
};
