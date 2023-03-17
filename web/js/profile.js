$(document).ready(function(){
    if(localStorage.getItem("user") !== null){
        var user = localStorage.getItem("user");
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
            url: '/my-stock',
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


