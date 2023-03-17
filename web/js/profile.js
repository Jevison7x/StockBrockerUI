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
                        $('#user-stock-table tbody').append('<tr>'
                                + '<td>' + userStock.companyName + '</td>'
                                + '<td id="symbol">' + userStock.symbol + '</td>'
                                + '<td id="numberOfShares">' + userStock.numberOfShares + '</td>'
                                + '<td class="td-actions text-right">'
                                + '    <button type="button" class="btn btn-sm btn-warning sell-stock-btn" data-order-id="' + userStock.symbol + '">'
                                + '        Sell Now'
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
});


