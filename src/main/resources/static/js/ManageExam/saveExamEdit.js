$(document).ready(function() {
    //get exam data for edit form
    var examId = $('#examId').val();

    $.get("/api/v1/exam/" + examId, {

        },
        function(data, status) {
            console.log(data);
            $('#name').val(data.name);
            $("#startDate").val(data.startDate);
            $("#endDate").val(data.endDate);

            var level = (data.level).replace(/\s/g, '');
            $("#" + level).attr('selected', 'selected');

            $("#year").val(data.year);

            var markType = (data.markType).replace(/\s/g, '');
            $("#" + markType).attr('selected', 'selected');

            $("#remarks").val(data.remarks);
        });

    //save edit
    $('#save').on('click', function() {
        $("#error-box").empty();
        var validForm = true;

        var id = $('#examId').val();
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

        if (validForm) {
            $("#error-box").addClass("error-box");
            $.ajax({
                type: "PUT",
                url: "/api/v1/exam/",
                data: JSON.stringify({
                    id: id,
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
    });
});