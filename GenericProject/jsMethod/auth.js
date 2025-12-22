function loginuser(password, username) {
    $.ajax({
        url: 'Login.aspx/loginuser',
        data: '{password: "' + password + '",username: "' + username + '" }',
        contentType: 'application/json',
        dataType: 'json',
        type: 'POST',
        success: function (result) {
            debugger;
            if (result.d.Result.ResponseCode == "0") {
                window.location.href = "Dashboard.aspx";
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
