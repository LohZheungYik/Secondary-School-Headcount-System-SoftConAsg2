$(document).ready(function() {
    //get kelas data for edit form
    var kelasId = $('#kelasId').val();

    $.get("/api/v1/kelas/" + kelasId, {

        },
        function(data, status) {
            console.log(data);

            $('#name').val(data.name);
            $("#" + data.form).attr('selected', 'selected');
            var type = (data.type).replace(/\s/g, '');
            $("#" + type).attr('selected', 'selected');
            $("#remarks").val(data.remarks);
        });

    //save edit
    $('#save').on('click', function() {
        $("#error-box").empty();
        var validForm = true;

        var classId = $('#classId').val();
        var name = $('#name').val();
        var form = $('#form').val();
        var type = $('#type').val();
        var remarks = $('#remarks').val();

        //form validation
        //check required fields
        if (name == "" || form == "" || type == "") {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
        }

        if (validForm) {
            $("#error-box").addClass("error-box");
            $.ajax({
                type: "PUT",
                url: "/api/v1/kelas/",
                data: JSON.stringify({
                    classId: kelasId,
                    name: name,
                    form: form,
                    type: type,
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
    });
});