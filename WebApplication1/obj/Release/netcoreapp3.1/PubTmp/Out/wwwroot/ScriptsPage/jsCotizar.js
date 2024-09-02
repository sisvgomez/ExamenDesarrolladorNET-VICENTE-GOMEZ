document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('input[type=text]').forEach(node => node.addEventListener('keypress', e => {
        if (e.keyCode === 13) {
            e.preventDefault();
        }
    }))
});
window.onload =
    function iniciarCotizacion() {
        var idValueTipo = $("#tipo").val();
        var idSubCategoria = $("#idSubCategoria").val();
        var idTamano = $("#tamano").val();

        var suma = 0;
        //alert(idValueTipo);
        var data = {

            id: $("#idProducto").val(),

            total: suma
        };

        $.ajax({
            type: 'POST',
            data: data,
            url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
        }).done(function (request) {
            if (request.status) {

                removeAllOptionsSelect("#impresion");

                $.each(request.listacomboImpresion, function (index) {
                    //alert(idTamano);
                    if (request.listacomboImpresion[index].idTamano === parseInt(idTamano)) {

                        $("#impresion").append('<option value="' + request.listacomboImpresion[index].id + '">' + request.listacomboImpresion[index].descripcion + '</option>');
                    }
                });

                var idImpresion = $("#impresion").val();

                removeAllOptionsSelect("#tipo");

                $.each(request.listacomboTipo, function (index) {

                    if (request.listacomboTipo[index].idImpresion === parseInt(idImpresion)) {

                        $("#tipo").append('<option value="' + request.listacomboTipo[index].id + '">' + request.listacomboTipo[index].descripcion + '</option>');
                    }
                });



                idValueTipo = $("#tipo").val();



                var arrayValoresCantidad;
                var numcantidad;
                var costoCantidad;

                if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                    removeAllOptionsSelect("#cantidad");
                    $.each(request.listacomboCantidad, function (index) {

                        if (request.listacomboCantidad[index].idTipo === idValueTipo) {
                            //alert("hola");
                            $("#cantidad").append('<option value="' + request.listacomboCantidad[index].costo + '-' + request.listacomboCantidad[index].numCantidad + '">' + request.listacomboCantidad[index].descripcion + '</option>');

                            //$("#cantidad").append('<option value="30.00-8">' + request.listacomboCantidad[index].descripcion + '</option>');
                        }

                    });

                    arrayValoresCantidad = $("#cantidad").val().split("-");

                    costoCantidad = arrayValoresCantidad[0];
                    numcantidad = arrayValoresCantidad[1];
                }
                else {
                    numcantidad = $("#textCantidad").val();
                    $.each(request.listacomboCantidadRango, function (index) {

                        if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                            costoCantidad = request.listacomboCantidadRango[index].costo;

                        }
                    });

                }

                //var CostoImpresion = $("#impresion").val();

                var costoTerminado;
                if (idSubCategoria !== '48') {
                    costoTerminado = $("#terminado").val();
                }
                else {
                    costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                }

                if (costoTerminado === undefined) {
                    costoTerminado = 0;
                }
                var CostoFolio = $("#folio").val();
                var CostoNoCopias = $("#noCopias").val();

                if (CostoFolio === undefined) {
                    CostoFolio = 0;
                }
                if (CostoNoCopias === undefined) {
                    CostoNoCopias = 0;
                }
                if (idSubCategoria !== '47' && idSubCategoria !== '10' && idSubCategoria !== '35') {

                    suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                }
                else {
                    suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                }
                document.getElementById("valorTotal").value = suma;
                document.getElementById("numcantidad").value = numcantidad;
                var costounidad = suma / numcantidad;
                $('#divTotal').html(
                    '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                    '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                );
                //******
            }

        }).fail(function () {

        });
    };

var removeAllOptionsSelect = function (element_class_or_id) {
    var element = $(element_class_or_id + " option");
    $.each(element, function (i, v) {
        value = v.value;
        $(element_class_or_id + " option[value=" + value + "]").remove();
    });
};

$(document).ready(function () {

    Cotizar.Eventos();
});

