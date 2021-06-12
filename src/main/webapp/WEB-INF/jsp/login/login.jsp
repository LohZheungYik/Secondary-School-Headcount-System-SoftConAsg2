<html>
<head>
<link rel="stylesheet" href="/css/login.css"/>
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
<script src="/js/Login/login.js"></script>

<script>
    $(document).ready(function () {
        $('#image').attr('src', '/images/edu.jpg');
    });

</script>

<style>
    .form-margin {
        margin-top: 70px;
    }

    .login-margin {
        margin-top: 30px;
    }

    .mobile-logo {
        display: none;
    }

    .error-box {
        display: none;
    }

    @@media screen and (max-width: 991px) {
        .form-margin {
            margin-top: 0px;
        }

        .logistic-img {
            display: none;
        }

        .desktop-logo {
            display: none;
        }

        .mobile-logo {
            display: block;
        }

        .alert-danger {
            width: 100%;
        }

        #save {
            width: 100%;
        }

        .desktop-title {
            display: none;
        }
    }
</style>

</head>
<body>
<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                    <h5 style="margin-top: 20px; text-align: center" class="desktop-title">Sistem Headcount Sekolah Menengah</h5>
                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line logistic-img"> <img id="image" class="image"> </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="mobile-logo card2 card border-0 px-4 py-5" style="text-align: center" margin>

                    <h5 style="margin-top: 20px">Sistem Headcount Sekolah Menengah</h5>
                </div>

                <div class="card2 card border-0 px-4 py-5" margin>
                    <div class="row px-3 form-margin">
                        <label class="mb-1">
                            <h6 class="mb-0 text-sm">Nama Pengguna *</h6>
                        </label> <input class="mb-4" type="text" id="username" name="username" placeholder="">
                    </div>
                    <div class="row px-3">
                        <label class="mb-1">
                            <h6 class="mb-0 text-sm">Kata Laluan *</h6>
                        </label> <input type="password" name="password" id="password" placeholder="">
                    </div>

                    <div class="row mb-3 px-3 login-margin"> <button type="button" id="login-btn" class="btn btn-blue text-center" >Log Masuk</button> </div>
                    <div class="row mb-4 px-3">
                        <div class="error-box alert alert-danger" id="error-box" role="alert"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-blue py-4">
            <div class="row px-3">
                <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All rights reserved.</small>

            </div>
        </div>
    </div>
</div>
</body>