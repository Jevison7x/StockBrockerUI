
$(document).ready(function(){
    if(localStorage.getItem("user") !== null){
        $('#no-user-menu').remove();
    }

    let table = new DataTable('#stockTable');


// login user
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
                    localStorage.setItem("user", data.user);
                    localStorage.setItem("token", data.userToken);
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

//create a new user
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

//buy user stocks
    $('#buy-transaction').submit(function(e){
        e.preventDefault();
        var username = $('#username').val().trim();
        var companyName = $('#companyName').val().trim();
        var noOfShares = $('#noOfShares').val();
        var symbol = $('#first-name').val().trim();
        $.ajax({
            type: "POST",
            url: '/user-service/buy-stocks',
            data: {
                userName: username,
                companyName: companyName,
                symbol: symbol,
                noOfShares: noOfShares
            },
            success: function(data)
            {
                if(data.status === 'success'){
                    Swal.fire({
                        icon: 'success',
                        title: 'Transaction Successful',
                        text: data.message
                    });
                    $.ajax({
                        type: "POST",
                        url: '/company-service/update-company-stock',
                        data: {
                            symbol: symbol,
                            noOfShares: noOfShares
                        },
                        success: function(data){

                        },
                        error: function(){
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'There was an error, please reload this page'
                            });
                        }
                    });
                    ;
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

//sell user stock
    $('#sell-transaction').submit(function(e){
        e.preventDefault();
        var username = $('#username').val().trim();
        var companyName = $('#companyName').val().trim;
        var noOfShares = $('noOfShares').val().trim();
        $.ajax({
            type: "POST",
            url: '/user-service/sell-stock',
            data: {
                userName: username,
                companyName: companyName,
                noOfShares: noOfShares
            },
            success: function(data)
            {
                if(data.status === 'success'){
                    Swal.fire({
                        icon: 'success',
                        title: 'Transaction Successful',
                        text: data.message
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

    //check user stock
    $('#').submit(function(e){
        e.preventDefault();
        var username = $('#username').val().trim();
        $.ajax({
            type: "POST",
            url: '/user-service/my-stocks',
            data: {
                username: username
            },
            success: function(data)
            {
                if(data.status === 'success'){

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