Cotizar = {
    Eventos: function () {
        $('#tamano').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation
            var idValueTipo = $("#tipo").val();
            var idSubCategoria = $("#idSubCategoria").val();
            var idTamano = $("#tamano").val();
            var suma = 0;
            var data = {

                id: $("#idProducto").val(),

                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****

                    removeAllOptionsSelect("#impresion");

                    $.each(request.listacomboImpresion, function (index) {
                        //alert(idTamano);
                        if (request.listacomboImpresion[index].idTamano === parseInt(idTamano)) {

                            $("#impresion").append('<option value="' + request.listacomboImpresion[index].id + '">' + request.listacomboImpresion[index].descripcion + '</option>');
                        }
                    });

                    var idImpresion = $("#impresion").val();

                    removeAllOptionsSelect("#tipo");

                    $.each(request.listacomboTipo, function (index) {

                        if (request.listacomboTipo[index].idImpresion === parseInt(idImpresion)) {

                            $("#tipo").append('<option value="' + request.listacomboTipo[index].id + '">' + request.listacomboTipo[index].descripcion + '</option>');
                        }
                    });



                    idValueTipo = $("#tipo").val();



                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;
                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {

                        arrayValoresCantidad = $("#cantidad").val().split("-");
                        numcantidad = arrayValoresCantidad[1];
                        costoCantidad = arrayValoresCantidad[0];
                    }
                    else {


                        numcantidad = $("#textCantidad").val();


                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }

                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******

                }

            }).fail(function () {

            });

        });
        $('#impresion').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation

            var idSubCategoria = $("#idSubCategoria").val();
            var idTamano = $("#tamano").val();
            var suma = 0;
            var data = {

                id: $("#idProducto").val(),
                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****



                    var idImpresion = $("#impresion").val();

                    removeAllOptionsSelect("#tipo");

                    $.each(request.listacomboTipo, function (index) {

                        if (request.listacomboTipo[index].idImpresion === parseInt(idImpresion)) {

                            $("#tipo").append('<option value="' + request.listacomboTipo[index].id + '">' + request.listacomboTipo[index].descripcion + '</option>');
                        }
                    });



                    idValueTipo = $("#tipo").val();



                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;


                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        removeAllOptionsSelect("#cantidad");
                        $.each(request.listacomboCantidad, function (index) {

                            if (request.listacomboCantidad[index].idTipo === idValueTipo) {
                                //alert("hola");
                                $("#cantidad").append('<option value="' + request.listacomboCantidad[index].costo + '-' + request.listacomboCantidad[index].numCantidad + '">' + request.listacomboCantidad[index].descripcion + '</option>');

                                //$("#cantidad").append('<option value="30.00-8">' + request.listacomboCantidad[index].descripcion + '</option>');
                            }

                        });

                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }


                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******

                }

            }).fail(function () {

            });

        });
        $('#tipo').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation

            var idSubCategoria = $("#idSubCategoria").val();
            var suma = 0;

            var data = {

                id: $("#idProducto").val(),
                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {


                    idValueTipo = $("#tipo").val();

                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;

                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        removeAllOptionsSelect("#cantidad");
                        $.each(request.listacomboCantidad, function (index) {

                            if (request.listacomboCantidad[index].idTipo === idValueTipo) {
                                //alert("hola");
                                $("#cantidad").append('<option value="' + request.listacomboCantidad[index].costo + '-' + request.listacomboCantidad[index].numCantidad + '">' + request.listacomboCantidad[index].descripcion + '</option>');

                                //$("#cantidad").append('<option value="30.00-8">' + request.listacomboCantidad[index].descripcion + '</option>');
                            }

                        });

                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }


                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );

                    //******
                }
            }).fail(function () {

            });

        });
        $('#textCantidad').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation



            var idValueTipo = $("#tipo").val();
            var idSubCategoria = $("#idSubCategoria").val();
            var suma = 0;
            var data = {

                id: $("#idProducto").val(),

                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****
                    idValueTipo = $("#tipo").val();

                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;


                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        $.each(request.listacomboCantidad, function (index) {

                            if (request.listacomboCantidad[index].idTipo === idValueTipo) {
                                //alert("hola");
                                $("#cantidad").append('<option value="' + request.listacomboCantidad[index].costo + '-' + request.listacomboCantidad[index].numCantidad + '">' + request.listacomboCantidad[index].descripcion + '</option>');

                                //$("#cantidad").append('<option value="30.00-8">' + request.listacomboCantidad[index].descripcion + '</option>');
                            }

                        });

                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }


                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******
                }

            }).fail(function () {

            });

        });
        $('#cantidad').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation

            var idSubCategoria = $("#idSubCategoria").val();
            var suma = 0;
            var data = {

                id: $("#idProducto").val(),

                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****

                    idValueTipo = $("#tipo").val();

                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;


                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }


                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******

                }

            }).fail(function () {

            });

        });
        $('#noCopias').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation
            var idValueTipo = $("#tipo").val();
            var idSubCategoria = $("#idSubCategoria").val();
            var suma = 0;
            var data = {

                id: $("#idProducto").val(),
                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****

                    idValueTipo = $("#tipo").val();

                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;


                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }


                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******

                }

            }).fail(function () {

            });

        });

        $('#terminado').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation
            var idValueTipo = $("#tipo").val();
            var idSubCategoria = $("#idSubCategoria").val();
            var suma = 0;

            var data = {

                id: $("#idProducto").val(),
                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****

                    idValueTipo = $("#tipo").val();

                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;

                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }


                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }
                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******
                }

            }).fail(function () {

            });

        });
        $('#folio').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation
            var idValueTipo = $("#tipo").val();
            var idSubCategoria = $("#idSubCategoria").val();
            var suma = 0;

            var data = {

                id: $("#idProducto").val(),
                total: suma
            };

            $.ajax({
                type: 'POST',
                data: data,
                url: '/ProductoDetalla/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    //*****

                    idValueTipo = $("#tipo").val();

                    var arrayValoresCantidad;
                    var numcantidad;
                    var costoCantidad;


                    if (idSubCategoria !== '48' && idSubCategoria !== '2' && idSubCategoria !== '38' && idSubCategoria !== '39' && idSubCategoria !== '49' && idSubCategoria !== '1' && idSubCategoria !== '16') {
                        arrayValoresCantidad = $("#cantidad").val().split("-");

                        costoCantidad = arrayValoresCantidad[0];
                        numcantidad = arrayValoresCantidad[1];
                    }
                    else {
                        numcantidad = $("#textCantidad").val();
                        $.each(request.listacomboCantidadRango, function (index) {

                            if ((numcantidad >= parseInt(request.listacomboCantidadRango[index].valorInicial) && numcantidad <= parseInt(request.listacomboCantidadRango[index].valorFinal)) && request.listacomboCantidadRango[index].idTipo === idValueTipo) {
                                costoCantidad = request.listacomboCantidadRango[index].costo;

                            }
                        });

                    }

                    //var CostoImpresion = $("#impresion").val();

                    var costoTerminado;
                    if (idSubCategoria !== '48') {
                        costoTerminado = $("#terminado").val();
                    }
                    else {
                        costoTerminado = parseFloat($("#terminado").val()) * parseInt($("#textCantidad").val());
                    }

                    if (costoTerminado === undefined) {
                        costoTerminado = 0;
                    }
                    var CostoFolio = $("#folio").val();
                    var CostoNoCopias = $("#noCopias").val();

                    if (CostoFolio === undefined) {
                        CostoFolio = 0;
                    }
                    if (CostoNoCopias === undefined) {
                        CostoNoCopias = 0;
                    }

                    if (idSubCategoria !== '47' && idSubCategoria !== '10') {
                        suma = parseFloat(costoCantidad * numcantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    else {
                        suma = parseFloat(costoCantidad) + parseFloat(costoTerminado) + parseFloat(CostoFolio * numcantidad) + parseFloat(CostoNoCopias);
                    }
                    document.getElementById("valorTotal").value = suma;
                    document.getElementById("numcantidad").value = numcantidad;
                    var costounidad = suma / numcantidad;
                    $('#divTotal').html(
                        '<h3>Costo  $<label name = "valorTotal" id = "valorTotal" >' + suma + '</label></h3>' +
                        '<h6 style="color:#FF0000";>c/u  $<label name = "costoUnidad" id = "costoUnidad" style="color:#FF0000"; >' + costounidad + '</label></h6>'
                    );
                    //******
                }

            }).fail(function () {

            });

        });



    }
};



