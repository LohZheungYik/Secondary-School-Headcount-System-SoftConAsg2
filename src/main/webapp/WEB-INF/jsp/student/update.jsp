<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:genericpage>
    <jsp:body>
        <link rel="stylesheet" href="/css/form.css"/>
        <script src="/js/ManageStudent/saveStudentEdit.js"></script>

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

        <input type="hidden" id="studentId" name="studentId" value="${message}" />

        <div class="title-box">
            <div class="title-text">
                <h3><i onclick="window.location.href='/student/index'" class="pure-material-button-contained back-btn fa fa-arrow-left"></i></h3>
                <h3 class="title mdc-typography--headline2">Borang Penyuntingan Pelajar</h3>
            </div>
        </div>

        <div class="body-box card card-4">
            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <label for="name">Nama Pelajar<span class="required">*</span> </label>
                        <input class="form-control" type="text" name="name" id="name" placeholder="contoh: Ali bin Ahmad" required>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <label for="ic">No. IC<span class="required">*</span> </label>
                        <input disabled class="form-control" type="text" name="ic" id="ic" placeholder="98010108942" required>
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