$(document).ready(function() {


    $('#save').on('click', function() {

        $("#error-box").empty();
        var validForm = true;

        var name = $('#name').val();
        var startDate = $("#startDate").val();
        var endDate = $("#endDate").val();
        var type = $("#type").val();
        var year = $("#year").val();
        var markType = $("#markType").val();

        //form validation
        //check required fields
        if (name == "" || startDate == "" || endDate == "" || type == "" || year == "" || markType == "") {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
        }

        if (isNaN(parseInt(year))) {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan tahun peperiksaan*<br>");
        } else {

            if (parseInt(year) < 1970 || parseInt(year) > 2099) {
                validForm = false;
                $("#error-box").removeClass("error-box");
                $("#error-box").append("Sila periksa semula ruangan tahun peperiksaan*<br>");
            } else {

            }
        }


        //normal fields
        var remarks = $("#remarks").val();

        $.ajax({
            type: "POST",
            url: "/api/v1/exam/checkExistence",
            data: JSON.stringify({
                level: type,
                year: year,
                markType: markType
            }),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (parseInt(data) == 1) {
                    validForm = false;
                    $("#error-box").removeClass("error-box");
                    $("#error-box").append(markType + " " + year + " " + type + " sudah ada dalam sistem");
                }

                if (validForm) {
                    $("#error-box").addClass("error-box");


                    $.ajax({
                        type: "POST",
                        url: "/api/v1/exam",
                        data: JSON.stringify({
                            name: name,
                            startDate: startDate,
                            endDate: endDate,
                            level: type,
                            remarks: remarks,
                            year: year,
                            markType: markType

                        }),
                        contentType: "application/json; charset=utf-8",
                        success: function(data) {
                            alert(data);
                            window.location = "/exam/index/";
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