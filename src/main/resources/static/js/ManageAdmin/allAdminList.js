$(document).ready(function () {
        $.get("/api/v1/admin", {

        },
        function (data, status) {
                console.log(data);
                $("#data-table")
                for (var d in data) {
                     var content = data[d];
                     $('#data-table tbody').append($('<tr>')
                          .append('<td class="desktop-column">'+content.name+'</td>')
                          .append('<td class="desktop-column">'+content.email+'</td>')
                          .append('<td class="desktop-column">'+content.username+'</td>')
                          .append('<td class="desktop-column">'+content.hp+'</td>')
                          .append('<td class="desktop-column">'+content.officeTel+'</td>')
                          .append("<td class='mobile-column'><h6><b>Nama Penuh</b></h6><h6>" + content.name + "</h6><h6><b>E-Mel</b></h6><h6>" + content.email + "</h6><b>Nama Pengguna</b></h6><h6>" + content.username + "</h6><h6><b>No Telefon Bimbit</b></h6><h6>" + content.hp + "</h6><h6><b>No Telefon Pejabat</b></h6><h6>" + content.officeTel + "</h6></td>")
                          .append('<td><div class="dropdown" ><button class="btn btn-sm btn-secondary pure-material-button-contained" type="button" style="width: 23.25px;" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><i class="fas fa-ellipsis-v"></i></button ><div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton"><a class="dropdown-item" onclick="window.location.href=\'/admin/update/' + content.adminId + '\'"><i class="fas fa-pencil-alt"></i><span style="margin-left: 5px;" class="btn-text">Sunting</span></a><a class="dropdown-item" onclick="deleteItem(' + content.adminId + ')"><i class="fas fa-trash"></i><span style="margin-left: 5px;" class="btn-text">Padam</span></a></div></div></td>')
                     )
                }

        });
});


function deleteItem(adminid) {
    //alert(id);
    var confirmation = confirm("Adakah anda pasti mahu menutup akaun pengguna penyelia ini?");
    if (confirmation) {

        $.ajax({
             type: "DELETE",
             url: "/api/v1/admin/" + adminid,
             contentType: "application/json; charset=utf-8",
             success: function(data){
                 alert(data);
                 window.location = "/admin/index/";
             },
             error: function(err) {
                 console.log(err);
             }
        });

    }
}