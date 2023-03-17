
$(document).ready(function(){
    if(localStorage.getItem("user") !== null){
        $('#no-user-menu').remove();
    }

    let table = new DataTable('#stockTable');

    $('#stockTable').on('click', '.buy', function(e){
        if(localStorage.getItem("user") === null){
            location.href = './login';
        }else
        {
            var companySymbol = $(this).attr('data-order-id');
            var companyName = $(this).attr('data-order-company-name');
            var logo = $(this).parents('tr').find('.logo-column').find('img').attr('src');
            var currencyName = $(this).attr('data-order-currency');
            var sharePrice = $(this).attr('data-order-share-price');
            $('#modal-logo').attr('src', logo);
            $('#modal-heading').html('Buy ' + companyName + ' stocks');
            $('#modal-company-symbol').val(companySymbol);
            $('#modal-currency-symbol').val(currencyName);
            $('#modal-share-price').val(sharePrice);
            $('#buy-stocks-modal').modal('show');
        }
    });

    $('#sell-modal').click(function(e){
        $('#sell-stocks-modal').modal('show');
        var companySymbol = $(this).attr('data-order-id');
        $('#companySymbol').val(companySymbol);
        e.preventDefault();
        if(localStorage.getItem("user") !== null){
            var user = localStorage.getItem("user");
            var usrObj = JSON.parse(user);
            var username = usrObj.userName;
            var companySymbol = $('#companySymbol').val().trim();
            var noOfShares = $('#noOfShares').val().trim();
            $('#sell').submit(function(e){
                $('#sell-stocks-modal').modal('hide');
                e.preventDefault();
                $.ajax({
                    type: "POST",
                    url: 'user-service/sell-stock',
                    data: {
                        userName: username,
                        companySymbol: companySymbol,
                        noOfShares: noOfShares
                    },
                    success: function(data)
                    {
                        if(data.status === 'success'){
                            Swal.fire({
                                icon: 'Success',
                                title: 'Successfuly Sold',
                                text: 'You have successfully Sold:' + noOfShares + 'shares from' + companySymbol
                            });
                        }else{
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: data.message
                            });
                        }
                    },
                    error: function(){
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'There was an error, please reload this page'
                        });
                    }
                });
            });
        }
    });

    $('#currency-selector').on("change", function(){
        // Make the API request
        var sharePrice = $('#modal-share-price').val();
        var paymentCurrency = $('#currency-selector').val();
        var companyCurrency = $('#modal-currency-symbol').val();
        var noOfShares = $('#noOfShares').val();
        $.ajax({
            type: "GET",
            url: '/user-service/currency-converter',
            data: {
                paymentCurrency: paymentCurrency,
                companyCurrency: companyCurrency
            },
            success: function(data)
            {
                if(data.status === 'success'){
                    var rate = data.rate;
                    var totalPaymentAmount = parseFloat(rate) * parseFloat(sharePrice) * parseFloat(noOfShares);
                    $('#paymentAmount').val(totalPaymentAmount);

                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.message
                    });
                }
            },
            error: function(){
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'There was an error, please reload this page'
                });
            }
        });
    });
});
