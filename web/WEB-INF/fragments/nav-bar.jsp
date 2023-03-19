<%--
    Document   : nav-bar
    Created on : Mar 11, 2023, 11:26:35 PM
    Author     : Praise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="navbar-main" class="navbar navbar-main navbar-expand-lg bg-white navbar-light position-sticky top-0 shadow py-2">
    <div class="container">
        <a class="navbar-brand mr-lg-5" href="/">
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
                    <a href="/profile" class="nav-link" data-toggle="dropdown" href="#" role="button">
                        <i class="ni ni-collection d-lg-none"></i>
                        <span class="nav-link-inner--text">Account</span>
                    </a>
                    <div id="no-user-menu" class="dropdown-menu">
                        <a href="register" class="dropdown-item">Register</a>
                        <a href="login" class="dropdown-item">Login</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a href="/logout" class="nav-link logout-link" role="button">
                        <i class="ni ni-collection d-lg-none"></i>
                        <span class="nav-link-inner--text">Logout</span>
                    </a>
                </li>
            </ul>
            <ul class="navbar-nav align-items-lg-center ml-lg-auto">
                <li class="nav-item">
                    <a class="btn btn-outline-primary" href="/">
                        <span class="nav-link-inner--text">Buy Stocks</span>
                    </a>
                </li>
                <li class="nav-item d-none d-lg-block">
                    <a  href="/profile" class="btn btn-primary btn-icon">
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
