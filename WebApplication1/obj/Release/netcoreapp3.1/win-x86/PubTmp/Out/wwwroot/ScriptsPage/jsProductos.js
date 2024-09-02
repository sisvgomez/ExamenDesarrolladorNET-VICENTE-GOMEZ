$(document).ready(function () {

    Productos.Eventos();
});
var removeAllOptionsSelect = function (element_class_or_id) {
    var element = $(element_class_or_id + " option");
    $.each(element, function (i, v) {
        value = v.value;
        $(element_class_or_id + " option[value=" + value + "]").remove();
    });
};
Productos = {
    Eventos: function () {

        $('#categoria').on('change', function (e) {
            // Fetch form to apply custom Bootstrap validation
          
           
            var data = {

              
            };

            $.ajax({
                type: 'POST',
                data: '',
                url: '/AdminProducto/llenarCombo'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {
                   
                    var idValueCategoria = $("#categoria").val();
                  
                    removeAllOptionsSelect("#subCategoria");
                    $("#subCategoria").append('<option value="0">---Seleccione Subcategoria---</option>');
                    $.each(request.listacombosubCategoria, function (index) {
                          
                        if (parseInt(request.listacombosubCategoria[index].idCategoria) === parseInt(idValueCategoria)) {
                         
                            $("#subCategoria").append('<option value="' + request.listacombosubCategoria[index].idSubCategoria + '">' + request.listacombosubCategoria[index].subCategoria + '</option>');
                        }
                    });
                  
                  
                }

            }).fail(function () {

            });

        });


        //$('#selectTipo').on('click', function (e) {
        //    // Fetch form to apply custom Bootstrap validation
        //    var form = $("#formCasas");

        //    if (form[0].checkValidity() === false) {


        //        form.addClass('was-validated');
        //        event.preventDefault();

        //        event.stopPropagation();

        //        return;
        //    }
        //    var pleaseWaitDiv = $('<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1 style="color:white">Procesando...</h1></div><div class="modal-body"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div></div>');
        //       pleaseWaitDiv.modal();
         
        //    var data = {

        //        idPropietarios: $("#idPropietarios").val(),
        //        idArrendatarios: $("#idArrendatarios").val(),
        //        numero: $("#numero").val(),
        //        fechaInicio: $("#fechaInicio").val(),
        //        idUsuarioAlta: 1,
        //        idUsuarioModifica: 1
            
                   
        //    };
           
        //    $.ajax({
        //        type: 'POST',
        //        data: data,
        //        url: './ListHouses/AltaCasas'  //controller/Metodo
        //    }).done(function (request) {
        //        if (request.status) {
        //            var tabla  = $('#dt-Casas').DataTable();
        //            tabla.clear();
        //            $.each(request.listaCasas, function (index) {
        //                // alert("id= "+data[index].id+" name="+data[index].name);
        //                tabla.row.add([
        //                    request.listaCasas[index].numero,
        //                    request.listaCasas[index].arrendatario,
        //                    request.listaCasas[index].propietario,
        //                    '<button class="btnEditar btn btn-sm btn-primary btn-icon waves-effect waves-themed" id="' + request.listaCasas[index].numero + '"  type="button"><i class="fal fa-edit"></i></button> <button class="btnCargar btn btn-sm btn-primary btn-icon waves-effect waves-themed" id="' + request.listaCasas[index].numero + '"  type="button"><i class="fal fa-folder"></i></button><button class="btnEliminar btn btn-sm btn-primary btn-icon waves-effect waves-themed" id="' + request.listaCasas[index].numero + '"  type="button"><i class="fal fa-trash"></i></button>'
                          
        //                ]).draw();
                     
        //            });
        //            pleaseWaitDiv.modal('hide'); 
        //            alert(request.mensaje);
        //            $("#modalCasas").modal("hide");
        //        }
        //        else {
        //            pleaseWaitDiv.modal('hide');
        //            alert(request.mensaje);
        //        }
        //    }).fail(function () {
        //        pleaseWaitDiv.modal('hide');
        //        alert("Ocurrio una excepcion Casas, revise los datos e intente nuevamente");
        //    });

        //});

        //$('#btnActualizar').on('click', function (e) {

        //    var pleaseWaitDiv = $('<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1 style="color:white">Procesando...</h1></div><div class="modal-body"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div></div>');
        //    pleaseWaitDiv.modal();
                     

        //    var data = {

        //        folio: $("#numHide").val(),
        //        idPropietarios: $("#idPropietarios").val(),
        //        idArrendatarios: $("#idArrendatarios").val(),
        //        numero: $("#numero").val(),
        //        fechaInicio: $("#fechaInicio").val(),
        //        idUsuarioAlta: 1,
        //        idUsuarioModifica: 1
             

        //    };

        //    $.ajax({
        //        type: 'POST',
        //        data: data,
        //        url: './ListHouses/ActualizaCasas'  //controller/Metodo
        //    }).done(function (request) {
        //        if (request.status) {
        //            var tabla = $('#dt-Casas').DataTable();
        //            tabla.clear();
        //            $.each(request.listaCasas, function (index) {
        //                // alert("id= "+data[index].id+" name="+data[index].name);
        //                tabla.row.add([
        //                    request.listaCasas[index].numero,
        //                    request.listaCasas[index].arrendatario,
        //                    request.listaCasas[index].propietario,
        //                    '<button class="btnEditar btn btn-sm btn-primary btn-icon waves-effect waves-themed" id="' + request.listaCasas[index].folio + '" type="button"><i class="fal fa-edit"></i></button> <button class="btnCargar btn btn-sm btn-primary btn-icon waves-effect waves-themed" id="' + request.listaCasas[index].folio + '" type="button"><i class="fal fa-folder"></i></button><button class="btnEliminar btn btn-sm btn-primary btn-icon waves-effect waves-themed" id="' + request.listaCasas[index].folio + '" type="button"><i class="fal fa-trash"></i></button>'

        //                ]).draw();
        //            });
        //            $("#modalCasas").modal("hide");
        //            pleaseWaitDiv.modal('hide');
        //            alert(request.mensaje);

        //        }
        //        else {
        //            pleaseWaitDiv.modal('hide');
        //            alert(request.mensaje);
        //        }
        //        $("#btnGuardar").show();
        //        $("#btnActualizar").hide();
        //    }).fail(function () {
        //        pleaseWaitDiv.modal('hide');
        //        alert("Ocurrio una excepcion en el Habitante, revise los datos e intente nuevamente");
        //    });

        //});
        //$('#btnMuestraModal').on('click', function (e) {
        //    $("#btnGuardar").show();
        //    $("#btnActualizar").hide();
        //});

        $(document).on('click', 'button.btnIniciar', function () {
          
          
            $.ajax({
                type: 'POST',
                data: { },
                url: '/Carrito/Iniciar'  //controller/Metodo
            }).done(function (request) {
             

            }).fail(function () {
                
            });


        });

        $(document).on('click', 'a.btnMuestraModal', function () {

        
            $("#modalAcerca").modal("show");
            $.ajax({
                type: 'POST',
                data: {},
                url: '/Prueba'  //controller/Metodo
            }).done(function (request) {

                $("#modalAcerca").modal("hide");
            }).fail(function () {

            });
         

        });
        $(document).on('click', 'button.btnMuestraAltaProducto', function () {


           
            $.ajax({
                type: 'POST',
                data: {},
                url: ''  //controller/Metodo
            }).done(function (request) {

                window.location.href = '/AdminProducto';
            }).fail(function () {

            });


        });


        $(document).on('click', 'a.btnMuestraModalContactanos', function () {


            $("#modalContactanos").modal("show");
            $.ajax({
                type: 'POST',
                data: {},
                url: '/Prueba'  //controller/Metodo
            }).done(function (request) {

                $("#modalContactanos").modal("hide");
            }).fail(function () {

            });


        });
        $(document).on('click', 'a.btnCarrito', function () {

            $.ajax({
                type: 'POST',
                data: {},
                url: '/Carrito/Index'  //controller/Metodo

            }).done(function (request) {

                window.location.href = '/Carrito/Index';
                //location.href = '/Carrito/Index';

            }).fail(function () {
                //pleaseWaitDiv.modal('hide');
                //alert("Ocurrio una excepcion en la casa, revise los datos e intente nuevamente");
            });


        });
        //$('#btnCerrar').on('click', function (e) {
            
        //    //$("#modalAcerca").modal("hide");
        //    //$('.modal fade').hide();
        //    $('.modal-backdrop').hide(); // for black background
        //    $('body').removeClass('modal-open'); // For scroll run
        //    $('#modalAcerca').modal('hide'); 
        //    //$.ajax({
        //    //    type: 'POST',
        //    //    data: {},
        //    //    url: '/Prueba'  //controller/Metodo
        //    //}).done(function (request) {

        //    //    $("#modalAcerca").modal("hide");
        //    //}).fail(function () {

        //    //});
           
        //});
        $(document).on('click', 'button.btnEliminar', function () {

            var idValue = $(this).attr('id'); //get id value

            $("#numFolio").val(idValue),
            $("#VentanaConfirmacion").modal("show");
        });
        $(document).on('click', 'button.btnRegresar', function () {

            window.location.href = '/tablaProductos';

        });

        $('#btnAceptarEliminar').on('click', function (e) {
            var pleaseWaitDiv = $('<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1 style="color:white">Procesando...</h1></div><div class="modal-body"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div></div>');
            pleaseWaitDiv.modal();


            var data = {

                folio: $("#numFolio").val()

            };

            $.ajax({
                type: 'POST',
                data: data,
                url: './tablaProductos/EliminarProducto'  //controller/Metodo
            }).done(function (request) {
                if (request.status) {

                    window.location.href = '/tablaProductos';
                    //var tabla = $('#dt-Productos').DataTable();
                    //tabla.clear();
                    //$.each(request.listaProductos, function (index) {

                        
                    //    tabla.row.add([
                    //        request.listaProductos[index].NomProducto,
                    //        request.listaProductos[index].ClaveProducto,
                    //        request.listaProductos[index].Precio,
                    //        request.listaProductos[index].categoria,
                    //        request.listaProductos[index].subCategoria,
                    //        request.listaProductos[index].oferta,
                    //        '<button class="btnEditar btn btn-sm btn-primary btn-icon waves-effect waves-themed w-100" id="' + request.listaProductos[index].folio + '" type="button"><i class="fal fa-edit"></i></button><button class="btnEliminar btn btn-sm btn-primary btn-icon waves-effect waves-themed w-100" id="' + request.listaProductos[index].folio + '" type="button"><i class="fal fa-trash"></i></button>'

                    //    ]).draw();
                   



                    $("#VentanaConfirmacion").modal("hide");

                    pleaseWaitDiv.modal('hide');



                    alert(request.mensaje);
                }
                else {
                    pleaseWaitDiv.modal('hide');
                    alert(request.mensaje);
                }
               
            }).fail(function () {
                pleaseWaitDiv.modal('hide');
                alert("Ocurrio una excepcion en el cliente, revise los datos e intente nuevamente");
            });

        });


        $(document).on('click', 'button.btnEditar', function () {

            var idValue = $(this).attr('id'); //get id value
            $.ajax({
                type: 'POST',
                data: {idValue},
                url: '/AdminProducto'  //controller/Metodo

            }).done(function (request) {
                window.location.href = '/AdminProducto/index?id=' + idValue;
              
          
            }).fail(function () {
                //pleaseWaitDiv.modal('hide');
                //alert("Ocurrio una excepcion en la casa, revise los datos e intente nuevamente");
            });
        });



    }



};
$(document).on('click', 'button.btnRegistrar---', function () {

    var data = {

    };

    $.ajax({
        type: 'POST',
        data: data,
        url: '/AdminProducto/RegistrarProducto'  //controller/Metodo
    }).done(function (request) {
        if (request.status) {

            swal("Producto Registrado");
            window.location.href = '/AdminProducto/RegistrarProducto';
        }

    }).fail(function () {
        alert("Ocurrio una excepcion en el cliente, revise los datos e intente nuevamente");
    });

});