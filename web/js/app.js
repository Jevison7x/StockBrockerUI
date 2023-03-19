$(document).ready(function(){
    if(localStorage.getItem("user") !== null){
        $('#no-user-menu').remove();
    }else{
        $('.logout-link').remove();
    }

    const currencySelector = document.getElementById('currency-selector');
    const option = document.createElement('option');
    option.value = '';
    option.text = 'Select Currency';
    currencySelector.add(option);
    fetch('https://api.apilayer.com/exchangerates_data/latest?apikey=d60aYdiwaB02wp3wU96gZNugQjkhksLp')
            .then(response => response.json())
            .then(data => {
                // Check if rates property exists in data object
                if(!data.rates){
                    throw new Error('Rates not available');
                }

                // Extract currency codes from data
                const currencies = Object.keys(data.rates);

                // Populate select field with currency options
                currencies.forEach(currency => {
                    const option = document.createElement('option');
                    option.value = currency;
                    option.text = currency;
                    currencySelector.add(option);
                });
            })
            .catch(error => console.error(error));


    $('#currency-selector').on("change", function(){
        if($('#noOfShares').val() !== '')
            sendCurrencyConversionRequest();
    });

    $('#noOfShares').on('change', function(){
        if($('#currency-selector').val() !== '')
            sendCurrencyConversionRequest();
    });

    $('.modal-form').on('submit', function(event){
        event.preventDefault();
        $('#payment-modal-form').modal('show');
        $('#final-payment-currency').val($('#currency-selector').val());
        $('#final-total-amount').val($('#paymentAmount').val());
        $('#company-symbol-payment').val($('#modal-company-symbol').val());
        $('#number-of-shares-payment').val($('#noOfShares').val());
    });

    $('#payment-form').on('submit', function(event){
        event.preventDefault();
        var user = localStorage.getItem('user');
        var token = localStorage.getItem('token');
        var usrObj = JSON.parse(user);
        var username = usrObj.userName;
        var numberOfShares = $('#number-of-shares-payment').val();
        var companySymbol = $('#company-symbol-payment').val();
        var url = $('.payment-url').val();
        var successMessage = $('.payment-success-message').val();
        $('#pay-now-btn').attr('disabled', true);
        $.ajax({
            url: url,
            method: 'POST',
            dataType: 'JSON',
            data: {
                username: username, token: token, companySymbol: companySymbol, noOfShares: numberOfShares
            },
            success: function(data, textStatus, jqXHR){
                if(data.status === 'success'){
                    Swal.fire({
                        icon: 'success',
                        title: successMessage,
                        text: data.message
                    });
                    location.href = '/profile';
                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.message
                    });
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'An error occured, please reload this page.'
                });
            },
            complete: function(jqXHR, textStatus){
                $('#pay-now-btn').removeAttr('disabled');
            }
        });
    });
});

function sendCurrencyConversionRequest(){
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
        beforeSend: function(xhr){
            $('#modal-loading-icon').addClass('fas').addClass('fa-refresh').addClass('fa-spin').removeClass('hidden');
            $('#pay-now').attr('disabled', true);
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
                    text: 'Invalid Input'
                });
            }
        },
        error: function(){
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'There was an error, please reload this page'
            });
        },
        complete: function(jqXHR, textStatus){
            $('#modal-loading-icon').removeClass('fas').removeClass('fa-refresh').removeClass('fa-spin').addClass('hidden');
            $('#pay-now').removeAttr('disabled');
        }
    });
}

