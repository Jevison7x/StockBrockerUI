<%--
    Document   : Login
    Created on : Mar 12, 2023, 6:41:00 PM
    Author     : Praise
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <jsp:include page="WEB-INF/fragments/head-codes.jsp"/>
        <style>
            .account-success {
                color: greenyellow;
                text-align: center;
            }
        </style>
    </head>
    <body class="index-page">
        <!-- Navbar -->
        <jsp:include page="WEB-INF/fragments/nav-bar.jsp"/>
        <!-- End Navbar -->
        <div class="wrapper">
            <section class="section section-shaped section-lg">
                <div class="shape shape-style-1 bg-gradient-default">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <c:if test="${param.success ne null}">
                    <h2 class="account-success">Account Created Successfully!</h2>
                </c:if>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card bg-secondary shadow border-0">
                                <div class="card-body px-lg-5 py-lg-5">
                                    <div class="text-center text-muted mb-4">
                                        <h2 style="font-size: 20px">Sign in here</h2>
                                    </div>
                                    <form id="login-form" action="" method="post">
                                        <div class="form-group mb-3">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                                </div>
                                                <input id="username" class="form-control" placeholder="Username" type="text" required>
                                            </div>
                                        </div>
                                        <div class="form-group focused">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                                </div>
                                                <input id="password" class="form-control" placeholder="Password" type="password" required>
                                            </div>
                                        </div>
                                        <div class="custom-control custom-control-alternative custom-checkbox">
                                            <input class="custom-control-input" id="customCheckLogin" type="checkbox">
                                            <label class="custom-control-label" for="customCheckLogin"><span>Remember me</span></label>
                                        </div>
                                        <div>
                                            Don't have an account? <a href="./register">Register Here</a>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary my-4">Sign in</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <jsp:include page="WEB-INF/fragments/footer.jsp"/>
        </div>
        <!--   Core JS Files   -->
        <jsp:include page="WEB-INF/fragments/scripts.jsp"/>
        <script src="./js/login.js"></script>
    </body>
</html>