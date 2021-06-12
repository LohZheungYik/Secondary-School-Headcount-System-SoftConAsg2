$(document).ready(function() {
    //get subject data for edit form
    var subjectId = $('#subjectId').val();

    $.get("/api/v1/subject/" + subjectId, {

        },
        function(data, status) {
            console.log(data);

            $('#code').val(data.code);
            $('#name').val(data.name);
            var type = (data.type).replace(/\s/g, '');
            $("#" + type).attr('selected', 'selected');
            var level = (data.level).replace(/\s/g, '');
            $("#" + level).attr('selected', 'selected');
            $("#remarks").val(data.remarks);
        });

    //save edit
    $('#save').on('click', function() {
        $("#error-box").empty();
        var validForm = true;

        var subjectId = $('#subjectId').val();
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

        if (validForm) {
            $("#error-box").addClass("error-box");
            $.ajax({
                type: "PUT",
                url: "/api/v1/subject/",
                data: JSON.stringify({
                    subjectId: subjectId,
                    code: code,
                    name: name,
                    remarks: remarks,
                    type: type,
                    level: level
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
    });
});