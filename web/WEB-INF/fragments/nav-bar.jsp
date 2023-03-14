<%--
    Document   : nav-bar
    Created on : Mar 11, 2023, 11:26:35 PM
    Author     : jevis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="navbar-main" class="navbar navbar-main navbar-expand-lg bg-white navbar-light position-sticky top-0 shadow py-2">
    <div class="container">
        <a class="navbar-brand mr-lg-5" href="./index.html">
            <img src="./images/logo.png" style="width: 100px; height: 100px"/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
            <div class="navbar-collapse-header">
                <div class="row">
                    <div class="col-6 collapse-brand">
                        <a href="./index.html">
                            <img src="./assets/img/brand/blue.png">
                        </a>
                    </div>
                    <div class="col-6 collapse-close">
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
            <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                        <i class="ni ni-ui-04 d-lg-none"></i>
                        <span class="nav-link-inner--text">Top Stocks</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-xl">
                        <div class="dropdown-menu-inner">
                            <a href="https://demos.creative-tim.com/argon-design-system/docs/getting-started/overview.html" class="media d-flex align-items-center">
                                <div class="icon icon-shape bg-gradient-primary rounded-circle text-white">
                                    <i class="ni ni-spaceship"></i>
                                </div>
                                <div class="media-body ml-3">
                                    <h6 class="heading text-primary mb-md-1">Foreign Stocks</h6>
                                    <p class="description d-none d-md-inline-block mb-0">Buy Stock from NYSE and pay in Naira</p>
                                </div>
                            </a>
                            <a href="https://demos.creative-tim.com/argon-design-system/docs/foundation/colors.html" class="media d-flex align-items-center">
                                <div class="icon icon-shape bg-gradient-success rounded-circle text-white">
                                    <i class="ni ni-palette"></i>
                                </div>
                                <div class="media-body ml-3">
                                    <h6 class="heading text-primary mb-md-1">Local Stocks</h6>
                                    <p class="description d-none d-md-inline-block mb-0">Buy top Nigerian stocks</p>
                                </div>
                            </a>
                            <a href="https://demos.creative-tim.com/argon-design-system/docs/components/alerts.html" class="media d-flex align-items-center">
                                <div class="icon icon-shape bg-gradient-warning rounded-circle text-white">
                                    <i class="ni ni-ui-04"></i>
                                </div>
                                <div class="media-body ml-3">
                                    <h5 class="heading text-warning mb-md-1">Sell your Stocks</h5>
                                    <p class="description d-none d-md-inline-block mb-0">Sell your stocks and cash out in Naira or Dollars</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                        <i class="ni ni-collection d-lg-none"></i>
                        <span class="nav-link-inner--text">Account</span>
                    </a>
                    <div id="no-user-menu" class="dropdown-menu">
                        <a href="register" class="dropdown-item">Register</a>
                        <a href="login" class="dropdown-item">Login</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav align-items-lg-center ml-lg-auto">
                <li class="nav-item">
                    <a class="btn btn-outline-primary" href="https://www.creative-tim.com/builder/argon" target="_blank">
                        <span class="nav-link-inner--text">Buy Stocks</span>
                    </a>
                </li>
                <li class="nav-item d-none d-lg-block">
                    <a href="https://www.creative-tim.com/product/argon-design-system-pro?ref=ads-upgrade-pro" target="_blank" class="btn btn-primary btn-icon">
                        <span class="btn-inner--icon">
                            <i class="fa fa-shopping-cart"></i>
                        </span>
                        <span class="nav-link-inner--text">Manage Portfolio</span>
                    </a>
                </li>
                <li class="nav-item">
                    <div class="form-group search-form-group">
                        <div class="input-group input-group-alternative">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="ni ni-zoom-split-in"></i></span>
                            </div>
                            <input class="form-control search-tf" placeholder="Search stocks..." type="text">
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
