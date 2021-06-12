<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

        <t:genericpage>
            <jsp:body>

                <script src="/js/ManageExam/allExamList.js"></script>

                <style>
                    @media only screen and (max-width: 576px) {
                        .title-text {
                            margin-left: 10px;
                        }
                        .title-text h3 {
                            font-size: 18px;
                        }
                    }
                    
                    .btn-add {
                        vertical-align: initial;
                        margin-left: 5px;
                    }
                    
                    td button {
                        margin-bottom: 10px;
                        /*width: 97px;*/
                    }
                    
                    .mobile-column {
                        display: none;
                    }
                    
                    @media only screen and (max-width: 767px) {
                        .btn-add {
                            margin-left: 0px;
                            margin-bottom: .5rem;
                        }
                        .desktop-column {
                            display: none;
                        }
                        .mobile-column {
                            display: block;
                        }
                    }
                </style>

                <div class="title-box">
                    <div class="title-text">
                        <h3><i onclick="window.location.href='/home'" class="pure-material-button-contained back-btn fa fa-arrow-left"></i></h3>
                        <h3 class="title mdc-typography--headline2">Senarai Peperiksaan</h3>
                    </div>
                </div>

                <div class="body-box card card-4">
                    <div class="content">

                        <button onclick='window.location.href="/exam/create/"' class='pure-material-button-contained' style='margin-left: 5px; margin-bottom: 5px'><i class='fas fa-plus'></i><span style='margin-left: 5px; ' class='btn-text'>Tambah Baru</span></button>

                        <table class="ui celled table" id="data-table" cellspacing="0" style="width:100%">
                            <thead>
                                <tr>
                                    <th class="th-sm desktop-column">
                                        Nama Peperiksaan
                                    </th>
                                    <th class="th-sm desktop-column">
                                        Jenis Markah
                                    </th>
                                    <th class="th-sm desktop-column">
                                        Tahun Peperiksaan
                                    </th>
                                    <th class="th-sm desktop-column">
                                        Peringkat
                                    </th>
                                    <th class="th-sm" style="display:none">
                                        Mobile
                                    </th>
                                    <th class="th-sm desktop-column">
                                        <!-- Tindakan -->
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </jsp:body>
        </t:genericpage>