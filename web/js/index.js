
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
        e.preventDefault();
        if(localStorage.getItem("user") === null){
            window.location.href = '/login';
        }else{
            $('#buy-stocks-modal').modal('show');
            var user = localStorage.getItem("user");
            console.log(user);
//            var username = user.userName;
//            var companyName = $('#companyName').val().trim();
//            var noOfShares = $('#noOfShares').val().trim();
//            var symbol = $('#symbol').val().trim();

//            $.ajax({
//                type: "POST",
//                url: '/user-service/buy-stocks',
//                data: {
//                    userName: username,
//                    companyName: companyName,
//                    noOfShares: noOfShares,
//                    symbol: symbol
//                },
//                success: function(data)
//                {
//                    if(data.status === 'success'){
//                        $('#buy-stocks-modal').modal('hide');
//                        Swal.fire({
//                            icon: 'Success',
//                            title: 'Successfuly Brought',
//                            text: 'You have successfully obtained:' + noOfShares + 'shares of' + companyName
//                        });
//                    }else{
//                        Swal.fire({
//                            icon: 'error',
//                            title: 'Oops...',
//                            text: data.message
//                        });
//                    }
//                },
//                error: function(){
//                    Swal.fire({
//                        icon: 'error',
//                        title: 'Oops...',
//                        text: 'There was an error, please reload this page'
//                    });
//                }
//            });
        }
    });

    $('#sell').submit(function(e){
        e.preventDefault();
        if(localStorage.getItem("user") !== null){
            var user = localStorage.getItem("user");
            var username = user.userName;
            var companyName = $('#companyName').val().trim();
            var noOfShares = $('#noOfShares').val().trim();

            $.ajax({
                type: "POST",
                url: 'user-service/sell-stock',
                data: {
                    userName: username,
                    companyName: companyName,
                    noOfShares: noOfShares
                },
                success: function(data)
                {
                    if(data.status === 'success'){
                        Swal.fire({
                            icon: 'Success',
                            title: 'Successfuly Sold',
                            text: 'You have successfully Sold:' + noOfShares + 'shares from' + companyName
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
        }
    });

    $('#profile').click(function(e){
        e.preventDefault();
        if(localStorage.getItem("user") !== null){
            var user = localStorage.getItem("user");
            var username = user.userName;

            $.ajax({
                type: "POST",
                url: 'user-service/user-service/my-stocks',
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
        }else{
            window.location.href = '/login';
        }
    });

});
