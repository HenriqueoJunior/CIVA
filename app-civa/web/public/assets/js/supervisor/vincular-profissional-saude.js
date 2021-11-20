$('.select2').select2();

let campos = ['identity', 'name', 'surname', 'genero', 'date-birth', 'nacionality', 'tipo-doc', 'doc'];


let form = $("#form-meus-dados");


$("#vincular").click(function () {

    if (tratar_campos(campos)) {
        $.get("", form.serialize(), (data, status) => {
            if (status === 'success') {
                title = 'Profissional de Sa&uacute;de vinculado com sucesso!';
                text = "Vinculaç&atilde;o realizado.";
                swalAlertSuccess(title, text, callback);
                
            } else {
                title = 'Erro!';
                text = 'C&oacute;digo CIVA n&atilde;o encontrado.';
                swalAlertError(title, text, callback);
            }
        });
    } else {
        title = 'Preencha o c&oacute;digo CIVA!';
        text = 'C&oacute;digo CIVA do Profissional de Sa&uacutede deve ser preenchido!';
        swalAlertError(title, text, callback);
    }
});


pegarPaises("nacionalidade");