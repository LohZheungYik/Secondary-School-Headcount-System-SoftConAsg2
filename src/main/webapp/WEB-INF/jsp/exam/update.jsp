<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:genericpage>
    <jsp:body>
        <link rel="stylesheet" href="/css/form.css"/>
        <script src="/js/ManageExam/saveExamEdit.js"></script>

        <style>
            @@media only screen and (max-width: 576px) {


                .title-text {
                    margin-left: 10px;
                }

                    .title-text h3 {
                        font-size: 18px;
                    }
            }
        </style>

        <input type="hidden" id="examId" name="examId" value="${message}" />

        <div class="title-box">
            <div class="title-text">
                <h3><i onclick="window.location.href='/exam/index'" class="pure-material-button-contained back-btn fa fa-arrow-left"></i></h3>
                <h3 class="title mdc-typography--headline2">Borang Penyuntingan Peperiksaan</h3>
            </div>
        </div>

        <div class="body-box card card-4">
            <div class="content">
                <div class="row">
                            <div class="col-md-12">
                                <label for="name">Nama Periksaan <span class="required">*</span> </label>
                                <input class="form-control" type="text" name="name" id="name" placeholder="contoh: Ujian 1"  required>
                                <br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="year">Tahun Peperiksaan<span class="required">*</span> </label>
                                <input disabled class="form-control" type="text" id="year" name="year" required />
                                <br>

                            </div>
                            <div class="col-md-6">
                                <label for="markType">Jenis Markah<span class="required">*</span> </label>
                                <select disabled class="form-control" id="markType" name="markType">
                                    <option id="AR1" value="AR1">AR1</option>
                                    <option id="AR2" value="AR2">AR2</option>
                                    <option id="MarkahAkhirTahun" value="Markah Akhir Tahun">Markah Akhir Tahun</option>
                                </select>
                                <br>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="startDate">Tarikh mula<span class="required">*</span> </label>
                                <input class="form-control" type="date" id="startDate" name="startDate" required />
                                <br>

                            </div>
                            <div class="col-md-6">
                                <label for="endDate">Tarikh tamat<span class="required">*</span> </label>
                                <input class="form-control" type="date" id="endDate" name="endDate" required />
                                <br>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="type">Peringkat<span class="required">*</span> </label>
                                <select disabled class="form-control" id="type">
                                    <option id="MenengahBawah" value="Menengah Bawah">Menengah Bawah</option>
                                    <option id="MenengahAtas" value="Menengah Atas">Menengah Atas</option>
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