<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<html>

<head>

<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<link rel="stylesheet" href="/css/frame.css"/>
<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.min.css"/>
<link rel="stylesheet" href="/css/LineIcons.css"/>
<link rel="stylesheet" href="/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="/css/table.css"/>
<link rel="stylesheet" href="/css/style.css"/>
<link rel="stylesheet" href="/css/select2.min.css"/>
<link rel="stylesheet" href="/css/handsontable.full.min.css"/>
<link rel="stylesheet" href="/css/hover.css"/>
<link rel="stylesheet" href="/css/materialTable.css"/>

<script src="/js/solid.js"></script>
<script src="/js/fontawesome.js"></script>
<script src="/js/jquery-3.5.1.js"></script>
<script src="/js/jquery.dataTables.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/js/sidebar.js"></script>
<script src="/js/select2.min.js"></script>
<script src="/js/handsontable.full.min.js"></script>
<script src="/js/Chart.min.js"></script>



<style>
    .menu-li{
        padding-left: 0px;
    }

    #dismiss {
        width: 35px;
        height: 35px;
        line-height: 35px;
        text-align: center;
        background: #7386D5;
        position: absolute;
        top: 10px;
        right: 10px;
        cursor: pointer;
        -webkit-transition: all 0.3s;
        -o-transition: all 0.3s;
        transition: all 0.3s;
        padding-top: 10px;
    }
</style>

<title>Headcount</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body class="mdc-typography">
    <div class="wrapper">
        <nav id="sidebar">
            <div id="dismiss">
                <i class="fas fa-arrow-left"></i>
            </div>

            <div class="sidebar-header" style="height: 100px">

            </div>

            <ul class="list-unstyled components">
                <li class="menu-li">
                    <a class="hvr-grow-shadow" href="/exam/index"><i class="list-icon fas fa-file-alt"></i> Mengurus Headcount Peperiksaan</a>
                </li>

                <li class="menu-li">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle hvr-grow-shadow"><i class="list-icon fas fa-database "></i> Mengurus Data Sistem</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a class="hvr-grow-shadow" href="/kelas/index"><i class="list-icon fas fa-chalkboard"></i> Mengurus Senarai Kelas</a>
                        </li>
                        <li>
                            <a class="hvr-grow-shadow" href="/subject/index"><i class="list-icon fas fa-book-open"></i> Mengurus Senarai Mata Pelajaran</a>
                        </li>
                        <li>
                            <a class="hvr-grow-shadow" href="/student/index"><i class="list-icon fas fa-graduation-cap"></i> Mengurus Senarai Pelajar</a>
                        </li>
                    </ul>
                </li>

                <li class="menu-li">
                    <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle hvr-grow-shadow"><i class="list-icon fas fa-user "></i> Mengurus Akaun Pengguna</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu2">
                        <li>
                            <a class="hvr-grow-shadow" href="/admin/index"><i class="list-icon fas fa-user-tie"></i> Mengurus Akaun Penyelia</a>
                        </li>
                        <li>
                            <a class="hvr-grow-shadow" onclick="alert('not part of this assignment')"><i class="list-icon fas fa-chalkboard-teacher"></i> Mengurus Akaun Guru</a>
                        </li>
                        <li>
                            <a class="hvr-grow-shadow" onclick="alert('not part of this assignment')"><i class="list-icon fas fa-users"></i> Mengurus Akaun Pengguna Tetamu</a>
                        </li>
                    </ul>
                </li>

                <li class="menu-li">
                    <a class="hvr-grow-shadow" onclick="alert('not part of this assignment')"><i class="list-icon fas fa-chart-line"></i> Melihat Graf Analisis Headcount</a>
                </li>

                <li class="menu-li">
                    <a class="hvr-grow-shadow" onclick="alert('not part of this assignment')"><i class="list-icon fas fa-bullhorn"></i> Mengurus Pengumunan</a>
                </li>

                <li class="menu-li">
                    <a class="hvr-grow-shadow" onclick="alert('not part of this assignment')"><i class="list-icon fas fa-chalkboard-teacher"></i> Mengurus Teknik Pengajaran</a>
                </li>

                <li class="menu-li">
                    <a class="hvr-grow-shadow" onclick="alert('not part of this assignment')"><i class="list-icon fas fa-eye"></i> Menyemak Status Headcount</a>
                </li>

            </ul>

            <ul class="list-unstyled CTAs">
            </ul>
        </nav>
    </div>


    <nav style="margin-bottom: 0px" class="navbar navbar-expand-sm bg-info navbar-dark justify-content-end">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <button type="button" id="sidebarCollapse" class="btn btn-info">
                    <i class="fas fa-align-justify"></i>
                    <span>Menu</span>
                </button>
            </li>
        </ul>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <i class="profile-btn fa fa-user"></i>
        </button>
        <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
            <ul class="navbar-nav text-right">

                <li class="nav-item active">
                    <a class="nav-link" href="/destroySession">Log Keluar</a>
                </li>
            </ul>
        </div>
    </nav>

    <jsp:doBody/>


</body>

</head>

</html>