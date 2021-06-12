$(document).ready(function () {
        $.get("/api/v1/kelas", {

        },
        function (data, status) {
                console.log(data);
                $("#data-table")
                for (var d in data) {
                     var content = data[d];
                     $('#data-table tbody').append($('<tr>')
                          .append('<td class="desktop-column">'+content.name+'</td>')
                          .append('<td class="desktop-column">'+content.form+'</td>')
                          .append('<td class="desktop-column">'+content.type+'</td>')
                          .append("<td class='mobile-column'><h6><b>Nama Kelas</b></h6><h6>" + content.name + "</h6><h6><b>Tingkatan</b></h6><h6>" + content.form + "</h6><h6><b>Jenis</b></h6><h6>" + content.type + "</h6></td>")
                          .append('<td><div class="dropdown" ><button class="btn btn-sm btn-secondary pure-material-button-contained" type="button" style="width: 23.25px;" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><i class="fas fa-ellipsis-v"></i></button ><div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton"><a class="dropdown-item" onclick="window.location.href=\'/kelas/update/' + content.classId + '\'"><i class="fas fa-pencil-alt"></i><span style="margin-left: 5px;" class="btn-text">Sunting</span></a><a class="dropdown-item" onclick="deleteItem(' + content.classId + ')"><i class="fas fa-trash"></i><span style="margin-left: 5px;" class="btn-text">Padam</span></a></div></div></td>')
                     )
                }

        });
});


function deleteItem(kelasid) {
    //alert(id);
    var confirmation = confirm("Adakah anda pasti memadam rekod kelas ini? Markah dan sasaran yang terlibat juga akan dipadam?");
    if (confirmation) {

        $.ajax({
             type: "DELETE",
             url: "/api/v1/kelas/" + kelasid,
             contentType: "application/json; charset=utf-8",
             success: function(data){
                 alert(data);
                 window.location = "/kelas/index/";
             },
             error: function(err) {
                 console.log(err);
             }
        });

    }
}