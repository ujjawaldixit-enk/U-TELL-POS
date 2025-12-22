function forgotpassword(username) {
    $.ajax({
        url: 'ForgotPassword.aspx/forgotpassword',
        data: '{username: "' + username + '" }',
        contentType: 'application/json',
        dataType: 'json',
        type: 'POST',
        success: function (result) {
            debugger;
            if (result.d.Result.ResponseCode == "0") {
                alert("Your password has been sent to your registered email address. Please check your inbox (and spam folder if needed) and use it to log in.")
            }
            else {
                alert(result.d.Result.ResponseMsg);
                return false;
            }
        },
        failure: function (result) {
            return false;
        }
    });
}