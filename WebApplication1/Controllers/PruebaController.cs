using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;


namespace WebTiendaOnLine.Controllers
{
  
    public class PruebaController : Controller
    {
        public IActionResult Index(string buscar, string numcantidad, string valorTotal, string tamano, int textCantidad)

        {
            var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("invitado", "invitado");
          // var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");
            if (HttpContext.Session.GetString("iniciar")!= null)
            {
                var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
            }
      
            ViewBag.usuario = usuario.usuario;
            ViewBag.idrol = usuario.idRol;
            ViewBag.empresa = usuario.NombreEmpresa;
            ViewBag.idEmpresa = usuario.IdEmpresa;
            ViewBag.dirEmpresa= usuario.dirEmpresa;
            ViewBag.telempresa = usuario.telEmpresa;
            ViewBag.correoEmpresa = usuario.correoEmpresa;
            ViewBag.imagenEmpresa = usuario.imagenEmpresa;
            ViewBag.imagen2 = usuario.imagen2;
            ViewBag.imagen3 = usuario.imagen3;
            ViewBag.movil = usuario.movil;
            ViewBag.movil2 = usuario.movil2;
            ViewBag.categorias = Tienda.Core.Business.Productos.GetCategorias(ViewBag.idEmpresa);
            ViewBag.subCategorias = Tienda.Core.Business.Productos.GetSubCategorias(ViewBag.idEmpresa);
            ViewBag.temaSubCategorias = Tienda.Core.Business.Productos.GettemaSubCategorias(ViewBag.idEmpresa);           
            ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "8");  //cambio LUCY
            ViewBag.productoOferta = Tienda.Core.Business.Productos.GetProductosOferta(usuario.IdEmpresa);
            var catalogos = Tienda.Core.Business.Productos.GetCatalogos(1, usuario.IdEmpresa);
            ViewBag.temas = catalogos.catTemas;
            var resPro = Tienda.Core.Business.Productos.GetProductos(Convert.ToInt32(ViewBag.idEmpresa));
            var respuesta = Carrito.carrito.ListaCarritoSinAgregar();
            ViewBag.productos = resPro;
            if (buscar != "")
            {
                var ClaveProducto = buscar;
                int Cantidad = 0;
                if (numcantidad != "")
                {
                 
                    Cantidad = Convert.ToInt16(numcantidad);
                    if (Cantidad == 0)
                    {
                        Cantidad = textCantidad;
                        valorTotal = Convert.ToString(Convert.ToDecimal(valorTotal) * Cantidad);
                    }
                }
                else
                {
                    Cantidad = 1;
                }
                //Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, Convert.ToInt32(ViewBag.idEmpresa));
                //if (datos.ClaveProducto != null)
                //{
                //    Venta.Add(new Tienda.Core.Entities.Venta() { IdProducto = datos.IdProducto, ClaveProducto = ClaveProducto, Nombre = datos.Nombre, Descripcion = datos.Descripcion, Precio = datos.Precio, Cantidad = Cantidad, Subtotal = datos.Precio, Imagen = datos.Imagen });
                //}
                //ViewBag.listaProductos = Venta;
                respuesta = Carrito.carrito.ListaCarrito(ClaveProducto, Convert.ToInt32(ViewBag.idEmpresa), Cantidad, valorTotal, tamano);
                //ViewBag.listaProductos = respuesta;

            }
            ViewBag.listaProductos = respuesta;

            return View();
           
        }


        [HttpPost]
        public ActionResult agregarListaCarrito(string buscar, string numcantidad, string valorTotal, string tamano)
        {
            var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("Invitado", "Invitado");
          //  var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");

            if (HttpContext.Session.GetString("iniciar") != null)
            {
                var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
            }
            ViewBag.usuario = usuario.usuario;
            ViewBag.idRol = usuario.idRol;
            ViewBag.empresa = usuario.NombreEmpresa;
            ViewBag.idEmpresa = usuario.IdEmpresa;
            ViewBag.dirEmpresa = usuario.dirEmpresa;
            ViewBag.telempresa = usuario.telEmpresa;
            ViewBag.correoEmpresa = usuario.correoEmpresa;
            ViewBag.imagenEmpresa = usuario.imagenEmpresa;
            ViewBag.imagen2 = usuario.imagen2;
            ViewBag.imagen3 = usuario.imagen3;
            ViewBag.movil = usuario.movil;
            ViewBag.movil2 = usuario.movil2;
            ViewBag.categorias = Tienda.Core.Business.Productos.GetCategorias(ViewBag.idEmpresa);
            ViewBag.subCategorias = Tienda.Core.Business.Productos.GetSubCategorias(ViewBag.idEmpresa);
            ViewBag.temaSubCategorias = Tienda.Core.Business.Productos.GettemaSubCategorias(ViewBag.idEmpresa);
            ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "4");
          

