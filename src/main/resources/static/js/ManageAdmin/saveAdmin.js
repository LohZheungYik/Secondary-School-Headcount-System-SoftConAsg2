$(document).ready(function() {


    $('#save').on('click', function() {

        $("#error-box").empty();
        var validForm = true;

         //form validation
                var username = $('#username').val();

                //check password
                var password = $('#password').val();
                var confirmPassword = $('#confirmPassword').val();

                if (password != confirmPassword) {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append("Kata laluan tidak sepadan <br>");
                }

                //required fields
                var name = $("#fullName").val();

                var address = $("#address").val();
                var hp = $("#hp").val();

                //check required fields
                if (fullName == "" || address == "" || hp == "" || username == "" || password == "" || confirmPassword == "") {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
                }

                //normal fields
                var remarks = $("#remarks").val();
                var email = $("#email").val();
                var homeTel = $("#homeTel").val();
                var officeTel = $("#officeTel").val();

        $.ajax({
            type: "POST",
            url: "/api/v1/admin/checkExistence",
            data: JSON.stringify({
                username: username,

            }),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (parseInt(data) == 1) {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append("Nama pengguna ini telah diambil.");
                }

                if (validForm) {
                    $("#error-box").addClass("error-box");


                    $.ajax({
                        type: "POST",
                        url: "/api/v1/admin",
                        data: JSON.stringify({
                            name: name,
                            address: address,
                            hp: hp,
                            remarks: remarks,
                            email: email,
                            homeTel: homeTel,
                            officeTel: officeTel,
                            username: username,
                            password: password

                        }),
                        contentType: "application/json; charset=utf-8",
                        success: function(data) {
                            alert(data);
                            window.location = "/admin/index/";
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