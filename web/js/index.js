
$(document).ready(function(){
    if(localStorage.getItem("user") !== null){
        $('#no-user-menu').remove();
    }

    let table = new DataTable('#stockTable');

    $('#login-form').submit(function(e){
        e.preventDefault();
        var userNameOrEmail = $('#username').val().trim();
        var password = $('#password').val().trim();
        var rememberMe = $('#customCheckLogin').val();
        $.ajax({
            type: "POST",
            url: '/user-service/login',
            data: {
                userNameOrEmail: userNameOrEmail,
                password: password,
                rememberMe: rememberMe
            },
            success: function(data)
            {
                if(data.status === 'success'){

                    console.log(data);
                    localStorage.setItem("user", JSON.stringify(data.user));
                    localStorage.setItem("token", JSON.stringify(data.userToken));
                    window.location.href = '/';
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

    $('#create-account-form').submit(function(e){
        e.preventDefault();
        var userName = $('#userName').val().trim();
        var password = $('#password').val().trim();
        var conpassword = $('#confirm-password').val();
        var firstName = $('#first-name').val().trim();
        var lastName = $('#last-name').val().trim();
        var email = $('#email').val().trim();
        $.ajax({
            type: "POST",
            url: '/user-service/create-new-user',
            data: {
                userName: userName,
                password: password,
                conpassword: conpassword,
                firstName: firstName,
                lastName: lastName,
                email: email
            },
            success: function(data)
            {
                if(data.status === 'success'){
                    window.location.href = '/login?success=true';
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

    $('#buy').click(function(e){
        var companySymbol = $(this).attr('data-order-id');
        $('#companySymbol').val(companySymbol);
        e.preventDefault();
        if(localStorage.getItem("user") === null){
            window.location.href = '/login';
        }else{
            $('#buy-stocks-modal').modal('show');
            var user = localStorage.getItem("user");
            var usrObj = JSON.parse(user);
            var username = usrObj.userName;
            var symbol = $('#companySymbol').val().trim();
            console.log(symbol);
            console.log(username);
            var noOfShares = $('#noOfShares').val().trim();
            $('#buy-stock').submit(function(e){
                e.preventDefault();
                $('#buy-stocks-modal').modal('hide');
                $.ajax({
                    type: "POST",
                    url: '/user-service/buy-stocks',
                    data: {
                        userName: username,
                        noOfShares: noOfShares,
                        symbol: symbol
                    },
                    success: function(data)
                    {
                        if(data.status === 'success'){
                            Swal.fire({
                                icon: 'Success',
                                title: 'Successfuly Brought',
                                text: 'You have successfully obtained:' + noOfShares + 'shares of' + symbol
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
        var userCurrency = $('#currency-selector').val();
        var amount = $('#paymentAmount').val();
        var companyCurrency = 'USD';
        $.ajax({
            type: "GET",
            url: '/user-service/currency-converter',
            data: {
                currencyPayment: userCurrency,
                amount: amount,
                companyCurrency: companyCurrency
            },
            success: function(data)
            {
                if(data.status === 'success'){
                    var updatedValue = data.currencyConverted;
                    var noOfSshares = amount / updatedValue;
                    console.log(updatedValue);
                    console.log(noOfSshares);
                    $('#noOfShares').val(noOfSshares);

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