            if (buscar!= "")
            {
                var ClaveProducto = buscar;
                int Cantidad = 0;
                if (numcantidad != "")
                {
                    Cantidad = Convert.ToInt16(numcantidad);
                }
                else
                {
                    Cantidad = 1;
                }
                //Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, Convert.ToInt32(ViewBag.idEmpresa));
                //if (datos.ClaveProducto != null)
                //{
                //    Venta.Add(new Tienda.Core.Entities.Venta() { IdProducto = datos.IdProducto, ClaveProducto = ClaveProducto, Nombre = datos.Nombre, Descripcion = datos.Descripcion, Precio = datos.Precio, Cantidad = Cantidad, Subtotal = datos.Precio, Imagen = datos.Imagen });
                //}
                //ViewBag.listaProductos = Venta;
                ViewBag.listaProductos = Carrito.carrito.ListaCarrito(ClaveProducto, Convert.ToInt32(ViewBag.idEmpresa), Cantidad, valorTotal, tamano);
               

            }

            return View("Index");
        }
        public ActionResult FiltrarProducto(string idCategoria, string idSubCategoria, string textoBuscar)
        {
            try
            {
                var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("Invitado", "Invitado");
                //var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");

                if (HttpContext.Session.GetString("iniciar") != null)
                {
                    var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                    var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                    usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
                }
                ViewBag.usuario = usuario.usuario;
                ViewBag.idRol = usuario.idRol;
                ViewBag.empresa = usuario.NombreEmpresa;
                ViewBag.idEmpresa = usuario.IdEmpresa;
                ViewBag.movil = usuario.movil;
                ViewBag.movil2 = usuario.movil2;
                ViewBag.imagen2 = usuario.imagen2;
                ViewBag.imagen3 = usuario.imagen3;
                var respuesta = Tienda.Core.Business.Productos.GetProductosFiltrado(idCategoria, idSubCategoria, textoBuscar, Convert.ToInt32(ViewBag.idEmpresa));

                if (idCategoria == "0")
                {
                    ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "8"); // cambio Lucy
                }
                else
                {
                    ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), idCategoria);
                }
                var listamenuIzq = ViewBag.subCategoriasMenuIzq;

                var listaProductos = respuesta;






                return Json(new { mensaje = "Los datos se actualizarón correctamente !!!", listaProductos, listamenuIzq, status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }

        }


    public ActionResult FiltrarProductoTema(string idEmpresa, string idTema, string idCategoria)
    {
        try
        {
                 var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("Invitado", "Invitado");
                //var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");

                if (HttpContext.Session.GetString("iniciar") != null)
                {
                    var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                    var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                    usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
                }
                ViewBag.usuario = usuario.usuario;
                ViewBag.idRol = usuario.idRol;
                ViewBag.empresa = usuario.NombreEmpresa;
                ViewBag.idEmpresa = usuario.IdEmpresa;
                ViewBag.movil = usuario.movil;
                ViewBag.movil2 = usuario.movil2;
                ViewBag.imagen2 = usuario.imagen2;
                ViewBag.imagen3 = usuario.imagen3;
                var respuesta = Tienda.Core.Business.Productos.GetProductosFiltradoTemas(idEmpresa,idTema, idCategoria);
            ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "8"); // cambio Lucy 4 por 8

                if (idCategoria == "0")
            {
                ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "8");
            }
            else
            {
                ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), idCategoria);
            }
            var listamenuIzq = ViewBag.subCategoriasMenuIzq;

            var listaProductos = respuesta;






            return Json(new { mensaje = "Los datos se actualizarón correctamente !!!", listaProductos, listamenuIzq, status = true, respuesta = "True" });

        }
        catch
        {
            return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
        }
        }
    }
}