$(document).ready(function() {


    $('#save').on('click', function() {

        $("#error-box").empty();
        var validForm = true;

        var name = $('#name').val();
        var type = $('#type').val();
        var form = $('#form').val();
        var remarks = $('#remarks').val();

        //form validation
        //check required fields
        if (name == "" || form == "" || type == "") {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
        }

        $.ajax({
            type: "POST",
            url: "/api/v1/kelas/checkExistence",
            data: JSON.stringify({
                name: name,
            }),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (parseInt(data) == 1) {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append("Nama kelas ini telah diguna.");
                }

                if (validForm) {
                    $("#error-box").addClass("error-box");


                    $.ajax({
                        type: "POST",
                        url: "/api/v1/kelas",
                        data: JSON.stringify({
                            name: name,
                            type: type,
                            form: form,
                            remarks: remarks,

                        }),
                        contentType: "application/json; charset=utf-8",
                        success: function(data) {
                            alert(data);
                            window.location = "/kelas/index/";
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