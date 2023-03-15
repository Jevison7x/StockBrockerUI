
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
});
