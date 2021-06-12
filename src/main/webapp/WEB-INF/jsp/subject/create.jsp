<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:body>
        <link rel="stylesheet" href="/css/form.css"/>
        <script src="/js/ManageSubject/saveSubject.js"></script>

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
                <h3><i onclick="window.location.href='/subject/index'" class="pure-material-button-contained back-btn fa fa-arrow-left"></i></h3>
                <h3 class="title mdc-typography--headline2">Borang Penambahan Mata Pelajaran Baru</h3>
            </div>
        </div>

        <div class="body-box card card-4">
            <div class="content">
                <div class="row">
                            <div class="col-md-12">
                                <label for="name">Nama Mata Pelajaran<span class="required">*</span> </label>
                                <input class="form-control" type="text" name="name" id="name" placeholder="contoh: Bahasa Melayu" required>
                                <br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="code">Kod Mata Pelajaran<span class="required">*</span> </label>
                                <input class="form-control" type="text" id="code" placeholder="1103" name="code" required />
                                <br>

                            </div>
                            <div class="col-md-6">
                                <label for="type">Jenis<span class="required">*</span> </label>
                                <select class="form-control" type="text" id="type" name="type" required>
                                    <option value="" selected>- Pilih Jenis Mata Pelajaran -</option>
                                    <option value="wajib lulus">Wajib Lulus</option>
                                    <option value="tidak wajib lulus">Tidak Wajib Lulus</option>
                                </select>
                                <br>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="level">Peringkat<span class="required">*</span></label>
                                <select class="form-control" id="level">
                                    <option value="">- Pilih Peringkat -</option>
                                    <option value="Menengah Bawah">Menengah Bawah</option>
                                    <option value="Menengah Atas">Menengah Atas</option>
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