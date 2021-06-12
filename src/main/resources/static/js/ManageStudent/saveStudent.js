$(document).ready(function () {


    $('#save').on('click', function () {

        $("#error-box").empty();
        var validForm = true;

        var name = $('#name').val();
        var ic = $('#ic').val();

        //form validation
        //check required fields
        if (name == "" || ic == "") {
            validForm = false;
            $("#error-box").removeClass("error-box");
            $("#error-box").append("Sila periksa semula ruangan yang wajib diisi *<br>");
        }

        $.ajax({
             type: "POST",
             url: "/api/v1/student/checkExistence",
             data: JSON.stringify({
                  ic: ic,
             }),
             contentType: "application/json; charset=utf-8",
             success: function(data){
                  if (parseInt(data) == 1) {
                         validForm = false;
                         $("#error-box").removeClass("error-box");
                         $("#error-box").append("Pelajar ini sudah wujud dalam sistem");
                  }

                  if (validForm) {
                         $("#error-box").addClass("error-box");


                         $.ajax({
                               type: "POST",
                               url: "/api/v1/student",
                               data: JSON.stringify({
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

             },
                  error: function(err) {
                  console.log(err);
             }
        });
    });
});