<!DOCTYPE html>
<html lang="en">

<head>
    <style type="text/css">
        .anticon {
            display: inline-block;
            color: inherit;
            font-style: normal;
            line-height: 0;
            text-align: center;
            text-transform: none;
            vertical-align: -0.125em;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .anticon>* {
            line-height: 1;
        }

        .anticon svg {
            display: inline-block;
        }

        .anticon::before {
            display: none;
        }

        .anticon .anticon-icon {
            display: block;
        }

        .anticon[tabindex] {
            cursor: pointer;
        }

        .anticon-spin::before,
        .anticon-spin {
            display: inline-block;
            -webkit-animation: loadingCircle 1s infinite linear;
            animation: loadingCircle 1s infinite linear;
        }

        @-webkit-keyframes loadingCircle {
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }

        @keyframes loadingCircle {
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="wggalFAQPHZHRYGy10fnGZ3TIkuleK2tfgqZ1aNA">
    <title>POS - Stockifly</title>
    <link rel="icon" type="image/png" href="https://demo.stockifly.in/images/small_light.png">
    <meta name="msapplication-TileImage" href="https://demo.stockifly.in/images/small_light.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700&amp;display=swap">

    <link rel="stylesheet" href="https://demo.stockifly.in/css/antd.css">
    <link rel="stylesheet" href="https://demo.stockifly.in/css/app.css">
    <link rel="stylesheet" href="https://demo.stockifly.in/css/pos_invoice_css.css">
    <style>
        .loading-app-container {
            height: 100%;
            width: 100%;
            display: flex;
            position: fixed;
            align-items: center;
            justify-content: center;
            background: #f8f8ff;
        }
    </style>
    <style type="text/css" id="operaUserStyle"></style>
    <style>
        .loading-app-container[data-v-8086a556] {
            align-items: center;
            background: #f8f8ff;
            display: flex;
            height: 100%;
            justify-content: center;
            position: fixed;
            width: 100%
        }
    </style>
    <style>
        body {
            background: #f0f2f5 !important
        }
    </style>
    <style>
        .login-main-container {
            background: #fff;
            height: 100vh
        }

        .main-container-div {
            height: 100%
        }

        .login-left-div {
            align-items: center;
            height: 100%
        }

        .login-logo {
            text-align: center
        }

        .login-img-logo {
            width: 150px
        }

        .container-content {
            margin-top: 100px
        }

        .login-div {
            border-radius: 10px
        }

        .outer-div {
            margin: 0
        }

        .right-login-div {
            align-items: center;
            background: #f8f8ff;
            display: flex;
            height: 100%
        }

        .right-image {
            display: block;
            height: 100vh;
            margin: 0 auto;
            width: 100%
        }

        .login-btn,
        .login-btn:active,
        .login-btn:hover {
            background: #5254cf !important;
            border-color: #5254cf !important;
            border-radius: 5px;
            color: #fff !important
        }
    </style>
    <style>
        .main-container {
            height: 100vh
        }

        .container-content {
            margin-top: 100px
        }
    </style>
    <style type="text/css"></style>
    <style type="text/css">
        .hvdTff {
            margin-left: 240px;
            min-height: 100vh;
        }

        .fcQFnz {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: end;
            -webkit-justify-content: flex-end;
            -ms-flex-pack: end;
            justify-content: flex-end;
            -webkit-align-items: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .iThjOW .breadcrumb-header .page-content-sub-header {
            padding-top: 10px !important;
            padding-bottom: 10px !important;
        }

        .iThjOW .breadcrumb-header .breadcrumb-left-border {
            border-left: none !important;
        }

        .iThjOW .breadcrumb-header .ant-card-body {
            padding: 0px;
            margin: 0px 16px 0;
        }

        .iThjOW .dashboard-page-content-container {
            padding: 0px;
            margin: 0px 16px 0;
        }

        .iThjOW .page-content-container {
            min-height: calc(100vh - 165px);
        }

        .iThjOW .setup-page-content-container {
            min-height: calc(100vh - 147px);
        }

        .iThjOW .email-page-content-container {
            min-height: calc(100vh - 202px);
        }

        .iThjOW .page-content-container .ant-card-body,
        .iThjOW .email-page-content-container .ant-card-body {
            padding: 0px;
            margin: 0px 16px 0;
            padding-top: 30px;
        }

        .iThjOW .setting-sidebar {
            margin-left: 0px;
        }

        .kpzCNC {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            margin: 0;
            position: relative;
        }

        .kpzCNC h2,
        .kpzCNC p {
            margin: 0;
        }

        .kpzCNC figcaption .more {
            position: absolute;
            top: 0px;
            left: 0;
        }

        .kpzCNC figcaption .more a {
            color: #888;
        }

        .kpzCNC figcaption h2 {
            font-size: 20px;
            font-weight: 600;
        }

        .kpzCNC figcaption p {
            font-size: 14px;
            color: #9299B8;
        }

        .fAGfdy {
            width: 60px;
            height: 60px;
            border-radius: 12px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-align-items: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            background: #5F63F2;
            margin-right: 20px;
        }
    </style>
    <style>
        .avatar-uploader>.ant-upload {
            height: 128px;
            width: 128px
        }

        .ant-upload-select-picture-card i {
            color: #999;
            font-size: 32px
        }

        .ant-upload-select-picture-card .ant-upload-text {
            color: #666;
            margin-top: 8px
        }
    </style>
    <style>
        .flex-column {
            flex-direction: column !important
        }

        .d-flex {
            display: flex !important
        }

        .tbl-responsive {
            overflow-x: auto
        }

        .table {
            width: 100%
        }

        .align-middle {
            vertical-align: middle !important
        }

        .table>tbody {
            vertical-align: inherit
        }

        .text-gray-600 {
            color: #7e8299 !important
        }

        .fw-bold {
            font-weight: 500 !important
        }

        tbody,
        td,
        tfoot,
        th,
        thead,
        tr {
            border: 0 solid;
            border-color: inherit
        }

        .table.table-row-dashed tr {
            border-bottom: 1px dashed #eff2f5
        }

        .table td:first-child,
        .table th:first-child,
        .table tr:first-child {
            padding-left: 0
        }

        .form-check.form-check-custom {
            align-items: center;
            display: flex;
            margin: 0;
            padding-left: 0
        }

        .me-9 {
            margin-right: 2.25rem !important
        }

        .table.row-gap td,
        .table.row-gap th {
            padding-bottom: .5rem;
            padding-top: .5rem
        }

        .me-lg-20 {
            margin-right: 5rem !important
        }

        .ant-checkbox-group {
            width: 100%
        }
    </style>
    <style>
        .ant-calendar-picker {
            width: 100%
        }
    </style>
    <style>
        .ant-calendar-picker {
            width: 100%
        }
    </style>
    <style>
        .trigger {
            cursor: pointer;
            font-size: 18px;
            line-height: 64px;
            padding-top: 4px;
            transition: color .3s
        }

        .trigger:hover {
            color: #1890ff
        }
    </style>
    <style>
        .main-sidebar .ps {
            height: calc(100vh - 62px)
        }

        @media only screen and (max-width:1150px) {
            .ant-layout-sider.ant-layout-sider-collapsed {
                left: -80px !important
            }
        }
    </style>
    <style>
        .logo[data-v-34eaa41d] {
            float: left;
            margin-right: 24px;
            margin-top: -3px
        }

        .logo img[data-v-34eaa41d] {
            height: 32px
        }
    </style>
    <style>
        #components-layout-demo-responsive .logo {
            height: 32px;
            margin: 16px;
            text-align: center
        }

        .site-layout-background,
        .site-layout-sub-header-background {
            background: #fff
        }

        [data-theme=dark] .site-layout-sub-header-background {
            background: #141414
        }
    </style>
    <style>
        .order-details .ant-descriptions-item {
            padding-bottom: 5px
        }
    </style>
    <style>
        .product-details .ant-descriptions-item {
            padding-bottom: 5px
        }
    </style>
    <style>
        .item-desc {
            background-color: #f5f5f5;
            padding: 15px
        }

        .item-desc span {
            font-size: 18px;
            font-weight: 600
        }

        .item-total {
            background-color: #f5f5f5;
            font-weight: 700
        }
    </style>
    <style>
        .ant-card-extra,
        .ant-card-head-title {
            padding: 0
        }

        .ant-card-head-title {
            margin-top: 10px
        }

        .stock-history-stats {
            margin-right: 20px
        }

        .stock-history-stats .sales {
            background: #e6f2ed;
            border-radius: 10px;
            padding: 15px
        }

        .stock-history-stats .sales-returns {
            background: #ffefed;
            border-radius: 10px;
            padding: 15px
        }

        .stock-history-stats .purchases {
            background: #eff3fe;
            border-radius: 10px;
            padding: 15px
        }

        .stock-history-stats .purchase-returns {
            background: #f5f0df;
            border-radius: 10px;
            padding: 15px
        }
    </style>
    <style>
        .user-info {
            align-items: center;
            display: flex
        }

        .user-info figure {
            margin: 0 8px
        }

        .user-info .user-name {
            font-size: 16px;
            font-weight: 600;
            line-height: 15px;
            margin-bottom: 4px
        }

        .user-info .user-designation {
            color: #9299b8;
            font-size: 13px;
            font-weight: 400
        }
    </style>
    <style>
        .product-details .ant-descriptions-item {
            padding-bottom: 5px
        }
    </style>
    <style>
        .ant-badge-status-dot {
            height: 8px;
            width: 8px
        }
    </style>
    <style>
        .product-pos {
            background: #fff;
            border: 3px solid #e8e8e8;
            border-radius: 9px;
            margin-top: 15px
        }

        .product-pos-top {
            display: flex;
            justify-content: center;
            width: 100%
        }

        .product-pos-top a {
            text-align: "center"
        }

        .product-pos-top .quantity-box {
            align-items: center;
            background-color: #fff;
            display: inline-flex;
            height: 15px;
            justify-content: center;
            left: 1px;
            left: 20px;
            padding: 0 6px;
            position: absolute;
            top: 1px;
            top: 30px
        }

        .product-pos-top img {
            height: 180px;
            max-width: 100%;
            -o-object-fit: cover;
            object-fit: cover;
            padding: 15px;
            width: 100%
        }

        .product-pos-bottom {
            padding-bottom: 15px;
            padding-left: 15px;
            padding-right: 15px
        }

        .product-pos-bottom .product-category {
            color: #9ca3af;
            font-size: 12px;
            font-weight: 500
        }

        .product-pos-bottom .product-title {
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            display: -webkit-box;
            font-size: 14px;
            font-weight: 400;
            height: 40px;
            overflow: hidden
        }

        .product-pos-bottom .product-details {
            align-items: flex-end;
            display: flex;
            justify-content: space-between;
            margin-top: 15px
        }

        .product-pos-bottom .product-details .product-price span {
            font-size: 18px;
            font-weight: 600
        }

        .product-pos-bottom .product-details .product-price del {
            color: #9ca3af;
            font-weight: 400;
            margin-left: 5px
        }
    </style>
    <style>
        .pos-style-1-category-scroll {
            overflow-x: auto;
            white-space: nowrap
        }

        .pos-style-1-category-box {
            background: #fff;
            border: 3px solid #e8e8e8;
            border-radius: 5px;
            cursor: pointer;
            display: inline-block;
            height: 80px;
            margin-bottom: 5px;
            margin-right: 15px;
            text-align: center;
            width: 80px
        }

        .pos-style-1-cateogry-image {
            height: 80px;
            width: 80px
        }

        .pos-style-1-cateogry-image img {
            height: 50px;
            width: 50px
        }
    </style>
    <style>
        .right-pos-sidebar .ps {
            height: calc(100vh - 90px)
        }

        .right-icon {
            border: 1px solid #d9d9d9;
            border-left: 0;
            height: 32px;
            width: 15%
        }

        .right-icon span {
            padding-left: 14px;
            padding-top: 7px
        }

        .bill-body,
        .bill-table {
            height: 100%
        }

        .left-pos-top .ant-card-body {
            padding-bottom: 0
        }

        .left-pos-middle-table {
            height: calc(100vh - 420px);
            overflow-y: overlay
        }

        .left-pos-middle-table .ant-card-body {
            padding-bottom: 0;
            padding-top: 0
        }

        .pos-left-wrapper {
            display: flex;
            flex-direction: column
        }

        .pos-left-content {
            flex: 1;
            overflow: auto
        }

        .pos-left-footer .ant-card-body {
            padding-bottom: 0
        }

        .pos1-left-wrapper {
            display: flex;
            flex-direction: column
        }

        .pos1-left-content {
            flex: 1;
            overflow: auto
        }

        .pos1-left-footer .ant-card-body {
            padding-bottom: 0
        }

        .pos-grand-total {
            font-size: 18px;
            font-weight: 700
        }

        .pos1-products-lists {
            height: calc(100vh - 500px);
            overflow-y: overlay
        }

        .pos1-products-lists img {
            height: 100px
        }

        .pos1-products-lists .product-pos {
            margin-top: 5px
        }

        .left-pos1-middle-table {
            height: calc(100vh - 500px);
            overflow-y: overlay
        }

        .left-pos1-middle-table .ant-card-body {
            padding-bottom: 0;
            padding-top: 0
        }

        .pos1-bill-filters .ant-card-body {
            padding: 10px 3px
        }
    </style>
    <style>
        .user-details .ant-descriptions-item {
            padding-bottom: 5px
        }
    </style>
    <style>
        .bee-angle {
            transform: rotate(90deg)
        }

        .bee-angle>* {
            display: inline-block;
            vertical-align: middle
        }

        .bee-angle.zero-right {
            transform: rotate(180deg)
        }

        .bee-angle.zero-bottom {
            transform: rotate(270deg)
        }

        .bee-angle__round {
            border: 1px solid #666;
            border-radius: 50%;
            cursor: pointer;
            display: inline-block;
            height: 16px;
            margin-left: 8px;
            position: relative;
            vertical-align: middle;
            width: 16px
        }

        .bee-angle__round:before {
            background-color: #666;
            content: "";
            height: 1px;
            left: 0;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 50%
        }
    </style>
    
    <style>
        .setting-sidebar .ps {
            height: calc(100vh - 145px)
        }
    </style>
    <style>
        .flex-column {
            flex-direction: column !important
        }

        .d-flex {
            display: flex !important
        }

        .tbl-responsive {
            overflow-x: auto
        }

        .table {
            width: 100%
        }

        .fs-6 {
            font-size: 1.075rem !important
        }

        .align-middle {
            vertical-align: middle !important
        }

        .table>tbody {
            vertical-align: inherit
        }

        .text-gray-600 {
            color: #7e8299 !important
        }

        .fw-bold {
            font-weight: 500 !important
        }

        tbody,
        td,
        tfoot,
        th,
        thead,
        tr {
            border: 0 solid;
            border-color: inherit
        }

        .table.table-row-dashed tr {
            border-bottom: 1px dashed #eff2f5
        }

        .table td:first-child,
        .table th:first-child,
        .table tr:first-child {
            padding-left: 0
        }

        .table td,
        .table th,
        .table tr {
            border: inherit;
            color: inherit;
            font-size: inherit;
            font-weight: inherit;
            height: inherit;
            min-height: inherit;
            text-transform: inherit
        }

        .form-check.form-check-custom {
            align-items: center;
            display: flex;
            margin: 0;
            padding-left: 0
        }

        .me-9 {
            margin-right: 2.25rem !important
        }

        .form-check {
            display: block;
            margin-bottom: .125rem;
            min-height: 1.5rem;
            padding-left: 2.25rem
        }

        .form-check.form-check-custom.form-check-sm .form-check-input {
            height: 1.5rem;
            width: 1.5rem
        }

        .form-check:not(.form-switch) .form-check-input[type=checkbox] {
            background-size: 60% 60%
        }

        .form-check.form-check-solid .form-check-input {
            background-color: #eff2f5;
            border: 0
        }

        .form-check.form-check-custom .form-check-input {
            flex-shrink: 0;
            float: none;
            margin: 0
        }

        .form-check .form-check-input {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            cursor: pointer
        }

        .form-check-input[type=checkbox] {
            border-radius: .45em
        }

        .form-check-input {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-color: #fff;
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: contain;
            border: 1px solid rgba(0, 0, 0, .25);
            height: 1.75rem;
            margin-top: -.125rem;
            transition: background-color .15s ease-in-out, background-position .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
            vertical-align: top;
            width: 1.75rem
        }

        button,
        input,
        optgroup,
        select,
        textarea {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
            margin: 0
        }

        .form-check.form-check-custom .form-check-label {
            margin-left: .55rem
        }

        .form-check .form-check-label {
            cursor: pointer
        }
    </style>
    <style>
        .editable-cell {
            position: relative
        }

        .editable-cell .editable-cell-input-wrapper,
        .editable-cell .editable-cell-text-wrapper {
            padding-right: 24px
        }

        .editable-cell .editable-cell-text-wrapper {
            padding: 5px 24px 5px 5px
        }

        .editable-cell .editable-cell-icon,
        .editable-cell .editable-cell-icon-check {
            cursor: pointer;
            position: absolute;
            right: 0;
            width: 20px
        }

        .editable-cell .editable-cell-icon {
            display: none;
            margin-top: 4px
        }

        .editable-cell .editable-cell-icon-check {
            line-height: 28px
        }

        .editable-cell .editable-cell-icon-check:hover,
        .editable-cell .editable-cell-icon:hover {
            color: #108ee9
        }

        .editable-cell .editable-add-btn {
            margin-bottom: 8px
        }

        .editable-cell:hover .editable-cell-icon {
            display: inline-block
        }
    </style>
    <style>
        .module-description {
            word-wrap: break-word;
            max-width: 300px;
            white-space: -moz-pre-wrap;
            white-space: pre-wrap
        }
    </style>
    <style>
        .notificaiton-setting-bar .ps {
            height: calc(100vh - 145px)
        }
    </style>
    <style>
        .notificaiton-setting-bar .ps {
            height: calc(100vh - 145px)
        }
    </style>
    <style>
        .product {
            background: #fff;
            border: 1px solid #eee;
            border-radius: 4px;
            margin-top: 15px
        }

        .product-top {
            display: flex;
            justify-content: center;
            width: 100%
        }

        .product-top a {
            text-align: "center"
        }

        .product-top img {
            height: 180px;
            max-width: 100%;
            -o-object-fit: cover;
            object-fit: cover;
            width: 100%
        }

        .product-bottom {
            padding-bottom: 15px;
            padding-left: 15px;
            padding-right: 15px
        }

        .product-bottom .product-category {
            color: #9ca3af;
            font-size: 12px;
            font-weight: 500
        }

        .product-bottom .product-title {
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            display: -webkit-box;
            font-size: 14px;
            font-weight: 400;
            height: 40px;
            overflow: hidden
        }

        .product-bottom .product-details {
            align-items: flex-end;
            display: flex;
            justify-content: space-between;
            margin-top: 15px
        }

        .product-bottom .product-details .product-price span {
            font-size: 18px;
            font-weight: 600
        }

        .product-bottom .product-details .product-price del {
            color: #9ca3af;
            font-weight: 400;
            margin-left: 5px
        }

        .product-details-image {
            display: flex;
            height: 300px;
            justify-content: center
        }

        .product-details-image span {
            box-sizing: border-box;
            display: inline-block;
            overflow: hidden;
            position: relative
        }

        .product-details-image img,
        .product-details-image span {
            background: none;
            border: 0;
            height: auto;
            margin: 0;
            max-width: 100%;
            opacity: 1;
            padding: 0;
            width: auto
        }

        .product-details-image img {
            display: block
        }
    </style>
    <style>
        .footer {
            background: #172337;
            border-top: 1px solid #e5e7eb;
            color: #fff;
            padding-bottom: 40px;
            padding-top: 50px
        }

        .footer .ant-typography {
            color: #c6c6c6
        }

        .footer .footer-logo {
            width: 150px
        }

        .footer .mt-5 {
            margin-top: 5px
        }

        .footer .follow-us {
            font-size: 18px;
            font-weight: 400
        }

        .footer .social-icon-list {
            display: flex
        }

        .footer .social-icon {
            align-items: center;
            border-radius: 10px;
            color: #fff;
            display: flex;
            height: 40px;
            justify-content: center;
            width: 40px
        }

        .footer .social-icon svg {
            height: 20px
        }

        .footer .facebook-color {
            background: #2366b8
        }

        .footer .linkedin-color {
            background: #007cbc
        }

        .footer .twitter-color {
            background: #00abe4
        }

        .footer .youtube-color {
            background: #e32212
        }

        .footer .instagram-color {
            background: linear-gradient(0deg, #ffc107 0, #f44336 31%, #9c27b0 65%, #9c27b0)
        }

        .footer .ml-5 {
            margin-left: 5px
        }

        .footer .footer-links {
            list-style: none;
            padding-left: 0
        }

        .footer .footer-links li {
            padding-bottom: 8px;
            padding-top: 8px
        }

        .footer .footer-links a {
            color: #fff
        }

        .footer-copyright {
            background: #172337;
            border-top: 1px solid #454d5e;
            color: #c6c6c6;
            padding-bottom: 20px;
            padding-top: 20px;
            text-align: center
        }
    </style>
    <style>
        .login-register-modal .ant-modal-content {
            border-radius: 10px
        }
    </style>
    <style>
        .category-menu-title[data-v-6bfaea8e] {
            border-bottom: 1px solid #e5e7eb;
            padding-bottom: 8px;
            padding-top: 8px
        }

        .close-icon-button[data-v-6bfaea8e] {
            margin-right: -20px
        }
    </style>
    <style>
        .ant-carousel[data-v-2c1f61c1] .slick-arrow.custom-slick-arrow {
            background-color: rgba(31, 45, 61, .11);
            color: #fff;
            font-size: 25px;
            height: 25px;
            opacity: .3;
            width: 25px;
            z-index: 1
        }

        .ant-carousel[data-v-2c1f61c1] .custom-slick-arrow:before {
            display: none
        }

        .ant-carousel[data-v-2c1f61c1] .custom-slick-arrow:hover {
            opacity: .5
        }

        .subheader[data-v-2c1f61c1] {
            border-bottom: 1px solid #e5e7eb
        }

        .subheader .subheader-menu-lists[data-v-2c1f61c1] {
            padding-bottom: 15px;
            padding-top: 15px
        }

        .subheader .subheader-menu[data-v-2c1f61c1] {
            color: rgba(0, 0, 0, .85);
            font-size: 16px;
            font-weight: 500
        }

        .top-dropdown-box .ant-dropdown-content[data-v-2c1f61c1] {
            margin-top: 50px
        }

        .no-online-store-container[data-v-2c1f61c1] {
            align-items: center;
            background: #f8f8ff;
            display: flex;
            height: 100%;
            justify-content: center;
            position: fixed;
            width: 100%
        }
    </style>
    <style>
        .category-box[data-v-2e3f94f2] {
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .16)
        }

        .category[data-v-2e3f94f2] {
            align-items: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            margin: 20px 0;
            width: 100%
        }
    </style>
    <style>
        .prdoct-card-list {
            border-radius: 10px;
            margin-bottom: 20px;
            margin-top: 20px
        }

        .prdoct-card-list-body {
            padding: 10px 0 20px
        }

        .featured-categories .ant-list-item-meta-title {
            margin-top: 6px
        }
    </style>
    <style>
        .state-div[data-v-23c968d9] {
            align-items: center;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            display: flex;
            padding: 10px
        }

        .state-div .state-icon[data-v-23c968d9] {
            align-items: center;
            display: flex;
            justify-content: center
        }

        .state-div .state-description p[data-v-23c968d9] {
            font-size: 15px;
            margin-bottom: 0
        }

        .state-div .state-description span[data-v-23c968d9] {
            font-size: 18px;
            font-weight: 700
        }
    </style>
    <style>
        .item-desc {
            background-color: #f5f5f5;
            padding: 15px
        }

        .item-desc span {
            font-size: 18px;
            font-weight: 600
        }

        .item-total {
            background-color: #f5f5f5;
            font-weight: 700
        }
    </style>
    <style>
        .avatar-uploader>.ant-upload {
            height: 128px;
            width: 128px
        }

        .ant-upload-select-picture-card i {
            color: #999;
            font-size: 32px
        }

        .ant-upload-select-picture-card .ant-upload-text {
            color: #666;
            margin-top: 8px
        }
    </style>
    <style>
        .payment-methods {
            background: #fbfbfb;
            border: 1px solid #f0f2f5;
            border-radius: 5px;
            padding: 10px
        }

        .payment-methods .cod {
            display: flex;
            justify-content: space-between
        }

        .payment-methods .cod .icon-text {
            align-items: center;
            display: flex;
            font-weight: 500
        }
    </style>
    <style>
        .ant-upload-select-picture-card i {
            color: #999;
            font-size: 32px
        }

        .ant-upload-select-picture-card .ant-upload-text {
            color: #666;
            margin-top: 8px
        }
    </style>
    <style>
        .border-right-none {
            border-right: 0
        }
    </style>
    <style>
        .ps {
            -ms-overflow-style: none;
            overflow: hidden !important;
            overflow-anchor: none;
            touch-action: auto;
            -ms-touch-action: auto
        }

        .ps__rail-x {
            bottom: 0;
            height: 15px
        }

        .ps__rail-x,
        .ps__rail-y {
            display: none;
            opacity: 0;
            position: absolute;
            transition: background-color .2s linear, opacity .2s linear;
            -webkit-transition: background-color .2s linear, opacity .2s linear
        }

        .ps__rail-y {
            right: 0;
            width: 15px
        }

        .ps--active-x>.ps__rail-x,
        .ps--active-y>.ps__rail-y {
            background-color: transparent;
            display: block
        }

        .ps--focus>.ps__rail-x,
        .ps--focus>.ps__rail-y,
        .ps--scrolling-x>.ps__rail-x,
        .ps--scrolling-y>.ps__rail-y,
        .ps:hover>.ps__rail-x,
        .ps:hover>.ps__rail-y {
            opacity: .6
        }

        .ps .ps__rail-x.ps--clicking,
        .ps .ps__rail-x:focus,
        .ps .ps__rail-x:hover,
        .ps .ps__rail-y.ps--clicking,
        .ps .ps__rail-y:focus,
        .ps .ps__rail-y:hover {
            background-color: #eee;
            opacity: .9
        }

        .ps__thumb-x {
            bottom: 2px;
            height: 6px;
            transition: background-color .2s linear, height .2s ease-in-out;
            -webkit-transition: background-color .2s linear, height .2s ease-in-out
        }

        .ps__thumb-x,
        .ps__thumb-y {
            background-color: #aaa;
            border-radius: 6px;
            position: absolute
        }

        .ps__thumb-y {
            right: 2px;
            transition: background-color .2s linear, width .2s ease-in-out;
            -webkit-transition: background-color .2s linear, width .2s ease-in-out;
            width: 6px
        }

        .ps__rail-x.ps--clicking .ps__thumb-x,
        .ps__rail-x:focus>.ps__thumb-x,
        .ps__rail-x:hover>.ps__thumb-x {
            background-color: #999;
            height: 11px
        }

        .ps__rail-y.ps--clicking .ps__thumb-y,
        .ps__rail-y:focus>.ps__thumb-y,
        .ps__rail-y:hover>.ps__thumb-y {
            background-color: #999;
            width: 11px
        }

        @supports (-ms-overflow-style:none) {
            .ps {
                overflow: auto !important
            }
        }

        @media (-ms-high-contrast:none),
        screen and (-ms-high-contrast:active) {
            .ps {
                overflow: auto !important
            }
        }

        .ps {
            position: relative
        }
    </style>
    
    <style id="mini_dynamic_antd_theme_custom_style">
        :root {
            --primary-color: #05a045;
            --primary-hover-color: #41b771;
            --primary-active-color: #108641;
            --primary-shadow-color: rgb(191, 231, 207);
        }


        a {
            color: var(--primary-color);
        }

        a:hover {
            color: var(--primary-hover-color);
        }

        a:active {
            color: var(--primary-active-color);
        }

        ::-moz-selection {
            background: var(--primary-color);
        }

        ::selection {
            background: var(--primary-color);
        }

        html {
            --antd-wave-shadow-color: var(--primary-color);
        }

        [ant-click-animating-without-extra-node="true"]::after,
        .ant-click-animating-node {
            -webkit-box-shadow: 0 0 0 0 var(--primary-color);
            box-shadow: 0 0 0 0 var(--primary-color);
            -webkit-box-shadow: 0 0 0 0 var(--antd-wave-shadow-color);
            box-shadow: 0 0 0 0 var(--antd-wave-shadow-color);
        }

        @-webkit-keyframes waveEffect {
            100% {
                -webkit-box-shadow: 0 0 0 var(--primary-color);
                box-shadow: 0 0 0 var(--primary-color);
                -webkit-box-shadow: 0 0 0 6px var(--antd-wave-shadow-color);
                box-shadow: 0 0 0 6px var(--antd-wave-shadow-color);
            }
        }

        @keyframes waveEffect {
            100% {
                -webkit-box-shadow: 0 0 0 var(--primary-color);
                box-shadow: 0 0 0 var(--primary-color);
                -webkit-box-shadow: 0 0 0 6px var(--antd-wave-shadow-color);
                box-shadow: 0 0 0 6px var(--antd-wave-shadow-color);
            }
        }

        .ant-alert-info .ant-alert-icon {
            color: var(--primary-color);
        }

        .ant-anchor-ink-ball {
            border: 2px solid var(--primary-color);
        }

        .ant-anchor-link-active>.ant-anchor-link-title {
            color: var(--primary-color);
        }

        .ant-select-auto-complete.ant-select .ant-input:focus,
        .ant-select-auto-complete.ant-select .ant-input:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-select-selection:hover,
        .ant-select:not(.ant-select-disabled):hover .ant-select-selector {
            border-color: var(--primary-hover-color);
        }

        .ant-select-focused .ant-select-selection,
        .ant-select-selection:focus,
        .ant-select-selection:active,
        .ant-select-focused:not(.ant-select-disabled).ant-select:not(.ant-select-customize-input) .ant-select-selector {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-select-open .ant-select-selection {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-select-dropdown.ant-select-dropdown--multiple .ant-select-dropdown-menu-item-selected .ant-select-selected-icon,
        .ant-select-dropdown.ant-select-dropdown--multiple .ant-select-dropdown-menu-item-selected:hover .ant-select-selected-icon {
            color: var(--primary-color);
        }

        .ant-select-dropdown-menu-item:hover:not(.ant-select-dropdown-menu-item-disabled) {
            background-color: var(--primary-shadow-color);
        }

        .ant-select-dropdown-menu-item-active:not(.ant-select-dropdown-menu-item-disabled),
        .ant-select-item-option-selected:not(.ant-select-item-option-disabled) {
            background-color: var(--primary-shadow-color);
        }

        .ant-input:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-input:focus {
            border-color: var(--primary-hover-color);
        }

        .ant-input:focus,
        .ant-input-focused {
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-input-group-addon .ant-select-open .ant-select-selection,
        .ant-input-group-addon .ant-select-focused .ant-select-selection {
            color: var(--primary-color);
        }

        .ant-input-affix-wrapper:hover,
        .ant-input-affix-wrapper:not(.ant-input-affix-wrapper-disabled):hover {
            border-color: var(--primary-hover-color);
        }

        .ant-input-affix-wrapper:hover .ant-input:not(.ant-input-disabled) {
            border-color: var(--primary-hover-color);
        }

        .ant-input-affix-wrapper:focus,
        .ant-input-affix-wrapper-focused {
            border-color: var(--primary-hover-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-input-search .ant-input:hover,
        .ant-input-search .ant-input:focus {
            border-color: var(--primary-hover-color);
        }

        .ant-input-search .ant-input:hover+.ant-input-group-addon .ant-input-search-button:not(.ant-btn-primary),
        .ant-input-search .ant-input:focus+.ant-input-group-addon .ant-input-search-button:not(.ant-btn-primary) {
            border-color: var(--primary-hover-color);
        }

        .ant-btn:hover,
        .ant-btn:focus {
            color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-btn:active,
        .ant-btn.active {
            border-color: var(--primary-active-color);
        }

        .ant-btn-primary {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-btn-primary:hover,
        .ant-btn-primary:focus {
            color: #fff;
            background-color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-btn-primary:active,
        .ant-btn-primary.active {
            background-color: var(--primary-active-color);
            border-color: var(--primary-active-color);
        }

        .ant-btn-danger:hover,
        .ant-btn-danger:focus {
            color: #fff;
            background-color: #ff7875;
            border-color: #ff7875;
        }

        .ant-btn-dangerous:hover,
        .ant-btn-dangerous:focus {
            color: #ff7875;
            border-color: #ff7875;
        }

        .ant-btn-group .ant-btn-primary:not(:first-child):not(:last-child) {
            border-right-color: var(--primary-hover-color);
            border-left-color: var(--primary-hover-color);
        }

        .ant-btn-group .ant-btn-primary:first-child:not(:last-child) {
            border-right-color: var(--primary-hover-color);
        }

        .ant-btn-group .ant-btn-primary:last-child:not(:first-child),
        .ant-btn-group .ant-btn-primary+.ant-btn-primary {
            border-left-color: var(--primary-hover-color);
        }

        .ant-btn-ghost:hover,
        .ant-btn-ghost:focus {
            color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-btn-ghost:active,
        .ant-btn-ghost.active {
            color: var(--primary-active-color);
            border-color: var(--primary-active-color);
        }

        .ant-btn-dashed:hover,
        .ant-btn-dashed:focus {
            color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-btn-dashed:active,
        .ant-btn-dashed.active {
            color: var(--primary-active-color);
            border-color: var(--primary-active-color);
        }

        .ant-btn-link {
            color: var(--primary-color);
        }

        .ant-btn-link:hover,
        .ant-btn-link:focus {
            color: var(--primary-hover-color);
            border-color: transparent;
        }

        .ant-btn-link:active,
        .ant-btn-link.active {
            color: var(--primary-active-color);
            border-color: transparent;
        }

        .ant-btn-background-ghost.ant-btn-primary {
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-btn-background-ghost.ant-btn-primary:hover,
        .ant-btn-background-ghost.ant-btn-primary:focus {
            color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-btn-background-ghost.ant-btn-primary:active,
        .ant-btn-background-ghost.ant-btn-primary.active {
            color: var(--primary-active-color);
            border-color: var(--primary-active-color);
        }

        .ant-btn-background-ghost.ant-btn-link {
            color: var(--primary-color);
        }

        .ant-btn-background-ghost.ant-btn-link:hover,
        .ant-btn-background-ghost.ant-btn-link:focus {
            color: var(--primary-hover-color);
        }

        .ant-btn-background-ghost.ant-btn-link:active,
        .ant-btn-background-ghost.ant-btn-link.active {
            color: var(--primary-active-color);
        }

        .ant-badge-status-processing {
            background-color: var(--primary-color);
        }

        .ant-badge-status-processing::after {
            border: 1px solid var(--primary-color);
        }

        .ant-badge-status-blue {
            background: var(--primary-color);
        }

        .ant-breadcrumb a:hover {
            color: var(--primary-hover-color);
        }

        .ant-menu-item>a:hover {
            color: var(--primary-color);
        }

        .ant-menu-item:hover,
        .ant-menu-item-active,
        .ant-menu:not(.ant-menu-inline) .ant-menu-submenu-open,
        .ant-menu-submenu-active,
        .ant-menu-submenu-title:hover {
            color: var(--primary-color);
        }

        .ant-menu-item-selected {
            color: var(--primary-color);
        }

        .ant-menu-item-selected>a,
        .ant-menu-item-selected>a:hover {
            color: var(--primary-color);
        }

        .ant-menu:not(.ant-menu-horizontal) .ant-menu-item-selected {
            background-color: var(--primary-shadow-color);
        }

        .ant-menu-submenu-vertical>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::after,
        .ant-menu-submenu-vertical-left>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::after,
        .ant-menu-submenu-vertical-right>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::after,
        .ant-menu-submenu-inline>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::after,
        .ant-menu-submenu-vertical>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::before,
        .ant-menu-submenu-vertical-left>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::before,
        .ant-menu-submenu-vertical-right>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::before,
        .ant-menu-submenu-inline>.ant-menu-submenu-title:hover .ant-menu-submenu-arrow::before {
            background: -webkit-gradient(linear, left top, right top, from(var(--primary-color)), to(var(--primary-color)));
            background: -webkit-linear-gradient(left, var(--primary-color), var(--primary-color));
            background: linear-gradient(to right, var(--primary-color), var(--primary-color));
        }

        .ant-menu-vertical .ant-menu-submenu-selected,
        .ant-menu-vertical-left .ant-menu-submenu-selected,
        .ant-menu-vertical-right .ant-menu-submenu-selected {
            color: var(--primary-color);
        }

        .ant-menu-vertical .ant-menu-submenu-selected>a,
        .ant-menu-vertical-left .ant-menu-submenu-selected>a,
        .ant-menu-vertical-right .ant-menu-submenu-selected>a {
            color: var(--primary-color);
        }

        .ant-menu-horizontal>.ant-menu-item:hover,
        .ant-menu-horizontal>.ant-menu-submenu:hover,
        .ant-menu-horizontal>.ant-menu-item-active,
        .ant-menu-horizontal>.ant-menu-submenu-active,
        .ant-menu-horizontal>.ant-menu-item-open,
        .ant-menu-horizontal>.ant-menu-submenu-open,
        .ant-menu-horizontal>.ant-menu-item-selected,
        .ant-menu-horizontal>.ant-menu-submenu-selected {
            color: var(--primary-color);
            border-bottom: 2px solid var(--primary-color);
        }

        .ant-menu-horizontal>.ant-menu-item>a:hover {
            color: var(--primary-color);
        }

        .ant-menu-horizontal>.ant-menu-item-selected>a {
            color: var(--primary-color);
        }

        .ant-menu-vertical .ant-menu-item::after,
        .ant-menu-vertical-left .ant-menu-item::after,
        .ant-menu-vertical-right .ant-menu-item::after,
        .ant-menu-inline .ant-menu-item::after {
            border-right: 3px solid var(--primary-color);
        }

        .ant-menu-dark.ant-menu-dark:not(.ant-menu-horizontal) .ant-menu-item-selected {
            background-color: var(--primary-color);
        }

        .ant-menu.ant-menu-dark .ant-menu-item-selected,
        .ant-menu-submenu-popup.ant-menu-dark .ant-menu-item-selected {
            background-color: var(--primary-color);
        }

        .ant-menu-dark.ant-menu-horizontal>.ant-menu-item:hover {
            background-color: var(--primary-color);
            color: #fff;
        }

        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-item:hover,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-submenu:hover,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-item-active,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-submenu-active,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-item-open,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-submenu-open,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-item-selected,
        .ant-menu-horizontal:not(.ant-menu-dark)>.ant-menu-submenu-selected {
            color: var(--primary-color);
            border-bottom: 2px solid var(--primary-color);
        }

        .ant-menu-submenu-selected {
            color: var(--primary-color);
        }

        .ant-menu-item a:hover {
            color: var(--primary-color);
        }

        .ant-menu-submenu:hover>.ant-menu-submenu-title>.ant-menu-submenu-arrow,
        .ant-menu-submenu:hover>.ant-menu-submenu-title>.ant-menu-submenu-expand-icon {
            color: var(--primary-color);
        }

        .ant-dropdown-menu-item-selected,
        .ant-dropdown-menu-submenu-title-selected,
        .ant-dropdown-menu-item-selected>a,
        .ant-dropdown-menu-submenu-title-selected>a {
            color: var(--primary-color);
            background-color: var(--primary-shadow-color);
        }

        .ant-dropdown-menu-item:hover,
        .ant-dropdown-menu-submenu-title:hover {
            background-color: var(--primary-shadow-color);
        }

        .ant-dropdown-menu-dark .ant-dropdown-menu-item-selected,
        .ant-dropdown-menu-dark .ant-dropdown-menu-item-selected:hover,
        .ant-dropdown-menu-dark .ant-dropdown-menu-item-selected>a {
            background: var(--primary-color);
        }

        .ant-fullcalendar-value:hover {
            background: var(--primary-shadow-color);
        }

        .ant-fullcalendar-value:active {
            background: var(--primary-color);
        }

        .ant-fullcalendar-today .ant-fullcalendar-value,
        .ant-fullcalendar-month-panel-current-cell .ant-fullcalendar-value {
            -webkit-box-shadow: 0 0 0 1px var(--primary-color) inset;
            box-shadow: 0 0 0 1px var(--primary-color) inset;
        }

        .ant-fullcalendar-fullscreen .ant-fullcalendar-month:hover,
        .ant-fullcalendar-fullscreen .ant-fullcalendar-date:hover {
            background: var(--primary-shadow-color);
        }

        .ant-fullcalendar-fullscreen .ant-fullcalendar-month:active,
        .ant-fullcalendar-fullscreen .ant-fullcalendar-date:active {
            background: var(--primary-shadow-color);
        }

        .ant-fullcalendar-fullscreen .ant-fullcalendar-month-panel-current-cell .ant-fullcalendar-month,
        .ant-fullcalendar-fullscreen .ant-fullcalendar-today .ant-fullcalendar-date {
            border-top-color: var(--primary-color);
        }

        .ant-fullcalendar-fullscreen .ant-fullcalendar-month-panel-selected-cell .ant-fullcalendar-value,
        .ant-fullcalendar-fullscreen .ant-fullcalendar-selected-day .ant-fullcalendar-value {
            color: var(--primary-color);
        }

        .ant-fullcalendar-fullscreen .ant-fullcalendar-month-panel-selected-cell .ant-fullcalendar-month,
        .ant-fullcalendar-fullscreen .ant-fullcalendar-selected-day .ant-fullcalendar-date {
            background: var(--primary-shadow-color);
        }

        .ant-radio-wrapper:hover .ant-radio,
        .ant-radio:hover .ant-radio-inner,
        .ant-radio-input:focus+.ant-radio-inner {
            border-color: var(--primary-color);
        }

        .ant-radio-checked::after {
            border: 1px solid var(--primary-color);
        }

        .ant-radio-inner::after {
            background-color: var(--primary-color);
        }

        .ant-radio-checked .ant-radio-inner {
            border-color: var(--primary-color);
        }

        .ant-radio-button-wrapper:hover {
            color: var(--primary-color);
        }

        .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled),
        .ant-radio-button-wrapper-checked {
            color: var(--primary-color);
            border-color: var(--primary-color);
            -webkit-box-shadow: -1px 0 0 0 var(--primary-color);
            box-shadow: -1px 0 0 0 var(--primary-color);
        }

        .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled):hover {
            color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: -1px 0 0 0 var(--primary-hover-color);
            box-shadow: -1px 0 0 0 var(--primary-hover-color);
        }

        .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled):first-child {
            border-color: var(--primary-color);
        }

        .ant-radio-button-wrapper-checked::before {
            background-color: var(--primary-color) !important;
            opacity: 0.1;
        }

        .ant-radio-button-wrapper-checked:first-child {
            border-color: var(--primary-color);
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
        }

        .ant-radio-button-wrapper-checked:hover {
            color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: -1px 0 0 0 var(--primary-hover-color);
            box-shadow: -1px 0 0 0 var(--primary-hover-color);
        }

        .ant-radio-button-wrapper-checked:active {
            color: var(--primary-active-color);
            border-color: var(--primary-active-color);
            -webkit-box-shadow: -1px 0 0 0 var(--primary-active-color);
            box-shadow: -1px 0 0 0 var(--primary-active-color);
        }

        .ant-radio-button-wrapper-checked:focus-within {
            outline: 3px solid rgba(24, 144, 255, 0.06);
        }

        .ant-radio-group-solid .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled) {
            color: #fff;
            background: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-radio-group-solid .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled):hover {
            color: #fff;
            background: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-radio-group-solid .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled):active {
            color: #fff;
            background: var(--primary-active-color);
            border-color: var(--primary-active-color);
        }

        .ant-radio-button-wrapper-checked:not([class*=" ant-radio-button-wrapper-disabled"]).ant-radio-button-wrapper:first-child {
            border-right-color: var(--primary-color);
        }

        .ant-card-actions>li>span:hover {
            color: var(--primary-color);
            -webkit-transition: color 0.3s;
            transition: color 0.3s;
        }

        .ant-card-actions>li>span a:hover {
            color: var(--primary-color);
        }

        .ant-tabs.ant-tabs-card .ant-tabs-card-bar .ant-tabs-tab-active {
            color: var(--primary-color);
        }

        .ant-tabs-extra-content .ant-tabs-new-tab:hover {
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-tabs .ant-tabs-card-bar.ant-tabs-bottom-bar .ant-tabs-tab-active {
            color: var(--primary-color);
        }

        .ant-tabs-ink-bar {
            background-color: var(--primary-color);
        }

        .ant-tabs-nav .ant-tabs-tab:hover {
            color: var(--primary-hover-color);
        }

        .ant-tabs-nav .ant-tabs-tab:active {
            color: var(--primary-active-color);
        }

        .ant-tabs-nav .ant-tabs-tab-active {
            color: var(--primary-color);
        }

        .ant-tabs-tab.ant-tabs-tab-active .ant-tabs-tab-btn {
            color: var(--primary-color);
        }

        .ant-cascader-picker:focus .ant-cascader-input {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-cascader-picker-label:hover+.ant-cascader-input {
            border-color: var(--primary-hover-color);
        }

        .ant-cascader-menu-item:hover {
            background: var(--primary-shadow-color);
        }

        .ant-checkbox-wrapper:hover .ant-checkbox-inner,
        .ant-checkbox:hover .ant-checkbox-inner,
        .ant-checkbox-input:focus+.ant-checkbox-inner {
            border-color: var(--primary-color);
        }

        .ant-checkbox-checked::after {
            border: 1px solid var(--primary-color);
        }

        .ant-checkbox-checked .ant-checkbox-inner {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-checkbox-indeterminate .ant-checkbox-inner::after {
            background-color: var(--primary-color);
        }

        .ant-calendar-selected-day .ant-calendar-date {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-picker:hover .ant-calendar-picker-input:not(.ant-input-disabled) {
            border-color: var(--primary-color);
        }

        .ant-calendar-picker:focus .ant-calendar-picker-input:not(.ant-input-disabled) {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-calendar-header a:hover {
            color: var(--primary-hover-color);
        }

        .ant-calendar-date:hover {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-date:active {
            background: var(--primary-hover-color);
        }

        .ant-calendar-today .ant-calendar-date {
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-calendar-range .ant-calendar-selected-start-date .ant-calendar-date,
        .ant-calendar-range .ant-calendar-selected-end-date .ant-calendar-date {
            background: var(--primary-color);
        }

        .ant-calendar-range .ant-calendar-selected-start-date .ant-calendar-date:hover,
        .ant-calendar-range .ant-calendar-selected-end-date .ant-calendar-date:hover {
            background: var(--primary-hover-color);
        }

        .ant-calendar-selected-date .ant-calendar-date,
        .ant-calendar-selected-start-date .ant-calendar-date,
        .ant-calendar-selected-end-date .ant-calendar-date {
            background: var(--primary-color);
            color: #fff;
        }

        .ant-calendar-selected-date .ant-calendar-date:hover,
        .ant-calendar-selected-start-date .ant-calendar-date:hover,
        .ant-calendar-selected-end-date .ant-calendar-date:hover {
            background: var(--primary-color);
            color: #fff;
        }

        .ant-calendar .ant-calendar-ok-btn {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-calendar .ant-calendar-ok-btn:hover,
        .ant-calendar .ant-calendar-ok-btn:focus {
            background-color: var(--primary-hover-color);
            border-color: var(--primary-hover-color);
        }

        .ant-calendar .ant-calendar-ok-btn:active,
        .ant-calendar .ant-calendar-ok-btn.active {
            background-color: var(--primary-active-color);
            border-color: var(--primary-active-color);
        }

        .ant-calendar-range .ant-calendar-input:hover,
        .ant-calendar-range .ant-calendar-time-picker-input:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-calendar-range .ant-calendar-input:focus,
        .ant-calendar-range .ant-calendar-time-picker-input:focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-calendar-month-panel-header a:hover {
            color: var(--primary-hover-color);
        }

        .ant-calendar-month-panel-selected-cell .ant-calendar-month-panel-month {
            background: var(--primary-color);
        }

        .ant-calendar-month-panel-selected-cell .ant-calendar-month-panel-month:hover {
            background: var(--primary-color);
        }

        .ant-calendar-year-panel-header a:hover {
            color: var(--primary-hover-color);
        }

        .ant-calendar-year-panel-selected-cell .ant-calendar-year-panel-year {
            background: var(--primary-color);
        }

        .ant-calendar-year-panel-selected-cell .ant-calendar-year-panel-year:hover {
            background: var(--primary-color);
        }

        .ant-calendar-decade-panel-header a:hover {
            color: var(--primary-hover-color);
        }

        .ant-calendar-decade-panel-selected-cell .ant-calendar-decade-panel-decade {
            background: var(--primary-color);
        }

        .ant-calendar-decade-panel-selected-cell .ant-calendar-decade-panel-decade:hover {
            background: var(--primary-color);
        }

        .ant-calendar-range .ant-calendar-in-range-cell::before {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-time-picker-select li:hover {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-month-panel-month:hover {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-year-panel-year:hover {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-decade-panel-decade:hover {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-week-number .ant-calendar-body tr:hover {
            background: var(--primary-shadow-color);
        }

        .ant-calendar-week-number .ant-calendar-body tr.ant-calendar-active-week {
            background: var(--primary-shadow-color);
        }

        .ant-time-picker-input:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-time-picker-input:focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-time-picker-panel-select li:hover {
            background: var(--primary-shadow-color);
        }

        .ant-picker-focused,
        .ant-picker:hover {
            border-color: var(--primary-color);
        }

        .ant-picker-focused {
            box-shadow: var(--primary-shadow-color) 0px 0px 0px 2px;
        }

        .ant-picker-cell-in-view.ant-picker-cell-today .ant-picker-cell-inner::before {
            border-color: var(--primary-color);
        }

        .ant-picker-cell-in-view.ant-picker-cell-range-end .ant-picker-cell-inner,
        .ant-picker-cell-in-view.ant-picker-cell-range-start .ant-picker-cell-inner,
        .ant-picker-cell-in-view.ant-picker-cell-selected .ant-picker-cell-inner {
            color: rgb(255, 255, 255);
            background: var(--primary-color);
        }

        .ant-picker-cell-in-view.ant-picker-cell-range-start:not(.ant-picker-cell-range-start-single)::before,
        .ant-picker-cell-in-view.ant-picker-cell-range-end:not(.ant-picker-cell-range-end-single)::before,
        .ant-picker-cell-in-view.ant-picker-cell-in-range::before {
            background: var(--primary-shadow-color);
        }

        .ant-picker-cell-in-view.ant-picker-cell-range-hover-start:not(.ant-picker-cell-in-range):not(.ant-picker-cell-range-start):not(.ant-picker-cell-range-end)::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-end:not(.ant-picker-cell-in-range):not(.ant-picker-cell-range-start):not(.ant-picker-cell-range-end)::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-start.ant-picker-cell-range-start-single::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-start.ant-picker-cell-range-start.ant-picker-cell-range-end.ant-picker-cell-range-end-near-hover::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-end.ant-picker-cell-range-start.ant-picker-cell-range-end.ant-picker-cell-range-start-near-hover::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-end.ant-picker-cell-range-end-single::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover:not(.ant-picker-cell-in-range)::after {
            border-top: 1px dashed var(--primary-color);
            border-bottom: 1px dashed var(--primary-color);
        }

        tr>.ant-picker-cell-in-view.ant-picker-cell-range-hover:first-child::after,
        tr>.ant-picker-cell-in-view.ant-picker-cell-range-hover-end:first-child::after,
        .ant-picker-cell-in-view.ant-picker-cell-start.ant-picker-cell-range-hover-edge-start.ant-picker-cell-range-hover-edge-start-near-range::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-edge-start:not(.ant-picker-cell-range-hover-edge-start-near-range)::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-start::after {
            border-left: 1px dashed var(--primary-color);
        }

        .ant-picker-year-panel .ant-picker-cell-range-hover-end::after,
        .ant-picker-quarter-panel .ant-picker-cell-range-hover-end::after,
        .ant-picker-month-panel .ant-picker-cell-range-hover-end::after,
        tr>.ant-picker-cell-in-view.ant-picker-cell-range-hover:last-child::after,
        tr>.ant-picker-cell-in-view.ant-picker-cell-range-hover-start:last-child::after,
        .ant-picker-cell-in-view.ant-picker-cell-end.ant-picker-cell-range-hover-edge-end.ant-picker-cell-range-hover-edge-end-near-range::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-edge-end:not(.ant-picker-cell-range-hover-edge-end-near-range)::after,
        .ant-picker-cell-in-view.ant-picker-cell-range-hover-end::after {
            border-right: 1px dashed var(--primary-color);
        }

        .ant-picker-cell-in-view.ant-picker-cell-in-range.ant-picker-cell-range-hover::before,
        .ant-picker-cell-in-view.ant-picker-cell-range-start.ant-picker-cell-range-hover::before,
        .ant-picker-cell-in-view.ant-picker-cell-range-end.ant-picker-cell-range-hover::before,
        .ant-picker-cell-in-view.ant-picker-cell-range-start:not(.ant-picker-cell-range-start-single).ant-picker-cell-range-hover-start::before,
        .ant-picker-cell-in-view.ant-picker-cell-range-end:not(.ant-picker-cell-range-end-single).ant-picker-cell-range-hover-end::before,
        .ant-picker-panel> :not(.ant-picker-date-panel) .ant-picker-cell-in-view.ant-picker-cell-in-range.ant-picker-cell-range-hover-start::before,
        .ant-picker-panel> :not(.ant-picker-date-panel) .ant-picker-cell-in-view.ant-picker-cell-in-range.ant-picker-cell-range-hover-end::before {
            background: var(--primary-shadow-color);
        }

        .ant-picker-time-panel-column>li.ant-picker-time-panel-cell-selected .ant-picker-time-panel-cell-inner {
            background: var(--primary-shadow-color);
        }

        .ant-picker-range .ant-picker-active-bar {
            background: var(--primary-color);
        }

        .ant-tag-checkable:not(.ant-tag-checkable-checked):hover {
            color: var(--primary-color);
        }

        .ant-tag-checkable-checked {
            background-color: var(--primary-color);
        }

        .ant-tag-checkable:active {
            background-color: var(--primary-active-color);
        }

        .ant-transfer-list-content-item:not(.ant-transfer-list-content-item-disabled):hover {
            background-color: var(--primary-shadow-color);
        }

        .has-error .ant-transfer-list-search:not([disabled]):hover {
            border-color: var(--primary-hover-color);
            border-right-width: 1px !important;
        }

        .has-error .ant-transfer-list-search:not([disabled]):focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .is-validating.has-feedback .ant-form-item-children-icon {
            color: var(--primary-color);
        }

        .ant-input-number:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-input-number:focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-input-number-handler:hover .ant-input-number-handler-up-inner,
        .ant-input-number-handler:hover .ant-input-number-handler-down-inner {
            color: var(--primary-hover-color);
        }

        .ant-input-number:hover {
            border-color: var(--primary-hover-color);
            border-right-width: 1px !important;
        }

        .ant-input-number-focused {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-list-item-meta-title>a:hover {
            color: var(--primary-color);
        }

        .ant-spin {
            color: var(--primary-color);
        }

        .ant-spin-dot-item {
            background-color: var(--primary-color);
        }

        .ant-pagination-item:focus,
        .ant-pagination-item:hover {
            border-color: var(--primary-color);
        }

        .ant-pagination-item:focus a,
        .ant-pagination-item:hover a {
            color: var(--primary-color);
        }

        .ant-pagination-item-active {
            border-color: var(--primary-color);
        }

        .ant-pagination-item-active a {
            color: var(--primary-color);
        }

        .ant-pagination-item-active:focus,
        .ant-pagination-item-active:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-pagination-item-active:focus a,
        .ant-pagination-item-active:hover a {
            color: var(--primary-hover-color);
        }

        .ant-pagination-jump-prev .ant-pagination-item-container .ant-pagination-item-link-icon,
        .ant-pagination-jump-next .ant-pagination-item-container .ant-pagination-item-link-icon {
            color: var(--primary-color);
        }

        .ant-pagination-prev:hover a,
        .ant-pagination-next:hover a {
            border-color: var(--primary-hover-color);
        }

        .ant-pagination-prev:focus .ant-pagination-item-link,
        .ant-pagination-next:focus .ant-pagination-item-link,
        .ant-pagination-prev:hover .ant-pagination-item-link,
        .ant-pagination-next:hover .ant-pagination-item-link {
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-pagination-options-quick-jumper input:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-pagination-options-quick-jumper input:focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-pagination-simple .ant-pagination-simple-pager input:hover {
            border-color: var(--primary-color);
        }

        .ant-mention-wrapper .ant-mention-editor:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-mention-wrapper .ant-mention-editor:focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-mention-wrapper.ant-mention-active:not(.disabled) .ant-mention-editor {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-mention-dropdown-notfound.ant-mention-dropdown-item .anticon-loading {
            color: var(--primary-color);
        }

        .ant-mentions:hover {
            border-color: var(--primary-hover-color);
        }

        .ant-mentions:focus {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-mentions-focused {
            border-color: var(--primary-hover-color);
            -webkit-box-shadow: 0 0 0 2px var(--primary-shadow-color);
            box-shadow: 0 0 0 2px var(--primary-shadow-color);
        }

        .ant-mention-dropdown-item:hover {
            background-color: var(--primary-shadow-color);
        }

        .ant-mention-dropdown-item.focus,
        .ant-mention-dropdown-item-active {
            background-color: var(--primary-shadow-color);
        }

        .ant-mentions-dropdown-menu-item:hover {
            background-color: var(--primary-shadow-color);
        }

        .ant-mentions-dropdown-menu-item-active {
            background-color: var(--primary-shadow-color);
        }

        .ant-message-info .anticon,
        .ant-message-loading .anticon {
            color: var(--primary-color);
        }

        .ant-modal-confirm-info .ant-modal-confirm-body>.anticon {
            color: var(--primary-color);
        }

        .anticon.ant-notification-notice-icon-info {
            color: var(--primary-color);
        }

        .ant-page-header-back-button {
            color: var(--primary-color);
        }

        .ant-page-header-back-button:focus,
        .ant-page-header-back-button:hover {
            color: var(--primary-hover-color);
        }

        .ant-page-header-back-button:active {
            color: var(--primary-active-color);
        }

        .ant-progress-circle-path {
            stroke: var(--primary-color);
        }

        .ant-progress-success-bg,
        .ant-progress-bg {
            background-color: var(--primary-color);
        }

        .ant-slider {
            width: 100%;
        }

        .ant-slider-track {
            background-color: var(--primary-hover-color);
        }

        .ant-slider-handle {
            border: solid 2px var(--primary-hover-color);
        }

        .ant-slider-handle:focus {
            border-color: var(--primary-hover-color);
            box-shadow: 0 0 0 5px var(--primary-shadow-color);
            outline: none;
        }

        .ant-slider-handle.ant-tooltip-open {
            border-color: var(--primary-color);
        }

        .ant-slider:hover .ant-slider-track {
            background-color: var(--primary-hover-color);
        }

        .ant-slider:hover .ant-slider-handle:not(.ant-tooltip-open) {
            border-color: var(--primary-hover-color);
        }

        .ant-slider-dot-active {
            border-color: var(--primary-active-color);
        }

        .ant-steps-item-icon>.ant-steps-icon {
            color: var(--primary-color);
        }

        .ant-steps-item-process .ant-steps-item-icon {
            background-color: #fff;
            border-color: var(--primary-color);
        }

        .ant-steps-item-process .ant-steps-item-icon>.ant-steps-icon .ant-steps-icon-dot {
            background: var(--primary-color);
        }

        .ant-steps-item-process .ant-steps-item-icon {
            background: var(--primary-color);
        }

        .ant-steps-item-finish .ant-steps-item-icon {
            border-color: var(--primary-color);
        }

        .ant-steps-item-finish .ant-steps-item-icon>.ant-steps-icon {
            color: var(--primary-color);
        }

        .ant-steps-item-finish .ant-steps-item-icon>.ant-steps-icon .ant-steps-icon-dot {
            background: var(--primary-color);
        }

        .ant-steps-item-finish>.ant-steps-item-content>.ant-steps-item-title::after {
            background-color: var(--primary-color);
        }

        .ant-steps-item-finish>.ant-steps-item-tail::after {
            background-color: var(--primary-color);
        }

        .ant-steps-item[role="button"]:not(.ant-steps-item-process):hover .ant-steps-item-title,
        .ant-steps-item[role="button"]:not(.ant-steps-item-process):hover .ant-steps-item-description {
            color: var(--primary-color);
        }

        .ant-steps-item[role="button"]:not(.ant-steps-item-process):hover .ant-steps-item-icon {
            border-color: var(--primary-color);
        }

        .ant-steps-item[role="button"]:not(.ant-steps-item-process):hover .ant-steps-item-icon .ant-steps-icon {
            color: var(--primary-color);
        }

        .ant-steps-item-custom.ant-steps-item-process .ant-steps-item-icon>.ant-steps-icon {
            color: var(--primary-color);
        }

        .ant-steps-item-process>.ant-steps-item-container>.ant-steps-item-icon {
            background: var(--primary-color);
        }

        .ant-steps-item-finish>.ant-steps-item-container>.ant-steps-item-content>.ant-steps-item-title::after {
            background-color: var(--primary-color);
        }

        .ant-switch-checked.ant-switch-loading .ant-switch-loading-icon {
            color: var(--primary-color);
        }

        .ant-switch-checked {
            background-color: var(--primary-color);
        }

        .ant-table-thead>tr>th .ant-table-filter-selected.anticon-filter {
            color: var(--primary-color);
        }

        .ant-table-thead>tr>th .ant-table-column-sorter .ant-table-column-sorter-inner .ant-table-column-sorter-up.on,
        .ant-table-thead>tr>th .ant-table-column-sorter .ant-table-column-sorter-inner .ant-table-column-sorter-down.on {
            color: var(--primary-color);
        }

        .ant-table-filter-dropdown .ant-dropdown-menu .ant-dropdown-submenu-contain-selected .ant-dropdown-menu-submenu-title::after {
            color: var(--primary-color);
        }

        .ant-table-filter-dropdown-link {
            color: var(--primary-color);
        }

        .ant-table-filter-dropdown-link:hover {
            color: var(--primary-hover-color);
        }

        .ant-table-filter-dropdown-link:active {
            color: var(--primary-active-color);
        }

        .ant-table-row-expand-icon:focus,
        .ant-table-row-expand-icon:hover {
            color: var(--primary-hover-color);
        }

        .ant-table-tbody>tr.ant-table-row-selected>td {
            background: var(--primary-shadow-color);
        }

        .ant-table-tbody>tr.ant-table-row-selected:hover>td {
            background: var(--primary-shadow-color);
        }

        .ant-timeline-item-head-blue {
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-select-tree-checkbox-wrapper:hover .ant-select-tree-checkbox-inner,
        .ant-select-tree-checkbox:hover .ant-select-tree-checkbox-inner,
        .ant-select-tree-checkbox-input:focus+.ant-select-tree-checkbox-inner {
            border-color: var(--primary-color);
        }

        .ant-select-tree-checkbox-checked::after {
            border: 1px solid var(--primary-color);
        }

        .ant-select-tree-checkbox-checked .ant-select-tree-checkbox-inner {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-select-tree-checkbox-indeterminate .ant-select-tree-checkbox-inner::after {
            background-color: var(--primary-color);
        }

        .ant-select-tree li span.ant-select-icon_loading .ant-select-switcher-loading-icon {
            color: var(--primary-color);
        }

        .ant-select-tree li span.ant-select-tree-switcher.ant-select-tree-switcher_open .ant-select-switcher-loading-icon,
        .ant-select-tree li span.ant-select-tree-switcher.ant-select-tree-switcher_close .ant-select-switcher-loading-icon {
            color: var(--primary-color);
        }

        .ant-select-tree li .ant-select-tree-node-content-wrapper:hover {
            background-color: var(--primary-shadow-color);
        }

        .ant-select-tree li .ant-select-tree-node-content-wrapper.ant-select-tree-node-selected {
            background-color: var(--primary-shadow-color);
        }

        .ant-tree.ant-tree-directory>li.ant-tree-treenode-selected>span.ant-tree-checkbox .ant-tree-checkbox-inner,
        .ant-tree.ant-tree-directory .ant-tree-child-tree>li.ant-tree-treenode-selected>span.ant-tree-checkbox .ant-tree-checkbox-inner {
            border-color: var(--primary-color);
        }

        .ant-tree.ant-tree-directory>li.ant-tree-treenode-selected>span.ant-tree-checkbox.ant-tree-checkbox-checked .ant-tree-checkbox-inner::after,
        .ant-tree.ant-tree-directory .ant-tree-child-tree>li.ant-tree-treenode-selected>span.ant-tree-checkbox.ant-tree-checkbox-checked .ant-tree-checkbox-inner::after {
            border-color: var(--primary-color);
        }

        .ant-tree.ant-tree-directory>li.ant-tree-treenode-selected>span.ant-tree-node-content-wrapper::before,
        .ant-tree.ant-tree-directory .ant-tree-child-tree>li.ant-tree-treenode-selected>span.ant-tree-node-content-wrapper::before {
            background: var(--primary-color);
        }

        .ant-tree-checkbox-wrapper:hover .ant-tree-checkbox-inner,
        .ant-tree-checkbox:hover .ant-tree-checkbox-inner,
        .ant-tree-checkbox-input:focus+.ant-tree-checkbox-inner {
            border-color: var(--primary-color);
        }

        .ant-tree-checkbox-checked::after {
            border: 1px solid var(--primary-color);
        }

        .ant-tree-checkbox-checked .ant-tree-checkbox-inner {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .ant-tree-checkbox-indeterminate .ant-tree-checkbox-inner::after {
            background-color: var(--primary-color);
        }

        .ant-tree li.drag-over>span[draggable] {
            background-color: var(--primary-color);
        }

        .ant-tree li.drag-over-gap-top>span[draggable] {
            border-top-color: var(--primary-color);
        }

        .ant-tree li.drag-over-gap-bottom>span[draggable] {
            border-bottom-color: var(--primary-color);
        }

        .ant-tree li.ant-tree-treenode-loading span.ant-tree-switcher.ant-tree-switcher_open .ant-tree-switcher-loading-icon,
        .ant-tree li.ant-tree-treenode-loading span.ant-tree-switcher.ant-tree-switcher_close .ant-tree-switcher-loading-icon {
            color: var(--primary-color);
        }

        .ant-tree.ant-tree-directory>li span.ant-tree-node-content-wrapper:hover::before,
        .ant-tree.ant-tree-directory .ant-tree-child-tree>li span.ant-tree-node-content-wrapper:hover::before {
            background: var(--primary-shadow-color);
        }

        .ant-tree li .ant-tree-node-content-wrapper:hover {
            background-color: var(--primary-shadow-color);
        }

        .ant-tree li .ant-tree-node-content-wrapper.ant-tree-node-selected {
            background-color: var(--primary-shadow-color);
        }

        .ant-tree-checkbox-checked.ant-tree-checkbox-disabled .ant-tree-checkbox-inner {
            background-color: #f5f5f5;
        }

        .ant-select-tree .ant-select-tree-node-content-wrapper.ant-select-tree-node-selected {
            background-color: var(--primary-shadow-color);
        }

        .ant-tree .ant-tree-node-content-wrapper.ant-tree-node-selected {
            background-color: var(--primary-shadow-color);
        }

        .ant-tree.ant-tree-directory .ant-tree-treenode-selected:hover::before,
        .ant-tree.ant-tree-directory .ant-tree-treenode-selected::before {
            background: var(--primary-color);
        }

        .ant-typography a {
            color: var(--primary-color);
        }

        .ant-typography a:focus,
        .ant-typography a:hover {
            color: var(--primary-hover-color);
        }

        .ant-typography a:active {
            color: var(--primary-active-color);
        }

        .ant-typography-expand,
        .ant-typography-edit,
        .ant-typography-copy {
            color: var(--primary-color);
        }

        .ant-typography-expand:focus,
        .ant-typography-edit:focus,
        .ant-typography-copy:focus,
        .ant-typography-expand:hover,
        .ant-typography-edit:hover,
        .ant-typography-copy:hover {
            color: var(--primary-hover-color);
        }

        .ant-typography-expand:active,
        .ant-typography-edit:active,
        .ant-typography-copy:active {
            color: var(--primary-active-color);
        }

        .ant-upload.ant-upload-select-picture-card:hover {
            border-color: var(--primary-color);
        }

        .ant-upload.ant-upload-drag.ant-upload-drag-hover:not(.ant-upload-disabled) {
            border-color: var(--primary-active-color);
        }

        .ant-upload.ant-upload-drag:not(.ant-upload-disabled):hover {
            border-color: var(--primary-hover-color);
        }

        .ant-upload.ant-upload-drag p.ant-upload-drag-icon .anticon {
            color: var(--primary-hover-color);
        }
    </style>
</head>

<body>
<div>
    <div class="ant-card ant-card-bordered page-content-sub-header breadcrumb-left-border">
        <!----><!---->
        <div class="ant-card-body" style="padding: 0px; margin: 0px 16px;">
            <div class="ant-row" style="row-gap: 0px;">
                <div class="ant-col ant-col-24">
                    <div class="ant-page-header ant-page-header-ghost p-0">
                        <!---->
                        <div class="ant-page-header-heading">
                            <div class="ant-page-header-heading-left">
                                <div class="ant-page-header-back">
                                    <a href="/">
                                        <div role="button" tabindex="0" class="ant-page-header-back-button" aria-label="Back" style="border: 0px; background: transparent; padding: 0px; line-height: inherit; display: inline-block;">
                                            <span role="img" aria-label="arrow-left" class="anticon anticon-arrow-left">
                                                <svg focusable="false" class="" data-icon="arrow-left" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                    <path d="M872 474H286.9l350.2-304c5.6-4.9 2.2-14-5.2-14h-88.5c-3.9 0-7.6 1.4-10.5 3.9L155 487.8a31.96 31.96 0 000 48.3L535.1 866c1.5 1.3 3.3 2 5.2 2h91.5c7.4 0 10.8-9.2 5.2-14L286.9 550H872c4.4 0 8-3.6 8-8v-60c0-4.4-3.6-8-8-8z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                <!---->
                                <span class="ant-page-header-heading-title" title="POS">POS</span>
                                <!----><!---->
                            </div>
                            <!---->
                        </div>
                        <!----><!---->
                    </div>
                </div>
                <div class="ant-col ant-col-24">
                    <div class="ant-breadcrumb" style="font-size: 12px;">
                        <span>
                            <span class="ant-breadcrumb-link"><a href="/admin/dashboard" class="">Dashboard</a></span><span class="ant-breadcrumb-separator">-</span>
                        </span>
                        <span><span class="ant-breadcrumb-link">Stock Manager</span><span class="ant-breadcrumb-separator">-</span></span>
                        <span><span class="ant-breadcrumb-link">POS</span><span class="ant-breadcrumb-separator">-</span></span>
                    </div>
                </div>
            </div>
        </div>
        <!---->
    </div>
    <form class="ant-form ant-form-vertical">
        <div class="ant-row mt-5" style="margin: 10px 16px 0px; row-gap: 8px;">
            <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-10 ant-col-xl-10" style="padding-left: 4px; padding-right: 4px;">
                <div class="pos-left-wrapper">
                    <div class="pos-left-header">
                        <div class="ant-card ant-card-bordered left-pos-top" style="margin-bottom: 10px;">
                            <!----><!---->
                            <div class="ant-card-body">
                                <div class="bill-filters">
                                    <div class="ant-row" style="margin-left: -8px; margin-right: -8px; row-gap: 0px;">
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-24" style="padding-left: 8px; padding-right: 8px;">
                                            <span style="display: flex;">
                                                <div class="ant-select ant-select-single ant-select-show-arrow ant-select-show-search" style="width: 100%;">
                                                    <!---->
                                                    <div class="ant-select-selector">
                                                        <span class="ant-select-selection-search">
                                                            <input
                                                                type="search"
                                                                id="rc_select_0"
                                                                autocomplete="off"
                                                                class="ant-select-selection-search-input"
                                                                role="combobox"
                                                                aria-haspopup="listbox"
                                                                aria-owns="rc_select_0_list"
                                                                aria-autocomplete="list"
                                                                aria-controls="rc_select_0_list"
                                                                aria-activedescendant="rc_select_0_list_28"
                                                                aria-expanded="false"
                                                            />
                                                        </span>
                                                        <span class="ant-select-selection-item">
                                                            Troy Cassin
                                                            <span>
                                                                <br />
                                                                +18707607432
                                                            </span>
                                                        </span>
                                                        <!---->
                                                    </div>
                                                    <span class="ant-select-arrow" unselectable="on" aria-hidden="true" style="user-select: none;">
                                                        <span role="img" aria-label="down" class="anticon anticon-down ant-select-suffix">
                                                            <svg focusable="false" class="" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                <path
                                                                    d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                ></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                    <!---->
                                                </div>
                                                <div>
                                                    <!---->
                                                    <button class="ant-btn ml-5 no-border-radius ant-btn-icon-only" type="button">
                                                        <span role="img" aria-label="plus" class="anticon anticon-plus">
                                                            <svg focusable="false" class="" data-icon="plus" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                <defs><style></style></defs>
                                                                <path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z"></path>
                                                                <path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z"></path>
                                                            </svg>
                                                        </span>
                                                    </button>
                                                    <!---->
                                                </div>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="ant-row mt-20 mb-30" style="row-gap: 0px;">
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-24">
                                            <span style="display: flex;">
                                                <div class="ant-select ant-select-single ant-select-show-arrow ant-select-show-search" style="width: 100%;">
                                                    <!----><!---->
                                                    <div class="ant-select-selector">
                                                        <span class="ant-select-selection-search">
                                                            <input
                                                                type="search"
                                                                id="rc_select_1"
                                                                autocomplete="off"
                                                                class="ant-select-selection-search-input"
                                                                role="combobox"
                                                                aria-haspopup="listbox"
                                                                aria-owns="rc_select_1_list"
                                                                aria-autocomplete="list"
                                                                aria-controls="rc_select_1_list"
                                                                aria-activedescendant="rc_select_1_list_0"
                                                                aria-expanded="false"
                                                            />
                                                        </span>
                                                        <!---->
                                                        <span class="ant-select-selection-placeholder">Select Product...</span>
                                                    </div>
                                                    <span class="ant-select-arrow" unselectable="on" aria-hidden="true" style="user-select: none;">
                                                        <span role="img" aria-label="search" class="anticon anticon-search">
                                                            <svg focusable="false" class="" data-icon="search" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                <path
                                                                    d="M909.6 854.5L649.9 594.8C690.2 542.7 712 479 712 412c0-80.2-31.3-155.4-87.9-212.1-56.6-56.7-132-87.9-212.1-87.9s-155.5 31.3-212.1 87.9C143.2 256.5 112 331.8 112 412c0 80.1 31.3 155.5 87.9 212.1C256.5 680.8 331.8 712 412 712c67 0 130.6-21.8 182.7-62l259.7 259.6a8.2 8.2 0 0011.6 0l43.6-43.5a8.2 8.2 0 000-11.6zM570.4 570.4C528 612.7 471.8 636 412 636s-116-23.3-158.4-65.6C211.3 528 188 471.8 188 412s23.3-116.1 65.6-158.4C296 211.3 352.2 188 412 188s116.1 23.2 158.4 65.6S636 352.2 636 412s-23.3 116.1-65.6 158.4z"
                                                                ></path>
                                                            </svg>
                                                        </span>
                                                    </span>
                                                    <!---->
                                                </div>
                                                <button class="ant-btn ml-5 ant-btn-icon-only" type="button">
                                                    <span role="img" aria-label="barcode" class="anticon anticon-barcode">
                                                        <svg focusable="false" class="" data-icon="barcode" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                            <path
                                                                d="M120 160H72c-4.4 0-8 3.6-8 8v688c0 4.4 3.6 8 8 8h48c4.4 0 8-3.6 8-8V168c0-4.4-3.6-8-8-8zm833 0h-48c-4.4 0-8 3.6-8 8v688c0 4.4 3.6 8 8 8h48c4.4 0 8-3.6 8-8V168c0-4.4-3.6-8-8-8zM200 736h112c4.4 0 8-3.6 8-8V168c0-4.4-3.6-8-8-8H200c-4.4 0-8 3.6-8 8v560c0 4.4 3.6 8 8 8zm321 0h48c4.4 0 8-3.6 8-8V168c0-4.4-3.6-8-8-8h-48c-4.4 0-8 3.6-8 8v560c0 4.4 3.6 8 8 8zm126 0h178c4.4 0 8-3.6 8-8V168c0-4.4-3.6-8-8-8H647c-4.4 0-8 3.6-8 8v560c0 4.4 3.6 8 8 8zm-255 0h48c4.4 0 8-3.6 8-8V168c0-4.4-3.6-8-8-8h-48c-4.4 0-8 3.6-8 8v560c0 4.4 3.6 8 8 8zm-79 64H201c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8h112c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8zm257 0h-48c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8h48c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8zm256 0H648c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8h178c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8zm-385 0h-48c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8h48c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8z"
                                                            ></path>
                                                        </svg>
                                                    </span>
                                                </button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!---->
                        </div>
                    </div>
                    <div class="pos-left-content">
                        <div class="ant-card ant-card-bordered left-pos-middle-table" style="margin-bottom: 10px;">
                            <!----><!---->
                            <div class="ant-card-body">
                                <div class="bill-body">
                                    <div class="bill-table">
                                        <div class="ant-row mt-20 mb-30" style="row-gap: 0px;">
                                            <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-24">
                                                <div class="ant-table-wrapper">
                                                    <div class="ant-spin-nested-loading">
                                                        <!---->
                                                        <div class="ant-spin-container">
                                                            <div class="ant-table">
                                                                <!---->
                                                                <div class="ant-table-container">
                                                                    <div class="ant-table-content">
                                                                        <table style="table-layout: auto;">
                                                                            <colgroup></colgroup>
                                                                            <thead class="ant-table-thead">
                                                                                <tr>
                                                                                    <th class="ant-table-cell" colstart="0" colend="0"><!---->#<!----></th>
                                                                                    <th class="ant-table-cell" colstart="1" colend="1"><!---->Name<!----></th>
                                                                                    <th class="ant-table-cell" colstart="2" colend="2"><!---->Quantity<!----></th>
                                                                                    <th class="ant-table-cell" colstart="3" colend="3"><!---->SubTotal<!----></th>
                                                                                    <th class="ant-table-cell" colstart="4" colend="4"><!---->Action<!----></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody class="ant-table-tbody">
                                                                                <!---->
                                                                                <tr data-row-key="AdWNDqgV" class="ant-table-row ant-table-row-level-0">
                                                                                    <td class="ant-table-cell"><!---->1<!----></td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->Sony Noise Cancelling Headphones <br />
                                                                                        <small>
                                                                                            <span class="ant-typography">
                                                                                                <code>Avl. qty: 102pc<!----></code>
                                                                                            </span>
                                                                                        </small>
                                                                                        <!---->
                                                                                    </td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->
                                                                                        <div class="ant-input-number">
                                                                                            <div class="ant-input-number-handler-wrap">
                                                                                                <span
                                                                                                    unselectable="on"
                                                                                                    role="button"
                                                                                                    aria-label="Increase Value"
                                                                                                    aria-disabled="false"
                                                                                                    class="ant-input-number-handler ant-input-number-handler-up"
                                                                                                >
                                                                                                    <span role="img" aria-label="up" class="anticon anticon-up ant-input-number-handler-up-inner">
                                                                                                        <svg focusable="false" class="" data-icon="up" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                            <path
                                                                                                                d="M890.5 755.3L537.9 269.2c-12.8-17.6-39-17.6-51.7 0L133.5 755.3A8 8 0 00140 768h75c5.1 0 9.9-2.5 12.9-6.6L512 369.8l284.1 391.6c3 4.1 7.8 6.6 12.9 6.6h75c6.5 0 10.3-7.4 6.5-12.7z"
                                                                                                            ></path>
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </span>
                                                                                                <span
                                                                                                    unselectable="on"
                                                                                                    role="button"
                                                                                                    aria-label="Decrease Value"
                                                                                                    aria-disabled="false"
                                                                                                    class="ant-input-number-handler ant-input-number-handler-down"
                                                                                                >
                                                                                                    <span role="img" aria-label="down" class="anticon anticon-down ant-input-number-handler-down-inner">
                                                                                                        <svg
                                                                                                            focusable="false"
                                                                                                            class=""
                                                                                                            data-icon="down"
                                                                                                            width="1em"
                                                                                                            height="1em"
                                                                                                            fill="currentColor"
                                                                                                            aria-hidden="true"
                                                                                                            viewBox="64 64 896 896"
                                                                                                        >
                                                                                                            <path
                                                                                                                d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                                                            ></path>
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="ant-input-number-input-wrap">
                                                                                                <input autocomplete="off" role="spinbutton" aria-valuemin="0" aria-valuenow="3" step="1" id="inputNumber" class="ant-input-number-input" />
                                                                                            </div>
                                                                                        </div>
                                                                                        <!---->
                                                                                    </td>
                                                                                    <td class="ant-table-cell"><!---->$123.00<!----></td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->
                                                                                        <button class="ant-btn ant-btn-primary ant-btn-icon-only" type="button" style="margin-left: 4px; margin-top: 4px;">
                                                                                            <span role="img" aria-label="edit" class="anticon anticon-edit">
                                                                                                <svg focusable="false" class="" data-icon="edit" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                    <path
                                                                                                        d="M257.7 752c2 0 4-.2 6-.5L431.9 722c2-.4 3.9-1.3 5.3-2.8l423.9-423.9a9.96 9.96 0 000-14.1L694.9 114.9c-1.9-1.9-4.4-2.9-7.1-2.9s-5.2 1-7.1 2.9L256.8 538.8c-1.5 1.5-2.4 3.3-2.8 5.3l-29.5 168.2a33.5 33.5 0 009.4 29.8c6.6 6.4 14.9 9.9 23.8 9.9zm67.4-174.4L687.8 215l73.3 73.3-362.7 362.6-88.9 15.7 15.6-89zM880 836H144c-17.7 0-32 14.3-32 32v36c0 4.4 3.6 8 8 8h784c4.4 0 8-3.6 8-8v-36c0-17.7-14.3-32-32-32z"
                                                                                                    ></path>
                                                                                                </svg>
                                                                                            </span>
                                                                                        </button>
                                                                                        <button class="ant-btn ant-btn-primary ant-btn-icon-only" type="button" style="margin-left: 4px; margin-top: 4px;">
                                                                                            <span role="img" aria-label="delete" class="anticon anticon-delete">
                                                                                                <svg focusable="false" class="" data-icon="delete" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                    <path
                                                                                                        d="M360 184h-8c4.4 0 8-3.6 8-8v8h304v-8c0 4.4 3.6 8 8 8h-8v72h72v-80c0-35.3-28.7-64-64-64H352c-35.3 0-64 28.7-64 64v80h72v-72zm504 72H160c-17.7 0-32 14.3-32 32v32c0 4.4 3.6 8 8 8h60.4l24.7 523c1.6 34.1 29.8 61 63.9 61h454c34.2 0 62.3-26.8 63.9-61l24.7-523H888c4.4 0 8-3.6 8-8v-32c0-17.7-14.3-32-32-32zM731.3 840H292.7l-24.2-512h487l-24.2 512z"
                                                                                                    ></path>
                                                                                                </svg>
                                                                                            </span>
                                                                                        </button>
                                                                                        <!---->
                                                                                    </td>
                                                                                </tr>
                                                                                <!---->
                                                                                <tr data-row-key="NArJeWyE" class="ant-table-row ant-table-row-level-0">
                                                                                    <td class="ant-table-cell"><!---->2<!----></td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->Apple EarPods <br />
                                                                                        <small>
                                                                                            <span class="ant-typography">
                                                                                                <code>Avl. qty: 109pc<!----></code>
                                                                                            </span>
                                                                                        </small>
                                                                                        <!---->
                                                                                    </td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->
                                                                                        <div class="ant-input-number">
                                                                                            <div class="ant-input-number-handler-wrap">
                                                                                                <span
                                                                                                    unselectable="on"
                                                                                                    role="button"
                                                                                                    aria-label="Increase Value"
                                                                                                    aria-disabled="false"
                                                                                                    class="ant-input-number-handler ant-input-number-handler-up"
                                                                                                >
                                                                                                    <span role="img" aria-label="up" class="anticon anticon-up ant-input-number-handler-up-inner">
                                                                                                        <svg focusable="false" class="" data-icon="up" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                            <path
                                                                                                                d="M890.5 755.3L537.9 269.2c-12.8-17.6-39-17.6-51.7 0L133.5 755.3A8 8 0 00140 768h75c5.1 0 9.9-2.5 12.9-6.6L512 369.8l284.1 391.6c3 4.1 7.8 6.6 12.9 6.6h75c6.5 0 10.3-7.4 6.5-12.7z"
                                                                                                            ></path>
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </span>
                                                                                                <span
                                                                                                    unselectable="on"
                                                                                                    role="button"
                                                                                                    aria-label="Decrease Value"
                                                                                                    aria-disabled="false"
                                                                                                    class="ant-input-number-handler ant-input-number-handler-down"
                                                                                                >
                                                                                                    <span role="img" aria-label="down" class="anticon anticon-down ant-input-number-handler-down-inner">
                                                                                                        <svg
                                                                                                            focusable="false"
                                                                                                            class=""
                                                                                                            data-icon="down"
                                                                                                            width="1em"
                                                                                                            height="1em"
                                                                                                            fill="currentColor"
                                                                                                            aria-hidden="true"
                                                                                                            viewBox="64 64 896 896"
                                                                                                        >
                                                                                                            <path
                                                                                                                d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                                                            ></path>
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="ant-input-number-input-wrap">
                                                                                                <input autocomplete="off" role="spinbutton" aria-valuemin="0" aria-valuenow="3" step="1" id="inputNumber" class="ant-input-number-input" />
                                                                                            </div>
                                                                                        </div>
                                                                                        <!---->
                                                                                    </td>
                                                                                    <td class="ant-table-cell"><!---->$102.00<!----></td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->
                                                                                        <button class="ant-btn ant-btn-primary ant-btn-icon-only" type="button" style="margin-left: 4px; margin-top: 4px;">
                                                                                            <span role="img" aria-label="edit" class="anticon anticon-edit">
                                                                                                <svg focusable="false" class="" data-icon="edit" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                    <path
                                                                                                        d="M257.7 752c2 0 4-.2 6-.5L431.9 722c2-.4 3.9-1.3 5.3-2.8l423.9-423.9a9.96 9.96 0 000-14.1L694.9 114.9c-1.9-1.9-4.4-2.9-7.1-2.9s-5.2 1-7.1 2.9L256.8 538.8c-1.5 1.5-2.4 3.3-2.8 5.3l-29.5 168.2a33.5 33.5 0 009.4 29.8c6.6 6.4 14.9 9.9 23.8 9.9zm67.4-174.4L687.8 215l73.3 73.3-362.7 362.6-88.9 15.7 15.6-89zM880 836H144c-17.7 0-32 14.3-32 32v36c0 4.4 3.6 8 8 8h784c4.4 0 8-3.6 8-8v-36c0-17.7-14.3-32-32-32z"
                                                                                                    ></path>
                                                                                                </svg>
                                                                                            </span>
                                                                                        </button>
                                                                                        <button class="ant-btn ant-btn-primary ant-btn-icon-only" type="button" style="margin-left: 4px; margin-top: 4px;">
                                                                                            <span role="img" aria-label="delete" class="anticon anticon-delete">
                                                                                                <svg focusable="false" class="" data-icon="delete" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                    <path
                                                                                                        d="M360 184h-8c4.4 0 8-3.6 8-8v8h304v-8c0 4.4 3.6 8 8 8h-8v72h72v-80c0-35.3-28.7-64-64-64H352c-35.3 0-64 28.7-64 64v80h72v-72zm504 72H160c-17.7 0-32 14.3-32 32v32c0 4.4 3.6 8 8 8h60.4l24.7 523c1.6 34.1 29.8 61 63.9 61h454c34.2 0 62.3-26.8 63.9-61l24.7-523H888c4.4 0 8-3.6 8-8v-32c0-17.7-14.3-32-32-32zM731.3 840H292.7l-24.2-512h487l-24.2 512z"
                                                                                                    ></path>
                                                                                                </svg>
                                                                                            </span>
                                                                                        </button>
                                                                                        <!---->
                                                                                    </td>
                                                                                </tr>
                                                                                <!---->
                                                                                <tr data-row-key="Jlq1nbR6" class="ant-table-row ant-table-row-level-0">
                                                                                    <td class="ant-table-cell"><!---->3<!----></td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->Apple AirPods Pro <br />
                                                                                        <small>
                                                                                            <span class="ant-typography">
                                                                                                <code>Avl. qty: 69pc<!----></code>
                                                                                            </span>
                                                                                        </small>
                                                                                        <!---->
                                                                                    </td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->
                                                                                        <div class="ant-input-number">
                                                                                            <div class="ant-input-number-handler-wrap">
                                                                                                <span
                                                                                                    unselectable="on"
                                                                                                    role="button"
                                                                                                    aria-label="Increase Value"
                                                                                                    aria-disabled="false"
                                                                                                    class="ant-input-number-handler ant-input-number-handler-up"
                                                                                                >
                                                                                                    <span role="img" aria-label="up" class="anticon anticon-up ant-input-number-handler-up-inner">
                                                                                                        <svg focusable="false" class="" data-icon="up" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                            <path
                                                                                                                d="M890.5 755.3L537.9 269.2c-12.8-17.6-39-17.6-51.7 0L133.5 755.3A8 8 0 00140 768h75c5.1 0 9.9-2.5 12.9-6.6L512 369.8l284.1 391.6c3 4.1 7.8 6.6 12.9 6.6h75c6.5 0 10.3-7.4 6.5-12.7z"
                                                                                                            ></path>
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </span>
                                                                                                <span
                                                                                                    unselectable="on"
                                                                                                    role="button"
                                                                                                    aria-label="Decrease Value"
                                                                                                    aria-disabled="false"
                                                                                                    class="ant-input-number-handler ant-input-number-handler-down"
                                                                                                >
                                                                                                    <span role="img" aria-label="down" class="anticon anticon-down ant-input-number-handler-down-inner">
                                                                                                        <svg
                                                                                                            focusable="false"
                                                                                                            class=""
                                                                                                            data-icon="down"
                                                                                                            width="1em"
                                                                                                            height="1em"
                                                                                                            fill="currentColor"
                                                                                                            aria-hidden="true"
                                                                                                            viewBox="64 64 896 896"
                                                                                                        >
                                                                                                            <path
                                                                                                                d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                                                            ></path>
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="ant-input-number-input-wrap">
                                                                                                <input autocomplete="off" role="spinbutton" aria-valuemin="0" aria-valuenow="2" step="1" id="inputNumber" class="ant-input-number-input" />
                                                                                            </div>
                                                                                        </div>
                                                                                        <!---->
                                                                                    </td>
                                                                                    <td class="ant-table-cell"><!---->$42.00<!----></td>
                                                                                    <td class="ant-table-cell">
                                                                                        <!---->
                                                                                        <button class="ant-btn ant-btn-primary ant-btn-icon-only" type="button" style="margin-left: 4px; margin-top: 4px;">
                                                                                            <span role="img" aria-label="edit" class="anticon anticon-edit">
                                                                                                <svg focusable="false" class="" data-icon="edit" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                    <path
                                                                                                        d="M257.7 752c2 0 4-.2 6-.5L431.9 722c2-.4 3.9-1.3 5.3-2.8l423.9-423.9a9.96 9.96 0 000-14.1L694.9 114.9c-1.9-1.9-4.4-2.9-7.1-2.9s-5.2 1-7.1 2.9L256.8 538.8c-1.5 1.5-2.4 3.3-2.8 5.3l-29.5 168.2a33.5 33.5 0 009.4 29.8c6.6 6.4 14.9 9.9 23.8 9.9zm67.4-174.4L687.8 215l73.3 73.3-362.7 362.6-88.9 15.7 15.6-89zM880 836H144c-17.7 0-32 14.3-32 32v36c0 4.4 3.6 8 8 8h784c4.4 0 8-3.6 8-8v-36c0-17.7-14.3-32-32-32z"
                                                                                                    ></path>
                                                                                                </svg>
                                                                                            </span>
                                                                                        </button>
                                                                                        <button class="ant-btn ant-btn-primary ant-btn-icon-only" type="button" style="margin-left: 4px; margin-top: 4px;">
                                                                                            <span role="img" aria-label="delete" class="anticon anticon-delete">
                                                                                                <svg focusable="false" class="" data-icon="delete" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                                    <path
                                                                                                        d="M360 184h-8c4.4 0 8-3.6 8-8v8h304v-8c0 4.4 3.6 8 8 8h-8v72h72v-80c0-35.3-28.7-64-64-64H352c-35.3 0-64 28.7-64 64v80h72v-72zm504 72H160c-17.7 0-32 14.3-32 32v32c0 4.4 3.6 8 8 8h60.4l24.7 523c1.6 34.1 29.8 61 63.9 61h454c34.2 0 62.3-26.8 63.9-61l24.7-523H888c4.4 0 8-3.6 8-8v-32c0-17.7-14.3-32-32-32zM731.3 840H292.7l-24.2-512h487l-24.2 512z"
                                                                                                    ></path>
                                                                                                </svg>
                                                                                            </span>
                                                                                        </button>
                                                                                        <!---->
                                                                                    </td>
                                                                                </tr>
                                                                                <!---->
                                                                            </tbody>
                                                                            <!---->
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <!---->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!---->
                        </div>
                    </div>
                    <div class="pos-left-footer">
                        <div class="ant-card ant-card-bordered">
                            <!----><!---->
                            <div class="ant-card-body">
                                <div class="bill-footer">
                                    <div class="ant-row" style="margin-left: -8px; margin-right: -8px; row-gap: 16px;">
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-8 ant-col-lg-8 ant-col-xl-8" style="padding-left: 8px; padding-right: 8px;">
                                            <div class="ant-row ant-form-item" style="row-gap: 0px;">
                                                <div class="ant-col ant-form-item-label">
                                                    <label class="" title="Order Tax">Order Tax<!----></label>
                                                </div>
                                                <div class="ant-col ant-form-item-control">
                                                    <div class="ant-form-item-control-input">
                                                        <div class="ant-form-item-control-input-content">
                                                            <div class="ant-select ant-select-single ant-select-allow-clear ant-select-show-arrow" style="width: 100%;">
                                                                <!---->
                                                                <div class="ant-select-selector">
                                                                    <span class="ant-select-selection-search">
                                                                        <input
                                                                            type="search"
                                                                            id="rc_select_2"
                                                                            autocomplete="off"
                                                                            class="ant-select-selection-search-input"
                                                                            role="combobox"
                                                                            aria-haspopup="listbox"
                                                                            aria-owns="rc_select_2_list"
                                                                            aria-autocomplete="list"
                                                                            aria-controls="rc_select_2_list"
                                                                            aria-activedescendant="rc_select_2_list_-1"
                                                                            readonly=""
                                                                            unselectable="on"
                                                                            style="opacity: 0;"
                                                                            aria-expanded="false"
                                                                        />
                                                                    </span>
                                                                    <!---->
                                                                    <span class="ant-select-selection-placeholder">Select Order Tax...</span>
                                                                </div>
                                                                <span class="ant-select-arrow" unselectable="on" aria-hidden="true" style="user-select: none;">
                                                                    <span role="img" aria-label="down" class="anticon anticon-down ant-select-suffix">
                                                                        <svg focusable="false" class="" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                            <path
                                                                                d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                            ></path>
                                                                        </svg>
                                                                    </span>
                                                                </span>
                                                                <!---->
                                                            </div>
                                                        </div>
                                                        <!---->
                                                    </div>
                                                    <!----><!---->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-8 ant-col-lg-8 ant-col-xl-8" style="padding-left: 8px; padding-right: 8px;">
                                            <div class="ant-row ant-form-item" style="row-gap: 0px;">
                                                <div class="ant-col ant-form-item-label">
                                                    <label class="" title="Discount">Discount<!----></label>
                                                </div>
                                                <div class="ant-col ant-form-item-control">
                                                    <div class="ant-form-item-control-input">
                                                        <div class="ant-form-item-control-input-content">
                                                            <span class="ant-input-group ant-input-group-compact">
                                                                <div class="ant-select ant-select-single ant-select-show-arrow" style="width: 30%;">
                                                                    <!----><!---->
                                                                    <div class="ant-select-selector">
                                                                        <span class="ant-select-selection-search">
                                                                            <input
                                                                                type="search"
                                                                                id="rc_select_3"
                                                                                autocomplete="off"
                                                                                class="ant-select-selection-search-input"
                                                                                role="combobox"
                                                                                aria-haspopup="listbox"
                                                                                aria-owns="rc_select_3_list"
                                                                                aria-autocomplete="list"
                                                                                aria-controls="rc_select_3_list"
                                                                                aria-activedescendant="rc_select_3_list_0"
                                                                                readonly=""
                                                                                unselectable="on"
                                                                                style="opacity: 0;"
                                                                            />
                                                                        </span>
                                                                        <span class="ant-select-selection-item"> % </span>
                                                                        <!---->
                                                                    </div>
                                                                    <span class="ant-select-arrow" unselectable="on" aria-hidden="true" style="user-select: none;">
                                                                        <span role="img" aria-label="down" class="anticon anticon-down ant-select-suffix">
                                                                            <svg focusable="false" class="" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                <path
                                                                                    d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                                ></path>
                                                                            </svg>
                                                                        </span>
                                                                    </span>
                                                                    <!---->
                                                                </div>
                                                                <div class="ant-input-number" style="width: 70%;">
                                                                    <div class="ant-input-number-handler-wrap">
                                                                        <span unselectable="on" role="button" aria-label="Increase Value" aria-disabled="false" class="ant-input-number-handler ant-input-number-handler-up">
                                                                            <span role="img" aria-label="up" class="anticon anticon-up ant-input-number-handler-up-inner">
                                                                                <svg focusable="false" class="" data-icon="up" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                    <path
                                                                                        d="M890.5 755.3L537.9 269.2c-12.8-17.6-39-17.6-51.7 0L133.5 755.3A8 8 0 00140 768h75c5.1 0 9.9-2.5 12.9-6.6L512 369.8l284.1 391.6c3 4.1 7.8 6.6 12.9 6.6h75c6.5 0 10.3-7.4 6.5-12.7z"
                                                                                    ></path>
                                                                                </svg>
                                                                            </span>
                                                                        </span>
                                                                        <span unselectable="on" role="button" aria-label="Decrease Value" aria-disabled="false" class="ant-input-number-handler ant-input-number-handler-down">
                                                                            <span role="img" aria-label="down" class="anticon anticon-down ant-input-number-handler-down-inner">
                                                                                <svg focusable="false" class="" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                    <path
                                                                                        d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                                    ></path>
                                                                                </svg>
                                                                            </span>
                                                                        </span>
                                                                    </div>
                                                                    <div class="ant-input-number-input-wrap">
                                                                        <input autocomplete="off" role="spinbutton" aria-valuemin="0" step="1" placeholder="Please Enter Discount" class="ant-input-number-input" aria-valuenow="10" />
                                                                    </div>
                                                                </div>
                                                            </span>
                                                        </div>
                                                        <!---->
                                                    </div>
                                                    <!----><!---->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-8 ant-col-lg-8 ant-col-xl-8" style="padding-left: 8px; padding-right: 8px;">
                                            <div class="ant-row ant-form-item" style="row-gap: 0px;">
                                                <div class="ant-col ant-form-item-label">
                                                    <label class="" title="Shipping">Shipping<!----></label>
                                                </div>
                                                <div class="ant-col ant-form-item-control">
                                                    <div class="ant-form-item-control-input">
                                                        <div class="ant-form-item-control-input-content">
                                                            <div class="ant-input-number-group-wrapper" style="width: 100%;">
                                                                <div class="ant-input-number-wrapper ant-input-number-group">
                                                                    <div class="ant-input-number-group-addon">$</div>
                                                                    <div class="ant-input-number">
                                                                        <div class="ant-input-number-handler-wrap">
                                                                            <span unselectable="on" role="button" aria-label="Increase Value" aria-disabled="false" class="ant-input-number-handler ant-input-number-handler-up">
                                                                                <span role="img" aria-label="up" class="anticon anticon-up ant-input-number-handler-up-inner">
                                                                                    <svg focusable="false" class="" data-icon="up" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                        <path
                                                                                            d="M890.5 755.3L537.9 269.2c-12.8-17.6-39-17.6-51.7 0L133.5 755.3A8 8 0 00140 768h75c5.1 0 9.9-2.5 12.9-6.6L512 369.8l284.1 391.6c3 4.1 7.8 6.6 12.9 6.6h75c6.5 0 10.3-7.4 6.5-12.7z"
                                                                                        ></path>
                                                                                    </svg>
                                                                                </span>
                                                                            </span>
                                                                            <span unselectable="on" role="button" aria-label="Decrease Value" aria-disabled="false" class="ant-input-number-handler ant-input-number-handler-down">
                                                                                <span role="img" aria-label="down" class="anticon anticon-down ant-input-number-handler-down-inner">
                                                                                    <svg focusable="false" class="" data-icon="down" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                                                                        <path
                                                                                            d="M884 256h-75c-5.1 0-9.9 2.5-12.9 6.6L512 654.2 227.9 262.6c-3-4.1-7.8-6.6-12.9-6.6h-75c-6.5 0-10.3 7.4-6.5 12.7l352.6 486.1c12.8 17.6 39 17.6 51.7 0l352.6-486.1c3.9-5.3.1-12.7-6.4-12.7z"
                                                                                        ></path>
                                                                                    </svg>
                                                                                </span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="ant-input-number-input-wrap">
                                                                            <input autocomplete="off" role="spinbutton" aria-valuemin="0" aria-valuenow="50" step="1" placeholder="Please Enter Shipping" class="ant-input-number-input" />
                                                                        </div>
                                                                    </div>
                                                                    <!---->
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!---->
                                                    </div>
                                                    <!----><!---->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!---->
                        </div>
                        <div style="right: 0px; width: 100%; padding: 10px 16px; background: rgb(255, 255, 255); text-align: right; z-index: 1;">
                            <div class="ant-row" style="margin-left: -8px; margin-right: -8px; row-gap: 0px;">
                                <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-10 ant-col-lg-10 ant-col-xl-10" style="padding-left: 8px; padding-right: 8px;">
                                    <div class="ant-row" style="margin-left: -8px; margin-right: -8px; background: rgb(219, 219, 219); padding: 5px; row-gap: 0px;">
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-12 ant-col-lg-12 ant-col-xl-12" style="padding-left: 8px; padding-right: 8px;"><span class="pos-grand-total">Grand Total : </span></div>
                                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-12 ant-col-lg-12 ant-col-xl-12" style="padding-left: 8px; padding-right: 8px;"><span class="pos-grand-total">$290.30</span></div>
                                    </div>
                                </div>
                                <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-6 ant-col-lg-6 ant-col-xl-6 mt-10" style="padding-left: 8px; padding-right: 8px;"><small>Tax : $0.00 | Discount : $26.70</small></div>
                                <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-8 ant-col-lg-8 ant-col-xl-8" style="padding-left: 8px; padding-right: 8px;">
                                    <div class="ant-space ant-space-horizontal ant-space-align-center" style="gap: 8px;">
                                        <div class="ant-space-item" style="">
                                            <button class="ant-btn ant-btn-primary" type="button">
                                                <!---->
                                                <span>Pay Now</span>
                                            </button>
                                        </div>
                                        <!---->
                                        <div class="ant-space-item">
                                            <button class="ant-btn" type="button">
                                                <!---->
                                                <span>Reset</span>
                                            </button>
                                        </div>
                                        <!---->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-14 ant-col-xl-14 right-pos-sidebar" style="padding-left: 4px; padding-right: 4px;">
                <div class="ps ps--active-y">
                    <div class="ant-row" style="margin-left: -8px; margin-right: -8px; row-gap: 16px;">
                        <div class="ant-col ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-24 pos-style-1-category-scroll" style="padding-left: 8px; padding-right: 8px;">
                            <div class="pos-style-1-category-box">
                                <span class="ant-avatar ant-avatar-lg ant-avatar-square ant-avatar-icon" style="background-color: rgb(255, 255, 255); color: black; vertical-align: middle; margin-top: 5px;">
                                    <span role="img" aria-label="container" class="anticon anticon-container">
                                        <svg focusable="false" class="" data-icon="container" width="1em" height="1em" fill="currentColor" aria-hidden="true" viewBox="64 64 896 896">
                                            <path
                                                d="M832 64H192c-17.7 0-32 14.3-32 32v832c0 17.7 14.3 32 32 32h640c17.7 0 32-14.3 32-32V96c0-17.7-14.3-32-32-32zm-40 824H232V687h97.9c11.6 32.8 32 62.3 59.1 84.7 34.5 28.5 78.2 44.3 123 44.3s88.5-15.7 123-44.3c27.1-22.4 47.5-51.9 59.1-84.7H792v-63H643.6l-5.2 24.7C626.4 708.5 573.2 752 512 752s-114.4-43.5-126.5-103.3l-5.2-24.7H232V136h560v752zM320 341h384c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8H320c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8zm0 160h384c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8H320c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8z"
                                            ></path>
                                        </svg>
                                    </span>
                                </span>
                                <p>All</p>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_1.png" /></span>
                                    <p>Electron..</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_2.png" /></span>
                                    <p>Audio</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_18.png" /></span>
                                    <p>Headphon..</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_3.png" /></span>
                                    <p>Soundbars</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_4.png" /></span>
                                    <p>Mobiles</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_5.png" /></span>
                                    <p>Televisi..</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_6.png" /></span>
                                    <p>Computers</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_7.png" /></span>
                                    <p>Laptops</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_8.png" /></span>
                                    <p>Desktops</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_9.png" /></span>
                                    <p>Computer..</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_10.png" /></span>
                                    <p>Monitors</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_11.png" /></span>
                                    <p>Printers</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_12.png" /></span>
                                    <p>Fashion</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_13.png" /></span>
                                    <p>Clothes</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_14.png" /></span>
                                    <p>Shoes</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_15.png" /></span>
                                    <p>Grocery</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_16.png" /></span>
                                    <p>Home and..</p>
                                </span>
                            </div>
                            <div class="pos-style-1-category-box">
                                <!---->
                                <span>
                                    <span class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image" style="vertical-align: middle; margin-top: 5px;"><img src="https://demo.stockifly.in/uploads/categories/category_17.png" /></span>
                                    <p>Baby &amp; K..</p>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div>
                    <div class="ps__rail-y" style="top: 0px; right: 0px; height: 841px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 136px;"></div></div>
                    <div class="ant-row" style="margin-left: -15px; margin-right: -15px; row-gap: 0px;">
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">102 pc</span><img src="https://demo.stockifly.in/uploads/products/61njwOtQSML._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony Noise Cancelling Headphones</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$41.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">109 pc</span><img src="https://demo.stockifly.in/uploads/products/51UEOS6bML._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple EarPods</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$34.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">143 pc</span><img src="https://demo.stockifly.in/uploads/products/715hXtbXdzL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony Over-Ear Headphones</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$11.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">69 pc</span><img src="https://demo.stockifly.in/uploads/products/71bhWgQK-cL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple AirPods Pro</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$21.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">16 pc</span><img src="https://demo.stockifly.in/uploads/products/81thV7SoLZL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple AirPods Max</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$26.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">76 pc</span><img src="https://demo.stockifly.in/uploads/products/61njwOtQSML._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony ZX110NC Headphones</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$16.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">98 pc</span><img src="https://demo.stockifly.in/uploads/products/813oEQBqFL._AC_UL604_SR604,400_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Zebronics Bluetooth Soundbar</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$31.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">122 pc</span><img src="https://demo.stockifly.in/uploads/products/61zDrw-drKS._AC_UL604_SR604,400_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony Home Theatre System</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$43.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">56 pc</span><img src="https://demo.stockifly.in/uploads/products/715yMrwmAbL._AC_UL604_SR604,400_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Zebronics Soundbar with Dolby Atmos</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$39.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">63 pc</span><img src="https://demo.stockifly.in/uploads/products/81io-aPCPdL._AC_UL604_SR604,400_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Zebronics Multimedia soundbar</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$28.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">87 pc</span><img src="https://demo.stockifly.in/uploads/products/61Dw5Z8LzJL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lenovo IdeaPad Slim 3</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$29.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">93 pc</span><img src="https://demo.stockifly.in/uploads/products/31oXtPh3GVL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lenovo ThinkPad 13 Ultrabook</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$49.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">58 pc</span><img src="https://demo.stockifly.in/uploads/products/61qNmdoJUbL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lenovo IdeaPad 4</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$49.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">126 pc</span><img src="https://demo.stockifly.in/uploads/products/71S8U9VzLTL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ASUS VivoBook 15</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$36.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">132 pc</span><img src="https://demo.stockifly.in/uploads/products/914o5xV18L._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ASUS TUF Laptop</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$36.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">105 pc</span><img src="https://demo.stockifly.in/uploads/products/61q6x-ll5FL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lenovo Light Laptop</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$36.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">41 pc</span><img src="https://demo.stockifly.in/uploads/products/61XR0oGhF6L._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Dell N3511 Laptop</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$36.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">65 pc</span><img src="https://demo.stockifly.in/uploads/products/71poFSdDs5S._SX679.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">OPPO A74 5G</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$31.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">138 pc</span><img src="https://demo.stockifly.in/uploads/products/71TdXNLT1FL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">OPPO A15s</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$31.15</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">85 pc</span><img src="https://demo.stockifly.in/uploads/products/71os5DRhuSL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Samsung Galaxy M32 5G</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$32.25</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">6 pc</span><img src="https://demo.stockifly.in/uploads/products/71QT7dSK4BL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Samsung Galaxy M32 4G</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$32.25</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">50 pc</span><img src="https://demo.stockifly.in/uploads/products/61i8Vjb17SL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple iPhone 13 Pro Max</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$41.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">112 pc</span><img src="https://demo.stockifly.in/uploads/products/71cQWYVtcBL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple iPhone 12 (128GB) - Green</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$43.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">91 pc</span><img src="https://demo.stockifly.in/uploads/products/71i2XhHU3pL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple iPhone 11 (64GB) - Black</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$41.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">8 pc</span><img src="https://demo.stockifly.in/uploads/products/61GwJAhftvS._SX569_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Samsung Crystal 4K LED TV</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$52.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">24 pc</span><img src="https://demo.stockifly.in/uploads/products/91Pij5DqU1L._SX450_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony Bravia 4K Ultra HD TV</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$585.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">109 pc</span><img src="https://demo.stockifly.in/uploads/products/91Pij5DqU1L._SX450_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony Bravia Google TV</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$549.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">28 pc</span><img src="https://demo.stockifly.in/uploads/products/91RfzivKmwL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sony 75 Inch TV</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$2,075.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">78 pc</span><img src="https://demo.stockifly.in/uploads/products/71LJJrKbezL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">SAMSUNG Smart TV with Alexa</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$6,720.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">49 pc</span><img src="https://demo.stockifly.in/uploads/products/71QfqMtNISL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Acer Aspire Desktop</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$618.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">51 pc</span><img src="https://demo.stockifly.in/uploads/products/61y0UKNkt9L._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Dell OptiPlex Desktop Computer</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$758.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">78 pc</span><img src="https://demo.stockifly.in/uploads/products/81blwMhVV8L._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Apple iMac</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$978.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">92 pc</span><img src="https://demo.stockifly.in/uploads/products/41R0UJizC2L._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ASUS Zen AiO Laptop</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$857.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">48 pc</span><img src="https://demo.stockifly.in/uploads/products/41R0UJizC2L._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Dell Gaming Monitor</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$422.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">138 pc</span><img src="https://demo.stockifly.in/uploads/products/81XKPle6OAL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">SAMSUNG Monitor</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$203.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">65 pc</span><img src="https://demo.stockifly.in/uploads/products/81eGtZyyavL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ASUS Eye Care Display Monitor</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$234.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">133 pc</span><img src="https://demo.stockifly.in/uploads/products/81ufQKVY2fL._AC_UY218_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ASUS Portable Monitor</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$177.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">28 pc</span><img src="https://demo.stockifly.in/uploads/products/91hPxXNfwTS._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Gildan Men's Sweatshirt</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$21.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">122 pc</span><img src="https://demo.stockifly.in/uploads/products/917A-DUZbgL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lee Women's Jean</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$53.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">104 pc</span><img src="https://demo.stockifly.in/uploads/products/91B3eSkmUUL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">LEE Men's Regular Fit Jean</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$41.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">46 pc</span><img src="https://demo.stockifly.in/uploads/products/91yLNaTtAEL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lee Men's Slim Straight Leg Jeans</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$41.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">53 pc</span><img src="https://demo.stockifly.in/uploads/products/91yLNaTtAEL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lee Polo Shirt</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$21.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">148 pc</span><img src="https://demo.stockifly.in/uploads/products/81PdFU9yIlL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lee Men's T-Shirt</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$21.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">96 pc</span><img src="https://demo.stockifly.in/uploads/products/61FbqzPD8TL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">adidas Tennis Shoes</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$56.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">73 pc</span><img src="https://demo.stockifly.in/uploads/products/81XU2Iy9ZFL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">adidas Golf Shoes</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$56.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">95 pc</span><img src="https://demo.stockifly.in/uploads/products/71F5chCXQqS._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">PUMA Child Running Shoe</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$49.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">79 pc</span><img src="https://demo.stockifly.in/uploads/products/71KIA9w8ZiL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">PUMA Running Shoe</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$67.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">35 pc</span><img src="https://demo.stockifly.in/uploads/products/515ceC2U1YL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Reebok Men's Workout Plus Sneaker</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$67.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">50 pc</span><img src="https://demo.stockifly.in/uploads/products/61K2Lm0RnxL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Reebok Walking Shoe</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$82.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">71 pc</span><img src="https://demo.stockifly.in/uploads/products/816jUdRltL._UX625_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Lee Cooper Mens Sneakers</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$82.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">46 pc</span><img src="https://demo.stockifly.in/uploads/products/81uXwVIixJL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Glad ForceFlex Bags</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$9.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">22 pc</span><img src="https://demo.stockifly.in/uploads/products/6115wVoviML._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Maldon Salt, Sea Salt Flakes</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$17.12</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">8 pc</span><img src="https://demo.stockifly.in/uploads/products/91F9-E5FL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Welch's Fruit Snacks, Mixed Fruit, Gluten Free</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$17.12</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">46 pc</span><img src="https://demo.stockifly.in/uploads/products/81VnM8QOKTL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Peet's Coffee</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$41.12</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">99 pc</span><img src="https://demo.stockifly.in/uploads/products/81XRi95WamL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Tostitos Rounds Salsa Cups Nacho</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$22.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">141 pc</span><img src="https://demo.stockifly.in/uploads/products/71DX30b0OML._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Graco Chair</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$138.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">52 pc</span><img src="https://demo.stockifly.in/uploads/products/71cTvloW3-L._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Graco Car Seat</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$182.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">139 pc</span><img src="https://demo.stockifly.in/uploads/products/71Wb4KtcoEL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Munchkin Silicone Placemats</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$10.16</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">55 pc</span><img src="https://demo.stockifly.in/uploads/products/61ngmIT6ofL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Munchkin Duckling Bath Rinser</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$10.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">51 pc</span><img src="https://demo.stockifly.in/uploads/products/81eLbe2HAiL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Pampers Pants Girls and Boy</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$18.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">62 pc</span><img src="https://demo.stockifly.in/uploads/products/881S-xWVH8kL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Infantino Flip Carrier</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$35.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">18 pc</span><img src="https://demo.stockifly.in/uploads/products/81QWTlMeqfL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ZINUS Metal Box Spring Mattress</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$235.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">133 pc</span><img src="https://demo.stockifly.in/uploads/products/91N7yBUrirL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">ZINUS Sofa</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$265.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">47 pc</span><img src="https://demo.stockifly.in/uploads/products/71MUVgvmJIL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Furinno Office Computer Desk</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$65.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">27 pc</span><img src="https://demo.stockifly.in/uploads/products/71mJ-owgDlL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Furinno Frame Computer Desk</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$45.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">78 pc</span><img src="https://demo.stockifly.in/uploads/products/81QV3GYz4zL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sauder Costa Lateral File</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$45.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ant-col ant-col-xs-24 ant-col-md-12 ant-col-lg-6 ant-col-xxl-6" style="padding-left: 15px; padding-right: 15px;">
                            <div class="product-pos">
                                <div class="product-pos-top">
                                    <a href="javascript:void(0)"><span class="quantity-box" to="#">66 pc</span><img src="https://demo.stockifly.in/uploads/products/81sqJgoTVmL._AC_UL320_.jpg" class="img-fit" /></a>
                                </div>
                                <div class="product-pos-bottom">
                                    <div><h5 class="product-title">Sauder Barrister Lane Executive Desk</h5></div>
                                    <div class="product-details">
                                        <div class="product-price"><span>$37.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!----><!----><!---->
</div>
</body>

</html>
