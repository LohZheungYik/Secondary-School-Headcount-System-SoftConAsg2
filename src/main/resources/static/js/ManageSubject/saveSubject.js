$(document).ready(function() {


    $('#save').on('click', function() {

        $("#error-box").empty();
        var validForm = true;

        var code = $('#code').val();
        var name = $('#name').val();
        var type = $('#type').val();
        var level = $('#level').val();
        var remarks = $('#remarks').val();

        //form validation
        //check required fields
        if (name == "" || code == "" || type == "" || level == "") {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
        }

        $.ajax({
            type: "POST",
            url: "/api/v1/subject/checkExistence",
            data: JSON.stringify({
                name: name,
                code: code
            }),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (parseInt(data) == 1) {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append("Kod dan nama mata pelajaran ini telah diguna.");
                }

                if (validForm) {
                    $("#error-box").addClass("error-box");


                    $.ajax({
                        type: "POST",
                        url: "/api/v1/subject",
                        data: JSON.stringify({
                            code: code,
                            name: name,
                            type: type,
                            level: level,
                            remarks: remarks,

                        }),
                        contentType: "application/json; charset=utf-8",
                        success: function(data) {
                            alert(data);
                            window.location = "/subject/index/";
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