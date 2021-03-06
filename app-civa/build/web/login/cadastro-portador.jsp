
<%@include file="header.jspf"%>
    <script src="../public/dist/js/trata-dados.js" defer></script>
    <script defer>
        $('#modal-default').modal('hide');
    </script>
</head>

<body class="content-wrapper" >
    <!-- Main content -->

    <!-- Default box -->
    <div class="card d-flex align-items-center justify-content-center mb-0">
        <div class="card-body row">
            <div class="card card-primary card-outline" style="min-width: 800px;">
                <div class="card-header">
                    <h3 class="card-title">Dados Pessoais</h3>
                </div>

                <!-- /.card-header -->
                <!-- form start -->

                <form id="form-cad-portador">
                    <div class="card-body">                     
                        <%@ include file="../partials/dadospessoais-cadastro.jspf" %>
                        <hr>
                        <%@ include file="../partials/enderecos-cadastro.jspf" %>
                        <hr>
                        <%@ include file="../partials/contatos-cadastro.jspf" %>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Li e concordo com os <a href="./termo-uso.jsp">Termos de Uso e Pol&iacute;ticas de Privacidade.</a></label>
                        </div>
                        <div class="mb-3 mt-3 d-flex justify-content-center">
                            <a href="./index.jsp" class="btn btn-secondary btn-lg mr-3">Voltar</a>
                            <button type="submit" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modal-default">Cadastrar</button>
                        </div>
                    </div>
                    <!-- Main Footer -->
                    <%@include file="footer.jspf" %>
                    <%@include file="conta-criada.jspf" %>
            </div>
        </div>

        <!-- Content Wrapper. Contains page content -------------------------->

</body>
</html>
