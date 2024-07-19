<!DOCTYPE html>

<html lang="en" data-layout="horizontal" data-layout-style="default" data-layout-position="fixed" data-topbar="light" data-sidebar-size="lg" data-bs-theme="light" data-layout-width="fluid" data-body-image="none" data-theme="default" data-theme-colors="default" data-sidebar-visibility="show" data-preloader="disable"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<head>
    
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!--<meta charset="UTF-8">-->
    <title>Integreted Governance</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="CÆSAR Consultoria" name="description">
    <meta content="CÆESAR Consultoria" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- plugin css -->
    <link href="assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css">

    <!-- Layout config Js -->
    <script src="assets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Icons Css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
    <!-- App Css-->
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css">
    <!-- custom Css-->
    <link href="assets/css/custom.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Begin page -->
    <div id="layout-wrapper">

        <header id="page-topbar">
    <div class="layout-width">
        <div class="navbar-header">
            <div class="d-flex">
                <!-- LOGO -->
                <div class="navbar-brand-box horizontal-logo">
                    <a href="http://localhost:8080/index.jsp" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="./header_files/logo_pequeno.png" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="./header_files/logo_pequeno.png" alt="" height="17">
                        </span>
                    </a>

                    <a href="http://localhost:8080/index.jsp" class="logo logo-light">
                        <span class="logo-sm">
                            <img src="./header_files/logo_pequeno.png" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="./header_files/logo_pequeno.png" alt="" height="17">
                        </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 fs-16 header-item vertical-menu-btn topnav-hamburger material-shadow-none" id="topnav-hamburger-icon">
                    <span class="hamburger-icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                </button>
            </div>

            <div class="d-flex align-items-center">

                <div class="dropdown d-md-none topbar-head-dropdown header-item">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" id="page-header-search-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="bx bx-search fs-22"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-search-dropdown">
                        <form class="p-3">
                            <div class="form-group m-0">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient&#39;s username">
                                    <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="dropdown ms-1 topbar-head-dropdown header-item">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img id="header-lang-img" src="./header_files/us.svg" alt="Header Language" height="20" class="rounded">
                    </button>
                    <div class="dropdown-menu dropdown-menu-end">

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language py-2" data-lang="en" title="English">
                            <img src="./header_files/us.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">English</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="sp" title="Spanish">
                            <img src="./header_files/spain.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">Española</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="gr" title="German">
                            <img src="./header_files/germany.svg" alt="user-image" class="me-2 rounded" height="18"> <span class="align-middle">Deutsche</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="it" title="Italian">
                            <img src="./header_files/italy.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">Italiana</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ru" title="Russian">
                            <img src="./header_files/russia.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">русский</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ch" title="Chinese">
                            <img src="./header_files/china.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">中国人</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="fr" title="French">
                            <img src="./header_files/french.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">français</span>
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ar" title="Arabic">
                            <img src="./header_files/ae.svg" alt="user-image" class="me-2 rounded" height="18">
                            <span class="align-middle">Arabic</span>
                        </a>
                    </div>
                </div>

                <div class="dropdown topbar-head-dropdown ms-1 header-item">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="bx bx-category-alt fs-22"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-lg p-0 dropdown-menu-end">
                        <div class="p-3 border-top-0 border-start-0 border-end-0 border-dashed border">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h6 class="m-0 fw-semibold fs-15"> Web Apps </h6>
                                </div>
                                <div class="col-auto">
                                    <a href="http://localhost:8080/companies#!" class="btn btn-sm btn-soft-info"> View All Apps
                                        <i class="ri-arrow-right-s-line align-middle"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="p-2">
                            <div class="row g-0">
                                <div class="col">
                                    <a class="dropdown-icon-item" href="http://localhost:8080/companies#!">
                                        <img src="./header_files/github.png" alt="Github">
                                        <span>GitHub</span>
                                    </a>
                                </div>
                                <div class="col">
                                    <a class="dropdown-icon-item" href="http://localhost:8080/companies#!">
                                        <img src="./header_files/bitbucket.png" alt="bitbucket">
                                        <span>Bitbucket</span>
                                    </a>
                                </div>
                                <div class="col">
                                    <a class="dropdown-icon-item" href="http://localhost:8080/companies#!">
                                        <img src="./header_files/dribbble.png" alt="dribbble">
                                        <span>Dribbble</span>
                                    </a>
                                </div>
                            </div>

                            <div class="row g-0">
                                <div class="col">
                                    <a class="dropdown-icon-item" href="http://localhost:8080/companies#!">
                                        <img src="./header_files/dropbox.png" alt="dropbox">
                                        <span>Dropbox</span>
                                    </a>
                                </div>
                                <div class="col">
                                    <a class="dropdown-icon-item" href="http://localhost:8080/companies#!">
                                        <img src="./header_files/mail_chimp.png" alt="mail_chimp">
                                        <span>Mail Chimp</span>
                                    </a>
                                </div>
                                <div class="col">
                                    <a class="dropdown-icon-item" href="http://localhost:8080/companies#!">
                                        <img src="./header_files/slack.png" alt="slack">
                                        <span>Slack</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="dropdown topbar-head-dropdown ms-1 header-item">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" id="page-header-cart-dropdown" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                        <i class="bx bx-shopping-bag fs-22"></i>
                        <span class="position-absolute topbar-badge cartitem-badge fs-10 translate-middle badge rounded-pill bg-info">5</span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-xl dropdown-menu-end p-0 dropdown-menu-cart" aria-labelledby="page-header-cart-dropdown">
                        <div class="p-3 border-top-0 border-start-0 border-end-0 border-dashed border">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h6 class="m-0 fs-16 fw-semibold"> My Cart</h6>
                                </div>
                                <div class="col-auto">
                                    <span class="badge bg-warning-subtle text-warning fs-13"><span class="cartitem-badge">5</span>
                                        items</span>
                                </div>
                            </div>
                        </div>
                        <div data-simplebar="init" style="max-height: 300px;"><div class="simplebar-wrapper" style="margin: 0px;"><div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div><div class="simplebar-mask"><div class="simplebar-offset" style="right: 0px; bottom: 0px;"><div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden;"><div class="simplebar-content" style="padding: 0px;">
                            <div class="p-2">
                                <div class="text-center empty-cart" id="empty-cart" style="display: none;">
                                    <div class="avatar-md mx-auto my-3">
                                        <div class="avatar-title bg-info-subtle text-info fs-36 rounded-circle">
                                            <i class="bx bx-cart"></i>
                                        </div>
                                    </div>
                                    <h5 class="mb-3">Your Cart is Empty!</h5>
                                    <a href="http://localhost:8080/apps-ecommerce-products.html" class="btn btn-success w-md mb-3">Shop Now</a>
                                </div>
                                <div class="d-block dropdown-item dropdown-item-cart text-wrap px-3 py-2">
                                    <div class="d-flex align-items-center">
                                        <img src="./header_files/img-1.png" class="me-3 rounded-circle avatar-sm p-2 bg-light" alt="user-pic">
                                        <div class="flex-grow-1">
                                            <h6 class="mt-0 mb-1 fs-14">
                                                <a href="http://localhost:8080/apps-ecommerce-product-details.html" class="text-reset">Branded
                                                    T-Shirts</a>
                                            </h6>
                                            <p class="mb-0 fs-12 text-muted">
                                                Quantity: <span>10 x $32</span>
                                            </p>
                                        </div>
                                        <div class="px-2">
                                            <h5 class="m-0 fw-normal">$<span class="cart-item-price">320</span></h5>
                                        </div>
                                        <div class="ps-2">
                                            <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary remove-item-btn"><i class="ri-close-fill fs-16"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-block dropdown-item dropdown-item-cart text-wrap px-3 py-2">
                                    <div class="d-flex align-items-center">
                                        <img src="./header_files/img-2.png" class="me-3 rounded-circle avatar-sm p-2 bg-light" alt="user-pic">
                                        <div class="flex-grow-1">
                                            <h6 class="mt-0 mb-1 fs-14">
                                                <a href="http://localhost:8080/apps-ecommerce-product-details.html" class="text-reset">Bentwood Chair</a>
                                            </h6>
                                            <p class="mb-0 fs-12 text-muted">
                                                Quantity: <span>5 x $18</span>
                                            </p>
                                        </div>
                                        <div class="px-2">
                                            <h5 class="m-0 fw-normal">$<span class="cart-item-price">89</span></h5>
                                        </div>
                                        <div class="ps-2">
                                            <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary remove-item-btn"><i class="ri-close-fill fs-16"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-block dropdown-item dropdown-item-cart text-wrap px-3 py-2">
                                    <div class="d-flex align-items-center">
                                        <img src="./header_files/img-3.png" class="me-3 rounded-circle avatar-sm p-2 bg-light" alt="user-pic">
                                        <div class="flex-grow-1">
                                            <h6 class="mt-0 mb-1 fs-14">
                                                <a href="http://localhost:8080/apps-ecommerce-product-details.html" class="text-reset">
                                                    Borosil Paper Cup</a>
                                            </h6>
                                            <p class="mb-0 fs-12 text-muted">
                                                Quantity: <span>3 x $250</span>
                                            </p>
                                        </div>
                                        <div class="px-2">
                                            <h5 class="m-0 fw-normal">$<span class="cart-item-price">750</span></h5>
                                        </div>
                                        <div class="ps-2">
                                            <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary remove-item-btn"><i class="ri-close-fill fs-16"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-block dropdown-item dropdown-item-cart text-wrap px-3 py-2">
                                    <div class="d-flex align-items-center">
                                        <img src="./header_files/img-6.png" class="me-3 rounded-circle avatar-sm p-2 bg-light" alt="user-pic">
                                        <div class="flex-grow-1">
                                            <h6 class="mt-0 mb-1 fs-14">
                                                <a href="http://localhost:8080/apps-ecommerce-product-details.html" class="text-reset">Gray
                                                    Styled T-Shirt</a>
                                            </h6>
                                            <p class="mb-0 fs-12 text-muted">
                                                Quantity: <span>1 x $1250</span>
                                            </p>
                                        </div>
                                        <div class="px-2">
                                            <h5 class="m-0 fw-normal">$ <span class="cart-item-price">1250</span></h5>
                                        </div>
                                        <div class="ps-2">
                                            <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary remove-item-btn"><i class="ri-close-fill fs-16"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-block dropdown-item dropdown-item-cart text-wrap px-3 py-2">
                                    <div class="d-flex align-items-center">
                                        <img src="./header_files/img-5.png" class="me-3 rounded-circle avatar-sm p-2 bg-light" alt="user-pic">
                                        <div class="flex-grow-1">
                                            <h6 class="mt-0 mb-1 fs-14">
                                                <a href="http://localhost:8080/apps-ecommerce-product-details.html" class="text-reset">Stillbird Helmet</a>
                                            </h6>
                                            <p class="mb-0 fs-12 text-muted">
                                                Quantity: <span>2 x $495</span>
                                            </p>
                                        </div>
                                        <div class="px-2">
                                            <h5 class="m-0 fw-normal">$<span class="cart-item-price">990</span></h5>
                                        </div>
                                        <div class="ps-2">
                                            <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary remove-item-btn"><i class="ri-close-fill fs-16"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div></div></div></div><div class="simplebar-placeholder" style="width: 0px; height: 0px;"></div></div><div class="simplebar-track simplebar-horizontal" style="visibility: hidden;"><div class="simplebar-scrollbar" style="width: 0px; display: none;"></div></div><div class="simplebar-track simplebar-vertical" style="visibility: hidden;"><div class="simplebar-scrollbar" style="height: 0px; display: none;"></div></div></div>
                        <div class="p-3 border-bottom-0 border-start-0 border-end-0 border-dashed border" id="checkout-elem" style="display: block;">
                            <div class="d-flex justify-content-between align-items-center pb-3">
                                <h5 class="m-0 text-muted">Total:</h5>
                                <div class="px-2">
                                    <h5 class="m-0" id="cart-item-total">$3399.00</h5>
                                </div>
                            </div>

                            <a href="http://localhost:8080/apps-ecommerce-checkout.html" class="btn btn-success text-center w-100">
                                Checkout
                            </a>
                        </div>
                    </div>
                </div>

                <div class="ms-1 header-item d-none d-sm-flex">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" data-toggle="fullscreen">
                        <i class="bx bx-fullscreen fs-22"></i>
                    </button>
                </div>

                <div class="ms-1 header-item d-none d-sm-flex">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle light-dark-mode">
                        <i class="bx bx-moon fs-22"></i>
                    </button>
                </div>

                <div class="dropdown topbar-head-dropdown ms-1 header-item" id="notificationDropdown">
                    <button type="button" class="btn btn-icon btn-topbar material-shadow-none btn-ghost-secondary rounded-circle" id="page-header-notifications-dropdown" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                        <i class="bx bx-bell fs-22"></i>
                        <span class="position-absolute topbar-badge fs-10 translate-middle badge rounded-pill bg-danger">3<span class="visually-hidden">unread messages</span></span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-notifications-dropdown">

                        <div class="dropdown-head bg-primary bg-pattern rounded-top">
                            <div class="p-3">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h6 class="m-0 fs-16 fw-semibold text-white"> Notifications </h6>
                                    </div>
                                    <div class="col-auto dropdown-tabs">
                                        <span class="badge bg-light text-body fs-13"> 4 New</span>
                                    </div>
                                </div>
                            </div>

                            <div class="px-2 pt-2">
                                <ul class="nav nav-tabs dropdown-tabs nav-tabs-custom" data-dropdown-tabs="true" id="notificationItemsTab" role="tablist">
                                    <li class="nav-item waves-effect waves-light" role="presentation">
                                        <a class="nav-link active" data-bs-toggle="tab" href="http://localhost:8080/companies#all-noti-tab" role="tab" aria-selected="true">
                                            All (4)
                                        </a>
                                    </li>
                                    <li class="nav-item waves-effect waves-light" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="http://localhost:8080/companies#messages-tab" role="tab" aria-selected="false" tabindex="-1">
                                            Messages
                                        </a>
                                    </li>
                                    <li class="nav-item waves-effect waves-light" role="presentation">
                                        <a class="nav-link" data-bs-toggle="tab" href="http://localhost:8080/companies#alerts-tab" role="tab" aria-selected="false" tabindex="-1">
                                            Alerts
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <div class="tab-content position-relative" id="notificationItemsTabContent">
                            <div class="tab-pane fade show active py-2 ps-2" id="all-noti-tab" role="tabpanel">
                                <div data-simplebar="init" style="max-height: 300px;" class="pe-2"><div class="simplebar-wrapper" style="margin: 0px -8px 0px 0px;"><div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div><div class="simplebar-mask"><div class="simplebar-offset" style="right: 0px; bottom: 0px;"><div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden;"><div class="simplebar-content" style="padding: 0px 8px 0px 0px;">
                                    <div class="text-reset notification-item d-block dropdown-item position-relative">
                                        <div class="d-flex">
                                            <div class="avatar-xs me-3 flex-shrink-0">
                                                <span class="avatar-title bg-info-subtle text-info rounded-circle fs-16">
                                                    <i class="bx bx-badge-check"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-2 lh-base">Your <b>Elite</b> author Graphic
                                                        Optimization <span class="text-secondary">reward</span> is
                                                        ready!
                                                    </h6>
                                                </a>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> Just 30 sec ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="all-notification-check01">
                                                    <label class="form-check-label" for="all-notification-check01"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-reset notification-item d-block dropdown-item position-relative">
                                        <div class="d-flex">
                                            <img src="./header_files/avatar-2.jpg" class="me-3 rounded-circle avatar-xs flex-shrink-0" alt="user-pic">
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-1 fs-13 fw-semibold">Angela Bernier</h6>
                                                </a>
                                                <div class="fs-13 text-muted">
                                                    <p class="mb-1">Answered to your comment on the cash flow forecast's
                                                        graph 🔔.</p>
                                                </div>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 48 min ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="all-notification-check02">
                                                    <label class="form-check-label" for="all-notification-check02"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-reset notification-item d-block dropdown-item position-relative">
                                        <div class="d-flex">
                                            <div class="avatar-xs me-3 flex-shrink-0">
                                                <span class="avatar-title bg-danger-subtle text-danger rounded-circle fs-16">
                                                    <i class="bx bx-message-square-dots"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-2 fs-13 lh-base">You have received <b class="text-success">20</b> new messages in the conversation
                                                    </h6>
                                                </a>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 2 hrs ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="all-notification-check03">
                                                    <label class="form-check-label" for="all-notification-check03"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-reset notification-item d-block dropdown-item position-relative">
                                        <div class="d-flex">
                                            <img src="./header_files/avatar-8.jpg" class="me-3 rounded-circle avatar-xs flex-shrink-0" alt="user-pic">
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-1 fs-13 fw-semibold">Maureen Gibson</h6>
                                                </a>
                                                <div class="fs-13 text-muted">
                                                    <p class="mb-1">We talked about a project on linkedin.</p>
                                                </div>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 4 hrs ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="all-notification-check04">
                                                    <label class="form-check-label" for="all-notification-check04"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="my-3 text-center view-all" style="display: block;">
                                        <button type="button" class="btn btn-soft-success waves-effect waves-light">View
                                            All Notifications <i class="ri-arrow-right-line align-middle"></i></button>
                                    </div>
                                </div></div></div></div><div class="simplebar-placeholder" style="width: 0px; height: 0px;"></div></div><div class="simplebar-track simplebar-horizontal" style="visibility: hidden;"><div class="simplebar-scrollbar" style="width: 0px; display: none;"></div></div><div class="simplebar-track simplebar-vertical" style="visibility: hidden;"><div class="simplebar-scrollbar" style="height: 0px; display: none;"></div></div></div>

                            </div>

                            <div class="tab-pane fade py-2 ps-2" id="messages-tab" role="tabpanel" aria-labelledby="messages-tab">
                                <div data-simplebar="init" style="max-height: 300px;" class="pe-2"><div class="simplebar-wrapper" style="margin: 0px -8px 0px 0px;"><div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div><div class="simplebar-mask"><div class="simplebar-offset" style="right: 0px; bottom: 0px;"><div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden;"><div class="simplebar-content" style="padding: 0px 8px 0px 0px;">
                                    <div class="text-reset notification-item d-block dropdown-item">
                                        <div class="d-flex">
                                            <img src="./header_files/avatar-3.jpg" class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-1 fs-13 fw-semibold">James Lemire</h6>
                                                </a>
                                                <div class="fs-13 text-muted">
                                                    <p class="mb-1">We talked about a project on linkedin.</p>
                                                </div>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 30 min ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="messages-notification-check01">
                                                    <label class="form-check-label" for="messages-notification-check01"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-reset notification-item d-block dropdown-item">
                                        <div class="d-flex">
                                            <img src="./header_files/avatar-2.jpg" class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-1 fs-13 fw-semibold">Angela Bernier</h6>
                                                </a>
                                                <div class="fs-13 text-muted">
                                                    <p class="mb-1">Answered to your comment on the cash flow forecast's
                                                        graph 🔔.</p>
                                                </div>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 2 hrs ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="messages-notification-check02">
                                                    <label class="form-check-label" for="messages-notification-check02"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-reset notification-item d-block dropdown-item">
                                        <div class="d-flex">
                                            <img src="./header_files/avatar-6.jpg" class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-1 fs-13 fw-semibold">Kenneth Brown</h6>
                                                </a>
                                                <div class="fs-13 text-muted">
                                                    <p class="mb-1">Mentionned you in his comment on 📃 invoice #12501.
                                                    </p>
                                                </div>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 10 hrs ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="messages-notification-check03">
                                                    <label class="form-check-label" for="messages-notification-check03"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-reset notification-item d-block dropdown-item">
                                        <div class="d-flex">
                                            <img src="./header_files/avatar-8.jpg" class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                            <div class="flex-grow-1">
                                                <a href="http://localhost:8080/companies#!" class="stretched-link">
                                                    <h6 class="mt-0 mb-1 fs-13 fw-semibold">Maureen Gibson</h6>
                                                </a>
                                                <div class="fs-13 text-muted">
                                                    <p class="mb-1">We talked about a project on linkedin.</p>
                                                </div>
                                                <p class="mb-0 fs-11 fw-medium text-uppercase text-muted">
                                                    <span><i class="mdi mdi-clock-outline"></i> 3 days ago</span>
                                                </p>
                                            </div>
                                            <div class="px-2 fs-15">
                                                <div class="form-check notification-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="messages-notification-check04">
                                                    <label class="form-check-label" for="messages-notification-check04"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="my-3 text-center view-all" style="display: block;">
                                        <button type="button" class="btn btn-soft-success waves-effect waves-light">View
                                            All Messages <i class="ri-arrow-right-line align-middle"></i></button>
                                    </div>
                                </div></div></div></div><div class="simplebar-placeholder" style="width: 0px; height: 0px;"></div></div><div class="simplebar-track simplebar-horizontal" style="visibility: hidden;"><div class="simplebar-scrollbar" style="width: 0px; display: none;"></div></div><div class="simplebar-track simplebar-vertical" style="visibility: hidden;"><div class="simplebar-scrollbar" style="height: 0px; display: none;"></div></div></div>
                            </div>
                            <div class="tab-pane fade p-4" id="alerts-tab" role="tabpanel" aria-labelledby="alerts-tab"><div class="empty-notification-elem">							<div class="w-25 w-sm-50 pt-3 mx-auto">								<img src="./header_files/bell.svg" class="img-fluid" alt="user-pic">							</div>							<div class="text-center pb-5 mt-2">								<h6 class="fs-18 fw-semibold lh-base">Hey! You have no any notifications </h6>							</div>						</div></div>

                            <div class="notification-actions" id="notification-actions">
                                <div class="d-flex text-muted justify-content-center">
                                    Select <div id="select-content" class="text-body fw-semibold px-1">0</div> Result <button type="button" class="btn btn-link link-danger p-0 ms-3" data-bs-toggle="modal" data-bs-target="#removeNotificationModal">Remove</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="dropdown ms-sm-3 header-item topbar-user">
                    <button type="button" class="btn material-shadow-none" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="d-flex align-items-center">
                            <img class="rounded-circle header-profile-user" src="./header_files/avatar-1.jpg" alt="Header Avatar">
                            <span class="text-start ms-xl-2">
                                <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text">Anna Adame</span>
                                <span class="d-none d-xl-block ms-1 fs-12 user-name-sub-text">Founder</span>
                            </span>
                        </span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end">
                        <!-- item-->
                        <h6 class="dropdown-header">Welcome Anna!</h6>
                        <a class="dropdown-item" href="http://localhost:8080/pages-profile.html"><i class="mdi mdi-account-circle text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
                        <a class="dropdown-item" href="http://localhost:8080/apps-chat.html"><i class="mdi mdi-message-text-outline text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Messages</span></a>
                        <a class="dropdown-item" href="http://localhost:8080/apps-tasks-kanban.html"><i class="mdi mdi-calendar-check-outline text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Taskboard</span></a>
                        <a class="dropdown-item" href="http://localhost:8080/pages-faqs.html"><i class="mdi mdi-lifebuoy text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Help</span></a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="http://localhost:8080/pages-profile.html"><i class="mdi mdi-wallet text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Balance : <b>$5971.67</b></span></a>
                        <a class="dropdown-item" href="http://localhost:8080/pages-profile-settings.html"><span class="badge bg-success-subtle text-success mt-1 float-end">New</span><i class="mdi mdi-cog-outline text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Settings</span></a>
                        <a class="dropdown-item" href="http://localhost:8080/auth-lockscreen-basic.html"><i class="mdi mdi-lock text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Lock screen</span></a>
                        <a class="dropdown-item" href="http://localhost:8080/auth-logout-basic.html"><i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Logout</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- removeNotificationModal -->
