document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('input[type=text]').forEach(node => node.addEventListener('keypress', e => {
        if (e.keyCode === 13) {
            e.preventDefault();
        }
    }));
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


//mostrarOcultarTablas("tabla2");


$('#buscar').on('click', function (e) {

    var textoBuscar = $("#txtBuscar").val();     
    
    CargarProducto(0, 0, textoBuscar);

    $("#txtBuscar").val('');
    //$("#buscar").focus();       
 
        });


var pointer;
var current;
var pages;
var itemsPage;
var listmenu;
var names = [];
function CargarProducto(idCategoria, idSubCategoria, textoBuscar) {

   
 
    elem1 = document.getElementById("tabla1");
    elem1.style.display = 'block';
    elem = document.getElementById("tabla2");
    elem.style.display = 'none';

    $.ajax({
        type: 'POST',
        data: { idCategoria, idSubCategoria,textoBuscar },
    url: './Prueba/FiltrarProducto'  //controller/Metodo
    }).done(function (request) {
        
        if (request.status) {
          
            //menú izquierdo
            var mnuIzq = JSON.stringify(request.listamenuIzq);
           // alert(mnuIzq);
             listmenu = JSON.parse(mnuIzq);

            var contenidomenuIzq = "";
            for (var i = 0; i < listmenu.length; i++) {   //porque emmpezaba en 0?

                contenidomenuIzq = contenidomenuIzq + '<li class= "nav-item"><a class="nav-link" href="javascript:CargarProducto(' + listmenu[i].idCategoria + ',' + listmenu[i].idSubCategoria + ',0)">' + listmenu[i].subCategoria + '</a></li>';

            }
           // alert(contenidomenuIzq);

            $('#menuIzq').html(
                '<ul class="nav nav-list flex-column">' +
                contenidomenuIzq +
                '</ul>'
            );

            // fin menu izquierdo

            //var names =request.listaProductos;     
            var z = JSON.stringify(request.listaProductos);
            names = JSON.parse(z);
           
          
             pointer = 0;
             current = 1;
           
            pages = Math.ceil(names.length / $('.card').length);

            itemsPage = $('.card').length;

            update(pointer, 'next');
            $('#pag').html(current + '/' + pages);

            $('#prev').removeClass('disabled').prop('disabled', true);
            $('#next').removeClass('disabled').prop('disabled', false);
            if (pages === 1) {

                $('#next').hide();
                $('#prev').hide();

            } else {


                $('#next').show();
                $('#prev').show();
            }

        }
        else {
            $('#next').hide();
            $('#prev').hide();
  
            current = 0;
            pages = 0;
          

        }




        




    

        //$(document).ready(function () {

           
    });
}
function CargarProductoTema(idEmpresa, idTema, idCategoria) {


  
    elem1 = document.getElementById("tabla1");
    elem1.style.display = 'block';
    elem = document.getElementById("tabla2");
    elem.style.display = 'none';



    $.ajax({
        type: 'POST',
        data: { idEmpresa, idTema, idCategoria },
        url: './Prueba/FiltrarProductoTema'  //controller/Metodo
    }).done(function (request) {

        if (request.status) {
            
            //menú izquierdo
            var mnuIzq = JSON.stringify(request.listamenuIzq);
            listmenu = JSON.parse(mnuIzq);
           
            var contenidomenuIzq = "";
            for (var i = 1; i < listmenu.length; i++) {

                contenidomenuIzq = contenidomenuIzq + '<li class= "nav-item"><a class="nav-link" href="javascript:CargarProducto(' + listmenu[i].idCategoria + ',' + listmenu[i].idSubCategoria + ',0)">' + listmenu[i].subCategoria + '</a></li>';

            }

            $('#menuIzq').html(
                '<ul class="nav nav-list flex-column">' +
                contenidomenuIzq +
                '</ul>'
            );

            // fin menu izquierdo

            //var names =request.listaProductos;     
            var z = JSON.stringify(request.listaProductos);
      
            names = JSON.parse(z);
          
           
            pointer = 0;
            current = 1;
            pages = Math.ceil(names.length / $('.card').length);

            itemsPage = $('.card').length;

            update(pointer, 'next');
            $('#pag').html(current + '/' + pages);

            $('#prev').removeClass('disabled').prop('disabled', true);
            $('#next').removeClass('disabled').prop('disabled', false);
            if (pages === 1) {

                $('#next').hide();
                $('#prev').hide();

            } else {


                $('#next').show();
                $('#prev').show();
            }

        }
        else {
            $('#next').hide();
            $('#prev').hide();
            current = 0;
            pages = 0;
            //alert("No existen productos para esa subCategoria");

        }







    });

}

