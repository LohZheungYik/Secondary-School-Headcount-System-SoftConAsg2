$(document).ready(function () {
    //get student data for edit form
    var studentId = $('#studentId').val();

    $.get("/api/v1/student/" + studentId, {

    },
    function (data, status) {
         console.log(data);

         $('#name').val(data.name);
         $('#ic').val(data.ic);
    });

    //save edit
    $('#save').on('click', function () {
            $("#error-box").empty();
            var validForm = true;

            var id = $('#studentId').val();
            var name = $('#name').val();
            var ic = $('#ic').val();

            //form validation
            //check required fields
            if (name == "" || ic == "") {
                validForm = false;
                $("#error-box").removeClass("error-box");
                $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
            }

            if (validForm) {
                 $("#error-box").addClass("error-box");
                 $.ajax({
                     type: "PUT",
                     url: "/api/v1/student/",
                           data: JSON.stringify({
                                id: id,
                                name: name,
                                ic: ic,
                           }),
                           contentType: "application/json; charset=utf-8",
                                success: function(data){
                                alert(data);
                                window.location = "/student/index/";
                           },
                           error: function(err) {
                                console.log(err);
                           }
                 });
            }
        });
    });
