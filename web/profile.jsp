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
                                    <form role="form">
                                        <div class="form-group mb-3">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="First Name"  disabled=""/>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Last Name"  disabled=""/>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="User Name"  disabled=""/>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <div class="input-group input-group-alternative">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Email"  disabled=""/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <h4>Stocks Owned</h4>
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="text-center">Company Name</th>
                                <th>Symbol</th>
                                <th>Number Of Shares</th>
                                <th>Transaction</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Amazon</td>
                                <td>AMA</td>
                                <td>23000</td>
                                <td class="td-actions text-right">
                                    <button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#buy-stocks-modal">
                                        Sell Now
                                    </button>
                                </td>
                            </tr>
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
        <jsp:include page="WEB-INF/fragments/buy-modal.jsp"/>
    </body>
</html>








