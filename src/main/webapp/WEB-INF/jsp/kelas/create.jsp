<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:body>
        <link rel="stylesheet" href="/css/form.css"/>
        <script src="/js/ManageKelas/saveKelas.js"></script>

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
                <h3><i onclick="window.location.href='/kelas/index'" class="pure-material-button-contained back-btn fa fa-arrow-left"></i></h3>
                <h3 class="title mdc-typography--headline2">Borang Penambahan Kelas Baru</h3>
            </div>
        </div>

        <div class="body-box card card-4">
            <div class="content">
                <div class="row">
                            <div class="col-md-12">
                                <label for="name">Nama Kelas<span class="required">*</span> </label>
                                <input class="form-control" type="text" name="name" id="name" placeholder="contoh: 5 Sains" required>
                                <br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="form">Tingkatan<span class="required">*</span></label>
                                <select id="form" class="form-control" name="form">
                                    <option value="" selected>- Pilih Tingkatan -</option>

                                    <option value="peralihan">Peralihan</option>
                                    <option value="1">Tingkatan 1</option>
                                    <option value="2">Tingkatan 2</option>
                                    <option value="3">Tingkatan 3</option>

                                    <option value="4">Tingkatan 4</option>
                                    <option value="5">Tingkatan 5</option>

                                </select>
                                <br>
                            </div>

                            <div class="col-md-6">
                                <label for="type">Jenis<span class="required">*</span></label>
                                <select id="type" class="form-control" name="type">
                                    <option value="" selected>- Pilih Jenis Kelas -</option>
                                    <option value="kelas cemerlang">Kelas Cemerlang</option>
                                    <option value="kelas biasa">Kelas Biasa</option>
                                </select>
                                <br>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-md-12">
                                <label for="remarks">Komen</label>
                                <textarea class="form-control" name="remarks" id="remarks" placeholder="komen"></textarea>
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