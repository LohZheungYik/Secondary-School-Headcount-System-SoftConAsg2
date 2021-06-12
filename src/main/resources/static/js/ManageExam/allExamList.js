$(document).ready(function () {
        $.get("/api/v1/exam", {

        },
        function (data, status) {
                console.log(data);
                $("#data-table")
                for (var d in data) {
                     var content = data[d];
                     $('#data-table tbody').append($('<tr>')
                          .append('<td class="desktop-column">'+content.name+'</td>')
                          .append('<td class="desktop-column">'+content.markType+'</td>')
                          .append('<td class="desktop-column">'+content.year+'</td>')
                          .append('<td class="desktop-column">'+content.level+'</td>')
                          .append("<td class='mobile-column'><h6><b>Nama Peperiksaan</b></h6><h6>" + content.name + "</h6><h6><b>Jenis Markah</b></h6><h6>" + content.markType + "</h6><b>Tahun Peperiksaan</b></h6><h6>" + content.year + "</h6><h6><b>Peringkat</b></h6><h6>'" + content.level + "'</h6></td>")
                          .append('<td><div class="dropdown"><button class="btn btn-sm btn-secondary btn-drop pure-material-button-contained" type = "button" id = "dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><i class="fas fa-ellipsis-v"></i></button><div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton"><a class="dropdown-item" onclick="window.location.href=\'/exam/update/' + content.id + '\'"><i class="fas fa-pencil-alt"></i><span style="margin-left: 5px;" class="btn-text">Sunting</span></a><a class="dropdown-item" onclick="deleteItem(' + content.id + ')"><i class="fas fa-trash"></i><span style="margin-left: 5px;" class="btn-text">Padam</span></a></div></div></td>')
                     )
                }

        });
});


function deleteItem(examid) {
    //alert(id);
    var confirmation = confirm("Adakah anda pasti memadam rekod peperiksaan ini? Markah dan sasaran yang terlibat juga akan dipadam?");
    if (confirmation) {

        $.ajax({
             type: "DELETE",
             url: "/api/v1/exam/" + examid,
             contentType: "application/json; charset=utf-8",
             success: function(data){
                 alert(data);
                 window.location = "/exam/index/";
             },
             error: function(err) {
                 console.log(err);
             }
        });

    }
}