<div id="removeNotificationModal" class="modal fade zoomIn" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="NotificationModalbtn-close"></button>
            </div>
            <div class="modal-body">
                <div class="mt-2 text-center">
                    <lord-icon src="../../../gsqxdxog.json" trigger="loop" colors="primary:#f7b84b,secondary:#f06548" style="width:100px;height:100px"><template shadowrootmode="open"><div class="body"></div></template></lord-icon>
                    <div class="mt-4 pt-2 fs-15 mx-4 mx-sm-5">
                        <h4>Are you sure ?</h4>
                        <p class="text-muted mx-4 mb-0">Are you sure you want to remove this Notification ?</p>
                    </div>
                </div>
                <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                    <button type="button" class="btn w-sm btn-light" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn w-sm btn-danger" id="delete-notification">Yes, Delete It!</button>
                </div>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
        <!-- ========== App Menu ========== -->
        <div class="app-menu navbar-menu">
            <!-- LOGO -->
            
    
            
            <div id="scrollbar">
                <div class="container-fluid dropdown-custom-right">


                    <div id="two-column-menu">
                    </div>
                    <ul class="navbar-nav" id="navbar-nav">
                        <li class="menu-title"><span data-key="t-menu">Menu</span></li>
                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                                <i class="ri-dashboard-2-line"></i> <span data-key="t-dashboards">Dashboards</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarDashboards">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/dashboard-analytics.html" class="nav-link" data-key="t-analytics"> Analytics </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/dashboard-crm.html" class="nav-link" data-key="t-crm"> CRM </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/index.html" class="nav-link" data-key="t-ecommerce"> Ecommerce </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/dashboard-crypto.html" class="nav-link" data-key="t-crypto"> Crypto </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/dashboard-projects.html" class="nav-link" data-key="t-projects"> Projects </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/dashboard-nft.html" class="nav-link" data-key="t-nft"> NFT</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/dashboard-job.html" class="nav-link" data-key="t-job">Job</a>
                                    </li>
                                </ul>
                            </div>
                        </li> <!-- end Dashboard Menu -->
                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarApps" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarApps">
                                <i class="ri-apps-2-line"></i> <span data-key="t-apps">Apps</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarApps">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarCalendar" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCalendar" data-key="t-calender">
                                            Calendar
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarCalendar">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-calendar.html" class="nav-link" data-key="t-main-calender"> Main Calender </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-calendar-month-grid.html" class="nav-link" data-key="t-month-grid"> Month Grid </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/apps-chat.html" class="nav-link" data-key="t-chat"> Chat </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarEmail" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarEmail" data-key="t-email">
                                            Email
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarEmail">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-mailbox.html" class="nav-link" data-key="t-mailbox"> Mailbox </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/companies#sidebaremailTemplates" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebaremailTemplates" data-key="t-email-templates">
                                                        Email Templates
                                                    </a>
                                                    <div class="collapse menu-dropdown" id="sidebaremailTemplates">
                                                        <ul class="nav nav-sm flex-column">
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-email-basic.html" class="nav-link" data-key="t-basic-action"> Basic Action </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-email-ecommerce.html" class="nav-link" data-key="t-ecommerce-action"> Ecommerce Action </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarEcommerce" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarEcommerce" data-key="t-ecommerce">
                                            Ecommerce
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarEcommerce">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-products.html" class="nav-link" data-key="t-products"> Products </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-product-details.html" class="nav-link" data-key="t-product-Details"> Product Details </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-add-product.html" class="nav-link" data-key="t-create-product"> Create Product </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-orders.html" class="nav-link" data-key="t-orders">
                                                        Orders </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-order-details.html" class="nav-link" data-key="t-order-details"> Order Details </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-customers.html" class="nav-link" data-key="t-customers"> Customers </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-cart.html" class="nav-link" data-key="t-shopping-cart"> Shopping Cart </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-checkout.html" class="nav-link" data-key="t-checkout"> Checkout </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-sellers.html" class="nav-link" data-key="t-sellers">
                                                        Sellers </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-ecommerce-seller-details.html" class="nav-link" data-key="t-sellers-details"> Seller Details </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarProjects" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarProjects" data-key="t-projects">
                                            Projects
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarProjects">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-projects-list.html" class="nav-link" data-key="t-list"> List
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-projects-overview.html" class="nav-link" data-key="t-overview"> Overview </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-projects-create.html" class="nav-link" data-key="t-create-project"> Create Project </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarTasks" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarTasks" data-key="t-tasks"> Tasks
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarTasks">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-tasks-kanban.html" class="nav-link" data-key="t-kanbanboard">
                                                        Kanban Board </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-tasks-list-view.html" class="nav-link" data-key="t-list-view">
                                                        List View </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-tasks-details.html" class="nav-link" data-key="t-task-details"> Task Details </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarCRM" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCRM" data-key="t-crm"> CRM
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarCRM">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crm-contacts.jsp" class="nav-link" data-key="t-contacts">
                                                        Contacts </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${pageContext.request.contextPath}/operadores" class="nav-link" data-key="t-companies"> Operadores </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crm-deals.html" class="nav-link" data-key="t-deals"> Deals
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crm-leads.html" class="nav-link" data-key="t-leads"> Leads
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarCrypto" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCrypto" data-key="t-crypto"> Crypto
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarCrypto">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crypto-transactions.html" class="nav-link" data-key="t-transactions"> Transactions </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crypto-buy-sell.html" class="nav-link" data-key="t-buy-sell">
                                                        Buy &amp; Sell </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crypto-orders.html" class="nav-link" data-key="t-orders">
                                                        Orders </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crypto-wallet.html" class="nav-link" data-key="t-my-wallet">
                                                        My Wallet </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crypto-ico.html" class="nav-link" data-key="t-ico-list"> ICO
                                                        List </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-crypto-kyc.html" class="nav-link" data-key="t-kyc-application"> KYC Application </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarInvoices" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarInvoices" data-key="t-invoices">
                                            Invoices
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarInvoices">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-invoices-list.html" class="nav-link" data-key="t-list-view">
                                                        List View </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-invoices-details.html" class="nav-link" data-key="t-details">
                                                        Details </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-invoices-create.html" class="nav-link" data-key="t-create-invoice"> Create Invoice </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarTickets" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarTickets" data-key="t-supprt-tickets">
                                            Support Tickets
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarTickets">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-tickets-list.html" class="nav-link" data-key="t-list-view">
                                                        List View </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-tickets-details.html" class="nav-link" data-key="t-ticket-details"> Ticket Details </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarnft" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarnft" data-key="t-nft-marketplace">
                                            NFT Marketplace
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarnft">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-marketplace.html" class="nav-link" data-key="t-marketplace"> Marketplace </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-explore.html" class="nav-link" data-key="t-explore-now"> Explore Now </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-auction.html" class="nav-link" data-key="t-live-auction"> Live Auction </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-item-details.html" class="nav-link" data-key="t-item-details"> Item Details </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-collections.html" class="nav-link" data-key="t-collections"> Collections </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-creators.html" class="nav-link" data-key="t-creators"> Creators </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-ranking.html" class="nav-link" data-key="t-ranking"> Ranking </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-wallet.html" class="nav-link" data-key="t-wallet-connect"> Wallet Connect </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-nft-create.html" class="nav-link" data-key="t-create-nft"> Create NFT </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/apps-file-manager.html" class="nav-link"> <span data-key="t-file-manager">File Manager</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/apps-todo.html" class="nav-link"> <span data-key="t-to-do">To Do</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarjobs" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarjobs" data-key="t-jobs"> Jobs</a>
                                        <div class="collapse menu-dropdown" id="sidebarjobs">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-job-statistics.html" class="nav-link" data-key="t-statistics"> Statistics </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/companies#sidebarJoblists" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarJoblists" data-key="t-job-lists">
                                                        Job Lists
                                                    </a>
                                                    <div class="collapse menu-dropdown" id="sidebarJoblists">
                                                        <ul class="nav nav-sm flex-column">
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-job-lists.html" class="nav-link" data-key="t-list"> List
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-job-grid-lists.html" class="nav-link" data-key="t-grid"> Grid </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-job-details.html" class="nav-link" data-key="t-overview"> Overview</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/companies#sidebarCandidatelists" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCandidatelists" data-key="t-candidate-lists">
                                                        Candidate Lists
                                                    </a>
                                                    <div class="collapse menu-dropdown" id="sidebarCandidatelists">
                                                        <ul class="nav nav-sm flex-column">
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-job-candidate-lists.html" class="nav-link" data-key="t-list-view"> List View
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/apps-job-candidate-grid.html" class="nav-link" data-key="t-grid-view"> Grid View</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-job-application.html" class="nav-link" data-key="t-application"> Application </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-job-new.html" class="nav-link" data-key="t-new-job"> New Job </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-job-companies-lists.html" class="nav-link" data-key="t-companies-list"> Companies List </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/apps-job-categories.html" class="nav-link" data-key="t-job-categories"> Job Categories</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/apps-api-key.html" class="nav-link" data-key="t-api-key">API Key</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarLayouts" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLayouts">
                                <i class="ri-layout-3-line"></i> <span data-key="t-layouts">Gestão Estratégica</span> <span class="badge badge-pill bg-danger" data-key="t-hot">Hot</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarLayouts">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/layouts-horizontal.html" target="_blank" class="nav-link" data-key="t-horizontal">Cadeia de Valor</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/layouts-detached.html" target="_blank" class="nav-link" data-key="t-detached">Processos de Negócio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/layouts-two-column.html" target="_blank" class="nav-link" data-key="t-two-column">Riscos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/layouts-vertical-hovered.html" target="_blank" class="nav-link" data-key="t-hovered">Planejamento de Continuidade de Negócio</a>
                                    </li>
                                </ul>
                            </div>
                        </li> <!-- end Dashboard Menu -->

                        <li class="menu-title"><i class="ri-more-fill"></i> <span data-key="t-pages">Pages</span></li>

                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarAuth" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarAuth">
                                <i class="ri-account-circle-line"></i> <span data-key="t-authentication">Gerenciamento de Dados</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarAuth">
                                <ul class="nav nav-sm flex-column">
                                    
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarSignUp" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSignUp" data-key="t-signup"> Cadastros
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarSignUp">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-signup-basic.html" class="nav-link" data-key="t-basic"> Controlador
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${pageContext.request.contextPath}/operadores" class="nav-link" data-key="t-cover"> Operador
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-signup-cover.html" class="nav-link" data-key="t-cover"> Encarregado (DPO)
                                                    </a>
                                                </li>


                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarSignIn" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSignIn" data-key="t-signin"> Inventário de Dados
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarSignIn">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-signin-basic.html" class="nav-link" data-key="t-basic"> Basic
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-signin-cover.html" class="nav-link" data-key="t-cover"> Cover
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarResetPass" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarResetPass" data-key="t-password-reset">
                                            Password Reset
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarResetPass">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-pass-reset-basic.html" class="nav-link" data-key="t-basic">
                                                        Basic </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-pass-reset-cover.html" class="nav-link" data-key="t-cover">
                                                        Cover </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarchangePass" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarchangePass" data-key="t-password-create">
                                            Password Create
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarchangePass">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-pass-change-basic.html" class="nav-link" data-key="t-basic">
                                                        Basic </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-pass-change-cover.html" class="nav-link" data-key="t-cover">
                                                        Cover </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarLockScreen" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLockScreen" data-key="t-lock-screen">
                                            Lock Screen
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarLockScreen">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-lockscreen-basic.html" class="nav-link" data-key="t-basic">
                                                        Basic </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-lockscreen-cover.html" class="nav-link" data-key="t-cover">
                                                        Cover </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarLogout" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLogout" data-key="t-logout"> Logout
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarLogout">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-logout-basic.html" class="nav-link" data-key="t-basic"> Basic
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-logout-cover.html" class="nav-link" data-key="t-cover"> Cover
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarSuccessMsg" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSuccessMsg" data-key="t-success-message"> Success Message
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarSuccessMsg">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-success-msg-basic.html" class="nav-link" data-key="t-basic">
                                                        Basic </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-success-msg-cover.html" class="nav-link" data-key="t-cover">
                                                        Cover </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarTwoStep" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarTwoStep" data-key="t-two-step-verification"> Two Step Verification
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarTwoStep">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-twostep-basic.html" class="nav-link" data-key="t-basic"> Basic
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-twostep-cover.html" class="nav-link" data-key="t-cover"> Cover
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarErrors" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarErrors" data-key="t-errors"> Errors
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarErrors">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-404-basic.html" class="nav-link" data-key="t-404-basic"> 404
                                                        Basic </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-404-cover.html" class="nav-link" data-key="t-404-cover"> 404
                                                        Cover </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-404-alt.html" class="nav-link" data-key="t-404-alt"> 404 Alt
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-500.html" class="nav-link" data-key="t-500"> 500 </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/auth-offline.html" class="nav-link" data-key="t-offline-page"> Offline Page </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarPages" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarPages">
                                <i class="ri-pages-line"></i> <span data-key="t-pages">Pages</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarPages">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-starter.html" class="nav-link" data-key="t-starter"> Starter </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarProfile" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarProfile" data-key="t-profile"> Profile
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarProfile">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/pages-profile.html" class="nav-link" data-key="t-simple-page">
                                                        Simple Page </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/pages-profile-settings.html" class="nav-link" data-key="t-settings"> Settings </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-team.html" class="nav-link" data-key="t-team"> Team </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-timeline.html" class="nav-link" data-key="t-timeline"> Timeline </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-faqs.html" class="nav-link" data-key="t-faqs"> FAQs </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-pricing.html" class="nav-link" data-key="t-pricing"> Pricing </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-gallery.html" class="nav-link" data-key="t-gallery"> Gallery </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-maintenance.html" class="nav-link" data-key="t-maintenance"> Maintenance
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-coming-soon.html" class="nav-link" data-key="t-coming-soon"> Coming Soon
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-sitemap.html" class="nav-link" data-key="t-sitemap"> Sitemap </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-search-results.html" class="nav-link" data-key="t-search-results"> Search Results </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-privacy-policy.html" class="nav-link" data-key="t-privacy-policy">Privacy Policy</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/pages-term-conditions.html" class="nav-link" data-key="t-term-conditions">Term &amp; Conditions</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarLanding" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLanding">
                                <i class="ri-rocket-line"></i> <span data-key="t-landing">Landing</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarLanding">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/landing.html" class="nav-link" data-key="t-one-page"> One Page </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/nft-landing.html" class="nav-link" data-key="t-nft-landing"> NFT Landing </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/job-landing.html" class="nav-link" data-key="t-job">Job</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="menu-title"><i class="ri-more-fill"></i> <span data-key="t-components">Components</span></li>

                        <li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarUI" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarUI">
                                <i class="ri-pencil-ruler-2-line"></i> <span data-key="t-base-ui">Base UI</span>
                            </a>
                            <div class="collapse menu-dropdown mega-dropdown-menu dropdown-custom-right" id="sidebarUI">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <ul class="nav nav-sm flex-column">
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-alerts.html" class="nav-link" data-key="t-alerts">Alerts</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-badges.html" class="nav-link" data-key="t-badges">Badges</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-buttons.html" class="nav-link" data-key="t-buttons">Buttons</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-colors.html" class="nav-link" data-key="t-colors">Colors</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-cards.html" class="nav-link" data-key="t-cards">Cards</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-carousel.html" class="nav-link" data-key="t-carousel">Carousel</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-dropdowns.html" class="nav-link" data-key="t-dropdowns">Dropdowns</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-grid.html" class="nav-link" data-key="t-grid">Grid</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4">
                                        <ul class="nav nav-sm flex-column">
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-images.html" class="nav-link" data-key="t-images">Images</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-tabs.html" class="nav-link" data-key="t-tabs">Tabs</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-accordions.html" class="nav-link" data-key="t-accordion-collapse">Accordion &amp; Collapse</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-modals.html" class="nav-link" data-key="t-modals">Modals</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-offcanvas.html" class="nav-link" data-key="t-offcanvas">Offcanvas</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-placeholders.html" class="nav-link" data-key="t-placeholders">Placeholders</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-progress.html" class="nav-link" data-key="t-progress">Progress</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-notifications.html" class="nav-link" data-key="t-notifications">Notifications</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4">
                                        <ul class="nav nav-sm flex-column">
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-media.html" class="nav-link" data-key="t-media-object">Media
                                                    object</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-embed-video.html" class="nav-link" data-key="t-embed-video">Embed
                                                    Video</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-typography.html" class="nav-link" data-key="t-typography">Typography</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-lists.html" class="nav-link" data-key="t-lists">Lists</a>
                                            </li>
                                            <li class="nav-item">
        										<a href="http://localhost:8080/ui-links.html" class="nav-link"><span data-key="t-links">Links</span> <span class="badge badge-pill bg-success" data-key="t-new">New</span></a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-general.html" class="nav-link" data-key="t-general">General</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-ribbons.html" class="nav-link" data-key="t-ribbons">Ribbons</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="http://localhost:8080/ui-utilities.html" class="nav-link" data-key="t-utilities">Utilities</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li><li class="nav-item">						<a class="nav-link" href="http://localhost:8080/companies#sidebarMore" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarMore">							<i class="ri-briefcase-2-line"></i> <span data-key="t-more">More</span>						</a>						<div class="collapse menu-dropdown dropdown-custom-right" id="sidebarMore"><ul class="nav nav-sm flex-column"><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarAdvanceUI" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarAdvanceUI">
                                <i class="ri-stack-line"></i> <span data-key="t-advance-ui">Advance UI</span>
                            </a>
                            <div class="collapse menu-dropdown dropdown-custom-right" id="sidebarAdvanceUI">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-sweetalerts.html" class="nav-link" data-key="t-sweet-alerts">Sweet
                                            Alerts</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-nestable.html" class="nav-link" data-key="t-nestable-list">Nestable
                                            List</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-scrollbar.html" class="nav-link" data-key="t-scrollbar">Scrollbar</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-animation.html" class="nav-link" data-key="t-animation">Animation</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-tour.html" class="nav-link" data-key="t-tour">Tour</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-swiper.html" class="nav-link" data-key="t-swiper-slider">Swiper
                                            Slider</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-ratings.html" class="nav-link" data-key="t-ratings">Ratings</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-highlight.html" class="nav-link" data-key="t-highlight">Highlight</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/advance-ui-scrollspy.html" class="nav-link" data-key="t-scrollSpy">ScrollSpy</a>
                                    </li>
                                </ul>
                            </div>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/widgets.html">
                                <i class="ri-honour-line"></i> <span data-key="t-widgets">Widgets</span>
                            </a>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarForms" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarForms">
                                <i class="ri-file-list-3-line"></i> <span data-key="t-forms">Forms</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarForms">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-elements.html" class="nav-link" data-key="t-basic-elements">Basic
                                            Elements</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-select.html" class="nav-link" data-key="t-form-select"> Form Select </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-checkboxs-radios.html" class="nav-link" data-key="t-checkboxs-radios">Checkboxs &amp; Radios</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-pickers.html" class="nav-link" data-key="t-pickers"> Pickers </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-masks.html" class="nav-link" data-key="t-input-masks">Input Masks</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-advanced.html" class="nav-link" data-key="t-advanced">Advanced</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-range-sliders.html" class="nav-link" data-key="t-range-slider"> Range
                                            Slider </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-validation.html" class="nav-link" data-key="t-validation">Validation</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-wizard.html" class="nav-link" data-key="t-wizard">Wizard</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-editors.html" class="nav-link" data-key="t-editors">Editors</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-file-uploads.html" class="nav-link" data-key="t-file-uploads">File
                                            Uploads</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-layouts.html" class="nav-link" data-key="t-form-layouts">Form Layouts</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/forms-select2.html" class="nav-link" data-key="t-select2">Select2</a>
                                    </li>
                                </ul>
                            </div>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarTables" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarTables">
                                <i class="ri-layout-grid-line"></i> <span data-key="t-tables">Tables</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarTables">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/tables-basic.html" class="nav-link" data-key="t-basic-tables">Basic Tables</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/tables-gridjs.html" class="nav-link" data-key="t-grid-js">Grid Js</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/tables-listjs.html" class="nav-link" data-key="t-list-js">List Js</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/tables-datatables.html" class="nav-link" data-key="t-datatables">Datatables</a>
                                    </li>
                                </ul>
                            </div>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarCharts" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCharts">
                                <i class="ri-pie-chart-line"></i> <span data-key="t-charts">Charts</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarCharts">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarApexcharts" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarApexcharts" data-key="t-apexcharts">
                                            Apexcharts
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarApexcharts">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-line.html" class="nav-link" data-key="t-line"> Line
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-area.html" class="nav-link" data-key="t-area"> Area
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-column.html" class="nav-link" data-key="t-column">
                                                        Column </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-bar.html" class="nav-link" data-key="t-bar"> Bar </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-mixed.html" class="nav-link" data-key="t-mixed"> Mixed
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-timeline.html" class="nav-link" data-key="t-timeline">
                                                        Timeline </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-range-area.html" class="nav-link"><span data-key="t-range-area">Range Area</span> <span class="badge badge-pill bg-success" data-key="t-new">New</span></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-funnel.html" class="nav-link"><span data-key="t-funnel">Funnel</span> <span class="badge badge-pill bg-success" data-key="t-new">New</span></a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-candlestick.html" class="nav-link" data-key="t-candlstick"> Candlstick </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-boxplot.html" class="nav-link" data-key="t-boxplot">
                                                        Boxplot </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-bubble.html" class="nav-link" data-key="t-bubble">
                                                        Bubble </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-scatter.html" class="nav-link" data-key="t-scatter">
                                                        Scatter </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-heatmap.html" class="nav-link" data-key="t-heatmap">
                                                        Heatmap </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-treemap.html" class="nav-link" data-key="t-treemap">
                                                        Treemap </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-pie.html" class="nav-link" data-key="t-pie"> Pie </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-radialbar.html" class="nav-link" data-key="t-radialbar"> Radialbar </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-radar.html" class="nav-link" data-key="t-radar"> Radar
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/charts-apex-polar.html" class="nav-link" data-key="t-polar-area">
                                                        Polar Area </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/charts-chartjs.html" class="nav-link" data-key="t-chartjs"> Chartjs </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/charts-echarts.html" class="nav-link" data-key="t-echarts"> Echarts </a>
                                    </li>
                                </ul>
                            </div>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarIcons" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarIcons">
                                <i class="ri-compasses-2-line"></i> <span data-key="t-icons">Icons</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarIcons">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/icons-remix.html" class="nav-link"><span data-key="t-remix">Remix</span> <span class="badge badge-pill bg-info">v3.6</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/icons-boxicons.html" class="nav-link"><span data-key="t-boxicons">Boxicons</span> <span class="badge badge-pill bg-info">v2.1.4</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/icons-materialdesign.html" class="nav-link"><span data-key="t-material-design">Material Design</span> <span class="badge badge-pill bg-info">v7.2.96</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/icons-lineawesome.html" class="nav-link" data-key="t-line-awesome">Line Awesome</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/icons-feather.html" class="nav-link"><span data-key="t-feather">Feather</span> <span class="badge badge-pill bg-info">v4.29.1</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/icons-crypto.html" class="nav-link"> <span data-key="t-crypto-svg">Crypto SVG</span></a>
                                    </li>
                                </ul>
                            </div>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarMaps" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarMaps">
                                <i class="ri-map-pin-line"></i> <span data-key="t-maps">Maps</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarMaps">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/maps-google.html" class="nav-link" data-key="t-google">
                                            Google
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/maps-vector.html" class="nav-link" data-key="t-vector">
                                            Vector
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/maps-leaflet.html" class="nav-link" data-key="t-leaflet">
                                            Leaflet
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li><li class="nav-item">
                            <a class="nav-link menu-link" href="http://localhost:8080/companies#sidebarMultilevel" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarMultilevel">
                                <i class="ri-share-line"></i> <span data-key="t-multi-level">Multi Level</span>
                            </a>
                            <div class="collapse menu-dropdown" id="sidebarMultilevel">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#" class="nav-link" data-key="t-level-1.1"> Level 1.1 </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="http://localhost:8080/companies#sidebarAccount" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarAccount" data-key="t-level-1.2"> Level
                                            1.2
                                        </a>
                                        <div class="collapse menu-dropdown" id="sidebarAccount">
                                            <ul class="nav nav-sm flex-column">
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/companies#" class="nav-link" data-key="t-level-2.1"> Level 2.1 </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="http://localhost:8080/companies#sidebarCrm" class="nav-link" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarCrm" data-key="t-level-2.2"> Level 2.2
                                                    </a>
                                                    <div class="collapse menu-dropdown" id="sidebarCrm">
                                                        <ul class="nav nav-sm flex-column">
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/companies#" class="nav-link" data-key="t-level-3.1"> Level 3.1
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="http://localhost:8080/companies#" class="nav-link" data-key="t-level-3.2"> Level 3.2
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li></ul></div>					
                    </li>

                        

                        

                        

                        

                        

                        

                        

                        

                    </ul>
                </div>
                <!-- Sidebar -->
            </div>

            <div class="sidebar-background"></div>
        </div>
    </div>
    <!-- JAVASCRIPT -->
    <script src="./header_files/bootstrap.bundle.min.js.transferir"></script>
    <script src="./header_files/simplebar.min.js.transferir"></script>
    <script src="./header_files/waves.min.js.transferir"></script>
    <script src="./header_files/feather.min.js.transferir"></script>
    <script src="./header_files/lord-icon-2.1.0.js.transferir"></script>
    <script src="./header_files/plugins.js.transferir"></script><script type="text/javascript" src="./header_files/toastify-js"></script>
<script type="text/javascript" src="./header_files/f.txt"></script>
<script type="text/javascript" src="./header_files/f(1).txt"></script>


    <!-- list.js min js -->
    <script src="./header_files/list.min.js.transferir"></script>
    <script src="./header_files/list.pagination.min.js.transferir"></script>

    <!-- Sweet Alerts js -->
    <script src="./header_files/sweetalert2.min.js.transferir"></script>

    <script src="./header_files/crm-companies.init.js.transferir"></script>

    <!-- App js -->
    <script src="./header_files/app.js.transferir"></script>


</body></html>