$('#next').on('click', function () {

    pointer += itemsPage;
    //alert(current + '...' + pages);
    flip(pointer, 'next');

    if (current + 1 >= pages) {

        //alert("Entro a desactivar next");
        $('#next').addClass('disabled').prop('disabled', true);

    }

    current++;
    $('#pag').html(current + '/' + pages);
    $('#prev').removeClass('disabled').prop('disabled', false);
});

$('#prev').on('click', function () {
    pointer -= itemsPage;
    flip(pointer, 'prev');
    if (current - 1 === 1) {
        $('#prev').addClass('disabled').prop('disabled', true);
    }
    current--;
    $('#pag').html(current + '/' + pages);
    $('#next').removeClass('disabled').prop('disabled', false);
});

$('document').ready(function () {
    //alert(pointer);
    if (pointer === 0) {
        update(pointer, 'next');
    }
    $('#pag').html(current + '/' + pages);

});

function update(index, direction) {
    window.scrollTo(0, 0);


    var id = 1;
    var lim = index + $('.card').length;
    if (direction === 'next') {
        for (var i = index; i < lim; i++) {

            $('#card' + id + '> .front').show();

            if (typeof names[i] !== 'undefined') {
               
                $('#card' + id + '> .front').html(
                    
                    '<span class="product-thumb-info border-0">' +
                    '<a href="~/CrearPedido/BuscarQuery?ClaveProducto=' + names[i].claveProducto + '" class="add-to-cart-product bg-color-primary">' +
               
                    '<a href = "/Productodetalla/index?id=' + names[i].idProducto + '">' +
                    '<span class="product-thumb-info-image">' +
                    '<img alt="" class="img-fluid" src="/img/products/Empresa/' + names[i].nombreEmpresa+'/' + names[i].imagen + '" width="350" height="200">' +
                    '</span ></a>' +
                    '<span class="product-thumb-info-content product-thumb-info-content pl-0 bg-color-light">' +
                    '<a href="/Productodetalla/index?id=' + names[i].idProducto + '">' +
                    '<center><h6 class="text-color-primary">' + names[i].nomProducto + '</h6></center>' +
                  
                    '</a></span ></span >'

                );
            } else {
                $('#card' + id + '> .front').hide();
            }
            id++;
        }
    } else if (direction === 'prev') {
        for (i = index; i < lim; i++) {
            if ($('#card' + id + '> .front').css('display') === 'none') {
                $('#card' + id + '> .front').show();
            }
            $('#card' + id + '> .front').html(

                '<span class="product-thumb-info border-0">' +
                '<a href="~/CrearPedido/BuscarQuery?ClaveProducto=' + names[i].claveProducto + '" class="add-to-cart-product bg-color-primary">' +
             
                '<a href = "/Productodetalla/index?id=' + names[i].idProducto + '">' +
                '<span class="product-thumb-info-image">' +
                '<img alt="" class="img-fluid" src="/img/products/Empresa/' + names[i].nombreEmpresa + '/' +names[i].imagen + '" width="350" height="200">' +
                '</span ></a>' +
                '<span class="product-thumb-info-content product-thumb-info-content pl-0 bg-color-light">' +
                '<a href="/Productodetalla/index?id=' + names[i].idProducto + '">' +
                '<center><h6 class="text-color-primary">' + names[i].nomProducto + '</h6></center>' +
          
                '</a></span ></span >'
            );
            id++;
        }
    } else {
        alert('Error en la paginación');
    }
}

function flip(ptr, dir) {
    setTimeout(function () {
        $('.card').addClass('flip');
        setTimeout(function () {
            update(ptr, dir);
            $('.card').removeClass('flip');
        }, 500);
    }, 100);
}

function CargarProductoPinturas(idCategoria, idSubCategoria, textoBuscar) {


    $.ajax({
        type: 'POST',
        data: { idCategoria, idSubCategoria, textoBuscar },
        url: './Pinturas/Index'  //controller/Metodo
    }).done(function (request) {

      

        //$(document).ready(function () {


    });
}