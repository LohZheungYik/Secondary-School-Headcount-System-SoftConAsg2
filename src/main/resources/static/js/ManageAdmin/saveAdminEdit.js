$(document).ready(function() {
    //get exam data for edit form
    var adminId = $('#adminId').val();

    $.get("/api/v1/admin/" + adminId, {

        },
        function(data, status) {
            console.log(data);

            $('#username').val(data.username);
            $('#password').val(data.password);
            $('#confirmPassword').val(data.password);
            $("#fullName").val(data.name);
            $("#address").val(data.address);
            $("#hp").val(data.hp);
            $("#remarks").val(data.remarks);
            $("#email").val(data.email);
            $("#homeTel").val(data.homeTel);
            $("#officeTel").val(data.officeTel);
        });

    //save edit
    $('#save').on('click', function() {
        $("#error-box").empty();
        var validForm = true;

        var userId = $('#adminId').val();

        //form validation
        var username = $('#username').val();

        //check password
        var password = $('#password').val();
        var confirmPassword = $('#confirmPassword').val();

        if (password != confirmPassword) {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Kata laluan tidak sepadan<br>");
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


        if (validForm) {
            $("#error-box").addClass("error-box");
            $.ajax({
                type: "PUT",
                url: "/api/v1/admin/",
                data: JSON.stringify({
                    adminId: userId,
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
    });
});