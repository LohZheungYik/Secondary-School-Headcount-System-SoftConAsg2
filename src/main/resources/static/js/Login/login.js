$(document).ready(function() {
var defaultNotExist = true;
    $.ajax({
            type: "POST",
            url: "/api/v1/admin/checkExistence",
            data: JSON.stringify({
                username: "root",

            }),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (parseInt(data) == 1) {
                    defaultNotExist = false;

                }

                if (defaultNotExist) {
                    $("#error-box").addClass("error-box");


                    $.ajax({
                        type: "POST",
                        url: "/api/v1/admin",
                        data: JSON.stringify({

                            username: "root",
                            password: "alpine",
                            name: "default",
                            email: "default@gmail.com",


                        }),
                        contentType: "application/json; charset=utf-8",
                        success: function(data) {

                        },
                        error: function(err) {
                            console.log(err);
                        }
                    });
                }

            },
            error: function(err) {
                console.log(err);
            }
        });

    $('#login-btn').on('click', function() {

        $("#error-box").empty();

        var validForm = true;

        var username = $('#username').val();
        var password = $('#password').val();

        //form validation
        //check required fields
        if (username == "" || password == "") {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
        }

        $.ajax({
            type: "POST",
            url: "/api/v1/login/validate",
            data: JSON.stringify({
                username: username,
                password: password

            }),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (parseInt(data) == 0) {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append("Nama atau kata laluan tidak betul");
                }

                if (validForm) {
                    $("#error-box").addClass("error-box");

                    $.ajax({
                        type: "POST",
                        url: "api/v1/login/startSession",
                        data: JSON.stringify({
                            username: username,
                            password: password

                        }),
                        contentType: "application/json; charset=utf-8",
                        success: function(data) {
                            window.location = "/home";
                        },
                        error: function(err) {
                            console.log(err);
                        }
                    });

                }
            },
            error: function(err) {
                console.log(err);
            }
        });

    });

});