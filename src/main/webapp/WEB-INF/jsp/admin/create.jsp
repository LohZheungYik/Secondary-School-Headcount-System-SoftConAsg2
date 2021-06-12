<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:body>
        <link rel="stylesheet" href="/css/form.css"/>
        <script src="/js/ManageAdmin/saveAdmin.js"></script>

        <style>
            @media only screen and (max-width: 576px) {


                .title-text {
                    margin-left: 10px;
                }

                    .title-text h3 {
                        font-size: 18px;
                    }
            }
        </style>

        <div class="title-box">
            <div class="title-text">
                <h3><i onclick="window.location.href='/admin/index'" class="pure-material-button-contained back-btn fa fa-arrow-left"></i></h3>
                <h3 class="title mdc-typography--headline2">Borang Pendaftaran Penyelia Baru</h3>
            </div>
        </div>

        <div class="body-box card card-4">
            <div class="content">
                <h5>Maklumat Peribadi</h5>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="name">Nama Penuh <span class="required">*</span> </label>
                                <input class="form-control" type="text" name="fullName" id="fullName" placeholder="contoh: Mohd Ali Bin Ahmad" required>
                                <br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="address">Alamat<span class="required">*</span> </label>
                                <textarea class="form-control" name="address" id="address" placeholder="contoh: 208, JLN Cempaka, TMN Anggerik" required></textarea>
                                <br>
                                <label for="remarks">Komen</label>
                                <textarea class="form-control" name="remarks" id="remarks" placeholder="komen"></textarea>
                                <br>
                            </div>
                            <div class="col-md-6 ">
                                <label for="email">Alamat E-Mel</label>
                                <input class="form-control " type="email" name="email" id="email" placeholder="contoh: ali@gmail.com">
                                <br>
                                <label for="hp">No. Telefon Bimbit<span class="required">*</span> </label>
                                <input class="form-control " type="text" name="hp " id="hp" placeholder="contoh: 012345678" required>
                                <br>
                                <label for="hometel">No. Telefon Rumah</label>
                                <input class="form-control " type="text" name="homeTel" id="homeTel" placeholder="contoh: 071231234">
                                <br>
                                <label for="tel">No. Telefon Pejabat</label>
                                <input class="form-control " type="text" name="officeTel" id="officeTel" placeholder="contoh: 071231234">
                                <br>
                            </div>
                        </div>

                        <h5>Maklumat Akaun Pengguna</h5>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="username">Nama Pengguna <span class="required">*</span> </label>
                                <input class="form-control" type="text" name="username" id="username" placeholder="contoh: ali233" required>
                                <br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="password">Kata Laluan<span class="required">*</span> </label>
                                <input class="form-control" type="password" name="password" id="password" placeholder="kata Laluan" required>
                                <br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="confirmPassword">Sahkan Kata Laluan<span class="required">*</span> </label>
                                <input class="form-control" type="password" name="confirmPassword" id="confirmPassword" placeholder="sahkan kata laluan" required>
                                <br>
                            </div>
                        </div>


                <div class="error-box alert alert-danger" id="error-box" role="alert">
                </div>

                <button type="button" class="pure-material-button-contained" id="save"><i class="fas fa-save"></i><span style="margin-left: 5px;" class="btn-text text-white">Simpan</span></button>

            </div>
        </div>
    </jsp:body>
</t:genericpage>