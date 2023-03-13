<%--
    Document   : register
    Created on : Mar 12, 2023, 6:14:27 PM
    Author     : KUFRE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <jsp:include page="WEB-INF/fragments/head-codes.jsp"/>
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
                <div class="container pt-lg-7">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card bg-secondary shadow border-0">
                                <div class="card-body px-lg-5 py-lg-5">
                                    <div class="text-center text-muted mb-4">
                                        <h2 style="font-size: 20px"> Create your Account</h2>
                                    </div>
                                    <form role="form">
                                        <div class="form-group">
                                            <div class="input-group input-group-alternative mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="First Name" type="text">
                                            </div>
                                            <div>
                                                <input class="form-control" placeholder="Last Name" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group input-group-alternative mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Email" type="email">
                                            </div>
                                        </div>
                                        <div class="form-group focused">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Password" type="password">
                                            </div>
                                        </div>

                                        <div class="row my-4">
                                            <div class="col-12">
                                                <div class="custom-control custom-control-alternative custom-checkbox">
                                                    <input class="custom-control-input" id="customCheckRegister" type="checkbox">
                                                    <label class="custom-control-label" for="customCheckRegister"><span>I agree with the <a href="#">Privacy Policy</a></span></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="button" class="btn btn-primary mt-4">Create account</button>
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
    </body>
</html>