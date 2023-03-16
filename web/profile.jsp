<%--
    Document   : profile
    Created on : Mar 14, 2023, 5:25:38 AM
    Author     : jevis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

        <meta charset="utf-8" />
        <jsp:include page="WEB-INF/fragments/head-codes.jsp"/>

    <body class="index-page">
        <!-- Navbar -->
        <jsp:include page="WEB-INF/fragments/nav-bar.jsp"/>
        <!-- End Navbar -->
        <div class="col-12">
            <div class="my-5">
                <h3>My Profile</h3><hr>

                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <h4 class="mb-4 mt-0">Contact detail</h4>
                                <div class="col-md-6">
                                    <label class="form-label">First Name *</label>
                                    <input type="text" class="form-control" placeholder="" aria-label="First name" value="Scaralet">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Last Name *</label>
                                    <input type="text" class="form-control" placeholder="" aria-label="Last name" value="Doe">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Email *</label>
                                    <input type="email" class="form-control" id="inputEmail4" value="example@homerealty.com">
                                </div> 
                                </div>
                        </div>
                    </div>
                </div>
            </div>




                    <div class="wrapper">
                        <jsp:include page="WEB-INF/fragments/footer.jsp"/>
                    </div>
                    <!--   Core JS Files   -->
                    <jsp:include page="WEB-INF/fragments/scripts.jsp"/>


                    </body>
                    </html>
