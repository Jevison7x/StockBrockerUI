
$(document).ready(function(){
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
});


