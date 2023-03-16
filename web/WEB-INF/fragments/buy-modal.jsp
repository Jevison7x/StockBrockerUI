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
                    <h3>Company Name: Apple</h3>
                    <img src="./images/apple.png" style="width: 30px">
                </div>

                <div id="number-of-shares-selector">
                    <div class="row">
                        <div class="col-md-7">
                            <h5 class="select-shares">Select Number of Shares:</h5>
                        </div>
                        <div class="col-md-5">
                            <input type="number" class="form-control share-selector"/>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row" id="price-per-share">
                    <div class="col-md-8">
                        <label>Price per share: </label>
                    </div>
                    <div class="col-md-4">
                        <label>$35.6 </label>
                    </div>
                </div>

                <!--Footer-->
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" id="pay-now" data-toggle="modal" data-target="#payment-modal-form">Pay Now</button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="payment.jsp"/>
    <!-- Modal: modalCart -->