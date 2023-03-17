<%--
    Document   : buy-modal
    Created on : Mar 12, 2023, 8:43:19 PM
    Author     : KUFRE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!-- Modal -->
<!-- Button trigger modal-->
<!-- Modal: modalCart -->
<div class="modal fade" id="buy-stocks-modal" tabindex="-1" role="dialog" aria-labelledby="buy-stocks-modal"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Your cart</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <!--Body-->
            <div class="modal-body">

                <div class="text-center text-muted mb-4" style="padding-left: 30px; padding-right: 30px">
                    <h3>Company Symbol: </h3>
                    <img src="./images/apple.png" style="width: 30px">
                </div>
                <form id="buy-stock">
                    <div id="number-of-shares-selector" class="form-group">
                        <div class="row">
                            <div class="col-md-7">
                                <label for="paymentAmount" class="select-shares">Select Payment Amount:</label>
                                <input type="number" class="form-control share-selector" id="paymentAmount"/>
                            </div>
                            <div class="col-md-5">
                                <input id="companySymbol" hidden=""/>
                            </div>
                            <div class="col-md-12">
                                <label for="currency-selector" class="select-shares">Select Payment Currency:</label>
                                <select id="currency-selector" class="form-control"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row pt-2" id="price-per-share">
                        <div class="col-md-12">
                            <label for="noOfShares" class="select-shares">Number of Shares:</label>
                            <input type="number" class="form-control share-selector" id="noOfShares" disabled=""/>
                        </div>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary" id="pay-now">Pay Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="payment.jsp"/>
    <!-- Modal: modalCart -->