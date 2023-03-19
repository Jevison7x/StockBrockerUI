<%--
    Document   : payment-modal
    Created on : Mar 13, 2023, 5:56:01 AM
    Author     : Praise
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<div class="modal fade" id="payment-modal-form" tabindex="-1" role="dialog" aria-labelledby="modal-form" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body p-0">
                <div class="card bg-secondary shadow border-0 mb-0">
                    <div class="card-body px-lg-5 py-lg-5">
                        <form name="final-form" id="payment-form" action="pay-now">
                            <div class="form-group mb-3">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" id="name-on-card" placeholder="Name on Card" type="text" required/>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" id="card-number" placeholder="Card Number" type="number" required/>
                                </div>
                                <label style="margin-top: 15px;"> Expiry Date: </label>
                                <div class="form-group">
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                            </div>
                                            <input class="form-control" id="expiry-date" type="month" required/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                        </div>
                                        <input class="form-control" id="cvv-code" placeholder="CVV" type="number" max="999" required/>
                                    </div>
                                </div>
                                <div class="row" id="payment-modal-price">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="text" class="form-control" readonly id="final-payment-currency" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <input type="text" class="form-control" readonly id="final-total-amount" required/>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div>
                                    <input type="hidden" id="company-symbol-payment"/>
                                    <input type="hidden" id="number-of-shares-payment"/>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Cancel</button>
                                        </div>
                                        <div class="col-md-6">
                                            <button type="submit" class="btn btn-primary pull-right" id="pay-now-btn">Pay Now</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
