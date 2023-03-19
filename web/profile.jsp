<%--
    Document   : profile
    Created on : Mar 14, 2023, 5:25:38 AM
    Author     : Praise
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="companyStock" class="com.bizblock.library.company.CompanyStock"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Profile</title>
        <jsp:include page="WEB-INF/fragments/head-codes.jsp"/>
    </head>
    <body class="index-page">
        <!-- Navbar -->
        <jsp:include page="WEB-INF/fragments/nav-bar.jsp"/>
        <div class="p-6">
            <div class="row">
                <div class="col-6">
                    <div class="modal-content">
                        <div class="modal-body p-0">
                            <div class="card bg-secondary shadow border-0 mb-0">
                                <div class="card-body px-lg-5 py-lg-5">
                                    <div class="text-center">
                                        <h5 >User Details:</h5>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>First Name: <span id="firstname"></span></label>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>Last Name: <span id="lastname"></span></label>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>Username: <span id="username"></span></label>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label >Email: <span id="email"></span></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <h4>Stocks Owned</h4>
                    <table class="table" id="user-stock-table">
                        <thead>
                            <tr>
                                <th class="text-center">Company Name</th>
                                <th>Symbol</th>
                                <th>Number Of Shares</th>
                                <th>Transaction</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <jsp:include page="WEB-INF/fragments/footer.jsp"/>
        </div>
        <!--   Core JS Files   -->
        <jsp:include page="WEB-INF/fragments/scripts.jsp"/>
        <script src="./js/profile.js"></script>
        <jsp:include page="WEB-INF/fragments/sell-modal.jsp"/>
    </body>
</html>








