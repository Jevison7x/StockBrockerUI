$(document).ready(function(){
    if(localStorage.getItem("user") !== null){
        var user = localStorage.getItem("user");
        var token = localStorage.getItem("token");
        var usrObj = JSON.parse(user);
        var username = usrObj.userName;
        var firstname = usrObj.firstName;
        var lastname = usrObj.lastName;
        var email = usrObj.email;
        $('#firstname').append("<span>" + firstname + "</span>");
        $('#lastname').append("<span>" + lastname + "</span>");
        $('#email').append("<span>" + email + "</span>");
        $('#username').append("<span>" + username + "</span>");
        console.log(email);
        $.ajax({
            type: "POST",
            url: '/user-service/my-stocks',
            data: {
                username: username, token: token
            },
            success: function(data)
            {
                if(data.status === 'success'){
                    for(var i = 0; i < data.userStockArray.length; i++){
                        var userStock = data.userStockArray[i];
                        var sharePrice = getSharePrice(data.companyStocks, userStock.symbol);
                        var companyCurrency = getCompanyCurrency(data.companyStocks, userStock.symbol);
                        var logo = getCompanyLogo(data.companyStocks, userStock.symbol);
                        $('#user-stock-table tbody').append('<tr>'
                                + '<td>' + userStock.companyName + '</td>'
                                + '<td id="symbol">' + userStock.symbol + '</td>'
                                + '<td id="numberOfShares">' + userStock.numberOfShares + '</td>'
                                + '<td class="td-actions text-right">'
                                + '    <button type="button" class="btn btn-sm btn-warning sell-stock-btn"'
                                + '             data-order-id="' + userStock.symbol + '" '
                                + '             data-order-company-name="' + userStock.companyName + '" '
                                + '             data-order-company-logo="' + logo + '" '
                                + '             data-order-share-price="' + sharePrice + '" '
                                + '             data-order-currency="' + companyCurrency + '">'
                                + '        <i class="fas fa-arrow-circle-up"></i> Sell Now'
                                + '    </button>'
                                + '</td>'
                                + '</tr>');
                    }
                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.message
                    });
                    if(data.status === 'expiredSession')
                        location.href = './login';
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
    }else{
        window.location.href = '/login';
    }

    $('#user-stock-table').on('click', '.sell-stock-btn', function(e){
        if(localStorage.getItem("user") === null){
            location.href = './login';
        }else
        {
            var companySymbol = $(this).attr('data-order-id');
            var companyName = $(this).attr('data-order-company-name');
            var logo = $(this).attr('data-order-company-logo');
            var currencyName = $(this).attr('data-order-currency');
            var sharePrice = $(this).attr('data-order-share-price');
            $('#modal-logo').attr('src', logo);
            $('#modal-heading').html('Sell ' + companyName + ' stocks');
            $('#modal-company-symbol').val(companySymbol);
            $('#modal-currency-symbol').val(currencyName);
            $('#modal-share-price').val(sharePrice);
            $('#sell-stocks-modal').modal('show');
            if($('#noOfShares').val().trim() !== '' && $('#currency-selector').val() !== '')
                sendCurrencyConversionRequest();
        }
    });
});

function getSharePrice(companyStocks, symbol){
    for(var i = 0; i < companyStocks.length; i++){
        var companyStock = companyStocks[i];
        if(companyStock.symbol === symbol){
            return companyStock.sharePrice;
        }
    }
}

function getCompanyLogo(companyStocks, symbol){
    for(var i = 0; i < companyStocks.length; i++){
        var companyStock = companyStocks[i];
        if(companyStock.symbol === symbol){
            return companyStock.logo;
        }
    }
}

function getCompanyCurrency(companyStocks, symbol){
    for(var i = 0; i < companyStocks.length; i++){
        var companyStock = companyStocks[i];
        if(companyStock.symbol === symbol){
            return companyStock.currencyName;
        }
    }
}

