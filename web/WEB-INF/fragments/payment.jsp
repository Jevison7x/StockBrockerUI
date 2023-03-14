<%--
    Document   : payment
    Created on : Mar 13, 2023, 5:56:01 AM
    Author     : KUFRE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>


<div class="modal fade" id="payment-modal-form" tabindex="-1" role="dialog" aria-labelledby="modal-form" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body p-0">
                <div class="card bg-secondary shadow border-0 mb-0">
                    <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                            <h3>Please fill your card details</h3>
                        </div>
                        <form role="form">
                            <div class="form-group mb-3">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="Name on Card" type="text" required/>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="Card Number" type="number" required/>
                                </div>
                                <label style="margin-top: 15px;"> Expiry Date: </label>
                                <div class="form-group">
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                            </div>
                                            <input class="form-control" type="month" required/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                        </div>
                                        <input class="form-control" placeholder="CVV" type="number" max="999" required/>
                                    </div>
                                </div>


                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary my-4">Pay Now</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
