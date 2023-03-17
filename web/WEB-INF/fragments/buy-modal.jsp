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
                    <h3 id="modal-heading">Buy </h3>
                    <img id="modal-logo" src="" style="width: 100px">
                </div>
                <form id="buy-stock">
                    <div id="number-of-shares-selector" class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="noOfShares" class="select-shares">Select number of shares:</label>
                                <input type="number" class="form-control share-selector" id="noOfShares" value="1"/>
                            </div>
                            <div class="col-md-6">
                                <label for="modal-share-price" class="select-shares">Share Price:</label>
                                <input type="text" class="form-control" id="modal-share-price" value="" readonly/>
                                <input id="modal-company-symbol" type="hidden" value=""/>
                            </div>
                            <div class="col-md-6">
                                <label for="currency-selector" class="select-shares">Select Payment Currency:</label>
                                <select id="currency-selector" class="form-control"></select>
                            </div>
                            <div class="col-md-6">
                                <label for="company-currency" class="select-shares">Company Currency:</label>
                                <input type="text" class="form-control" id="modal-currency-symbol" value="" readonly/>
                            </div>
                        </div>
                    </div>
                    <div class="row pt-2" id="price-per-share">
                        <div class="col-md-12">
                            <label for="paymentAmount" class="select-shares">Total Payment Amount:</label>
                            <input type="number" class="form-control share-selector" id="paymentAmount" readonly/>
                        </div>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        <button class="btn btn-success" id="pay-now">Pay Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="payment.jsp"/>
    <!-- Modal: modalCart -->