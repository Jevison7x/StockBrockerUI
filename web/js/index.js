
$(document).ready(function(){

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
            if($('#noOfShares').val().trim() !== '' && $('#currency-selector').val() !== '')
                sendCurrencyConversionRequest();
        }
    });
});

