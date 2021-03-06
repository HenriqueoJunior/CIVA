<%@page import="model.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Transformando os dados que foram colocados na seção
    // em um objeto pessoa novamente

    Pessoa pessoa = (Pessoa) session.getAttribute("dados");

    // Verificando se o objeto pessoa não existe e se não é usuário
    if ((pessoa == null) || (!session.getAttribute("perfil").equals("gestor-nacional"))) {
        // Caso for uma das duas opções
        // Redirecionar para o login
        response.sendRedirect("../login/");

    }

    // Caso contrário é um usuário válido, pode entrar na página

%>
<%@include file="header.jspf"%>
    <script src="../public/assets/js/gestor-nacional/gerenciar-gerente.js" defer></script>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <!-- Navbar --------------------------------------------->
        <%@ include file="navbar.jspf" %>
        <!-- /.navbar ------------------------------------------------------->

        <!-- MENU Main Sidebar Container ------------------------------------>
        <%@ include file="menu.jspf" %>

        <!-- Content Wrapper. Contains page content -------------------------->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Gerenciar Gerente</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="./pesquisar-gerente.jsp">Voltar</a></li>
                                <li class="breadcrumb-item active">Gerenciar Gerente</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header ---------------------------------------------->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <!---------------------------------------------------------------->

                    <div class="row">
                        <div class="col-12 mb-4">
                            <form action="">
                                <div class="input-group">
                                    <input type="search" class="form-control form-control-lg" placeholder="Insira o codigo civa do portador">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-lg btn-primary">
                                            Pesquisar
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- DADOS PORTADOR -->
                    <div class="row mb-3">

                        <div class="col-12">
                            <div class="card card-primary">

                                <div class="card-header">
                                    <h3 class="card-title">Dados Gerente</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form id="form-gerenciar-gerente" action="POST">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="form-group col-xl-12">
                                                <label for="identity">C&oacute;digo CIVA</label>
                                                <input type="text" class="form-control" id="identity" value="USA1223456789" disabled>
                                            </div>
                                        </div>
                                        <hr>
                                        <%@include file="../partials/dadospessoais-ps-disabled.jspf" %>
                                        <hr>
                                        <%@include file="../partials/enderecos-disabled.jspf" %>
                                        <hr>
                                        <%@include file="../partials/contatos-disabled.jspf" %>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 row">
                        <div class="mb-3 mt-3">
                            <a href="vincular-unidade-gestor.jsp" class="btn btn-primary btn-lg">Vincular Nova unidade</a>
                        </div>
                    </div>
                    <!-- TABELA VACINAS -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Unidades Vinculadas</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body table-responsive p-0">
                                    <table id="test-table" class="table table-hover text-nowrap">
                                        <thead>
                                            <tr>
                                                <th style="cursor: pointer;">Nome</th>
                                                <th style="cursor: pointer;">Estado</th>
                                                <th style="cursor: pointer;">C&oacute;digo Postal</th>
                                                <th style="cursor: pointer;">Identificador</th>
                                                <th>Desvincular Unidade</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Hopital Pan</td>
                                                <td>Rio de Janeiro</td>
                                                <td>12016-102</td>
                                                <td><span class="tag tag-success">215648</span></td>
                                                <td><input class="btn btn-block" type="checkbox"></td>
                                            </tr>
                                            <tr>
                                                <td>Hopital Pano</td>
                                                <td>Rio de Janeiro</td>
                                                <td>12016-102</td>
                                                <td><span class="tag tag-success">215648</span></td>
                                                <td><input class="btn btn-block" type="checkbox"></td>
                                            </tr>
                                            <tr>
                                                <td>Hopital Paninho</td>
                                                <td>Rio de Janeiro</td>
                                                <td>12016-102</td>
                                                <td><span class="tag tag-success">215648</span></td>
                                                <td><input class="btn btn-block" type="checkbox"></td>
                                            </tr>
                                            <tr>
                                                <td>Hopital Pan</td>
                                                <td>Rio de Janeiro</td>
                                                <td>12016-102</td>
                                                <td><span class="tag tag-success">215648</span></td>
                                                <td><input class="btn btn-block" type="checkbox"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                    <div class="col-12 row">
                        <div class="mb-3 mt-3">
                            <button type="button" class="btn btn-primary btn-lg" id="salvar">Salvar</button>
                        </div>
                    </div>

                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
                <div class="modal fade" id="modal-default" style="display: none;" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Dados alterados com sucesso!</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">Ã</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p></p>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href = './pesquisar-gerente.jsp'">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                </div>
                <!-- /.content -->
            </div>

            <!-- Main Footer -->
            <%@include file="footer.jspf"%>
        </div>
        <!-- ./wrapper -->
    </div>
</body>

</html>
