<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

        <t:genericpage>
            <jsp:body>

                <style>
                    @@media only screen and (max-width: 576px) {


                        .title-text {
                            margin-left: 10px;
                        }

                            .title-text h3 {
                                font-size: 18px;
                            }
                    }

                    #hot-display-license-info {
                        display: none;
                    }
                </style>

                <style>
                    .date-row {
                        display: flex;
                        justify-content: space-between;
                    }

                    .announce-margin {
                        margin-bottom: 20px;
                    }

                    .list-icon {
                        margin-right: 20px;
                    }

                    .menu-title {
                        color: white;
                        background: #109582;
                        padding-top: 10px;
                        padding-bottom: 10px;
                        border-radius: 15px;
                        box-shadow: 2px 6px 7px rgba(0, 0, 0, 0.4);
                        padding-left: 20px;
                    }

                    h5{
                        margin-left: 20px;
                    }


                    .news-box {
                        background-color: #fff;
                        padding: 10px;
                        border-radius: 15px;
                        box-shadow: 1px 1px 3px rgba(38, 28, 28, 0.4);
                    }

                    .home-menu-tile {
                        margin-bottom: 20px;
                        cursor: pointer;

                    }

                    .archive-row {
                        justify-content: flex-end;
                    }
                </style>

                <div class="title-box">
                    <div class="title-text">
                        <h3 class="title mdc-typography--headline2">Selamat Datang Ke Sistem Headcount Sekolah Menengah</h3>
                    </div>
                </div>

                <div class="body-box card card-4">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">

                                <div onclick="window.location.href='/exam/index'" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-file-alt"></i> Mengurus Headcount Peperiksaan
                                    </div>
                                </div>

                                <div onclick="window.location.href='alert('not part of this assignment')'" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-chart-line"></i> Melihat Graf Analisis Headcount
                                    </div>
                                </div>

                                <h5><i class="list-icon fas fa-database "></i> Data Sistem</h5>

                                <div onclick="window.location.href='/kelas/index'" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-chalkboard"></i> Mengurus Senarai Kelas
                                    </div>
                                </div>

                                <div onclick="window.location.href='/subject/index'" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-book-open"></i> Mengurus Senarai Mata Pelajaran
                                    </div>
                                </div>

                                <div onclick="window.location.href='/student/index'" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-graduation-cap"></i> Mengurus Senarai Pelajar
                                    </div>
                                </div>

                                <h5><i class="list-icon fas fa-user "></i>Akaun Pengguna</h5>

                                <div onclick="window.location.href='/admin/index'" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-user-tie"></i> Mengurus Akaun Penyelia
                                    </div>
                                </div>

                                <div onclick="alert('not part of this assignment')" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-chalkboard-teacher"></i> Mengurus Akaun Guru
                                    </div>
                                </div>

                                <div onclick="alert('not part of this assignment')" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-users"></i> Mengurus Akaun Pengguna Tetamu
                                    </div>
                                </div>

                                <h5><i class="list-icon fas fa-file "></i>Lain-lain</h5>

                                <div onclick="alert('not part of this assignment')" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-bullhorn"></i> Mengurus Pengumunan
                                    </div>
                                </div>

                                <div onclick="alert('not part of this assignment')" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-chalkboard-teacher"></i> Mengurus Teknik Pengajaran
                                    </div>
                                </div>

                                <div onclick="alert('not part of this assignment')" class="col-md-12 home-menu-tile">
                                    <div class="menu-title hvr-box-shadow-inset" style="width: 100%;">
                                        <i class="list-icon fas fa-eye"></i> Menyemak Status Headcount
                                    </div>
                                </div>


                            </div>

                        </div>

                        <div class="col-md-6">
                            <div class="row">

                                    <div class="col-md-12 announce-margin">
                                        <div class="news-box" style="background-color: rgba(221, 220, 220, 0.7); ">

                                            <h4>Sample Announcement</h4>
                                            <h6>announcement management is not part of this assignment</h6>

                                            <h6>The 6 features included in this assignment are</h6>
                                            <h6>Manage exams</h6>
                                            <h6>Manage subjects</h6>
                                            <h6>Manage classes</h6>
                                            <h6>Manage students</h6>
                                            <h6>Manage admin user accounts</h6>
                                            <h6>Login</h6>

                                            <h6>All features involve POST, GET, PUT, DELETE</h6>

                                            <div class="row">
                                                <div class="col-md-12 date-row">
                                                    <p>1/1/2021</p>

                                                    <button class="btn btn-primary btn-sm pure-material-button-contained" style="border-radius: 15px">Lihat Selanjutnya</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>

                        </div>
                    </div>
                </div>
            </jsp:body>
        </t:genericpage>