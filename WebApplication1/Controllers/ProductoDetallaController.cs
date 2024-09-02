using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using Tienda.Core.Business;


using System.Web;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace WebTiendaOnLine.Controllers
{
    public class ProductoDetallaController : Controller
         
    {
        Tienda.Core.Entities.Producto Productos = new Tienda.Core.Entities.Producto();
        public IActionResult Index()
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
            ViewBag.dirEmpresa = usuario.dirEmpresa;
            ViewBag.telempresa = usuario.telEmpresa;
            ViewBag.correoEmpresa = usuario.correoEmpresa;
            ViewBag.imagenEmpresa = usuario.imagenEmpresa;
            ViewBag.imagen2 = usuario.imagen2;
            ViewBag.imagen3 = usuario.imagen3;
            ViewBag.idEmpresa = usuario.IdEmpresa;
            ViewBag.movil = usuario.movil;
            ViewBag.movil2 = usuario.movil2;
            ViewBag.categorias = Tienda.Core.Business.Productos.GetCategorias(ViewBag.idEmpresa);
          
            ViewBag.subCategorias = Tienda.Core.Business.Productos.GetSubCategorias(ViewBag.idEmpresa);
           ViewBag.IdProducto=HttpContext.Request.Query["id"].ToString();

            var IdProducto = HttpContext.Request.Query["id"].ToString();

            Productos = Tienda.Core.Business.Consultar.ObtenerProducto(Convert.ToInt32(IdProducto), Convert.ToInt32(ViewBag.idEmpresa));
            ViewBag.idSubCategoria = Productos.IdSubCategoria;


            //Catalogos
            var catalogos = Tienda.Core.Business.Productos.GetCatalogos(Convert.ToInt32(Productos.IdSubCategoria), usuario.IdEmpresa);


            //ViewBag.catTamano = new SelectList(catalogos.catTamano, "id", "descripcion");
            ViewBag.catTamano = catalogos.catTamano;
            ViewBag.catTipo = catalogos.catTipo;
            ViewBag.catCantidad = catalogos.catCantidad;
            ViewBag.catImpresion = catalogos.catImpresion;
            ViewBag.catTerminado = catalogos.catTerminado;
            ViewBag.catFolio = catalogos.catFolio;
            ViewBag.catNoCopias = catalogos.catNoCopias;
            ViewBag.catCantidadRango = catalogos.catCantidadRango;
            ViewBag.sumaTotal = 0;

            var respuesta = Carrito.carrito.ListaCarritoSinAgregar();
            ViewBag.listaProductos = respuesta;

            
            return View(Productos);
        }



        public ActionResult llenarCombo(string id, string total)
        {
            try
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
                ViewBag.dirEmpresa = usuario.dirEmpresa;
                ViewBag.telempresa = usuario.telEmpresa;
                ViewBag.correoEmpresa = usuario.correoEmpresa;
                ViewBag.imagenEmpresa = usuario.imagenEmpresa;
                ViewBag.imagen2 = usuario.imagen2;
                ViewBag.imagen3 = usuario.imagen3;
                ViewBag.idEmpresa = usuario.IdEmpresa;
                ViewBag.movil = usuario.movil;
                ViewBag.movil2 = usuario.movil2;
                ViewBag.categorias = Tienda.Core.Business.Productos.GetCategorias(ViewBag.idEmpresa);
                ViewBag.subCategorias = Tienda.Core.Business.Productos.GetSubCategorias(ViewBag.idEmpresa);
                ViewBag.IdProducto = id;
                ViewBag.sumaTotal = total;
     

                Productos = Tienda.Core.Business.Consultar.ObtenerProducto(Convert.ToInt32(id), Convert.ToInt32(ViewBag.idEmpresa));


                var catalogos = Tienda.Core.Business.Productos.GetCatalogos(Convert.ToInt32(Productos.IdSubCategoria), usuario.IdEmpresa);
                //ViewBag.catTipo = catalogos.catTipo;
                var listacomboTamano = catalogos.catTamano;
                var listacomboImpresion = catalogos.catImpresion;
                var listacomboTipo = catalogos.catTipo;
                var listacomboCantidad = catalogos.catCantidad;
                var listacomboCantidadRango = catalogos.catCantidadRango;
               
                //var listacomboImpresion = catalogos.catImpresion;


                //var listaProductos = respuesta;


                return Json(new { mensaje = "Los datos del combo  !!!", listacomboCantidad, listacomboTamano , listacomboImpresion, listacomboTipo, listacomboCantidadRango, status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }
        public ActionResult enviarCorreo(string cuentaCorreo,string Cbody)
        {
            try
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
                ViewBag.dirEmpresa = usuario.dirEmpresa;
                ViewBag.telempresa = usuario.telEmpresa;
                ViewBag.correoEmpresa = usuario.correoEmpresa;
                ViewBag.imagenEmpresa = usuario.imagenEmpresa;
                ViewBag.imagen2 = usuario.imagen2;
                ViewBag.imagen3 = usuario.imagen3;
                ViewBag.idEmpresa = usuario.IdEmpresa;
                ViewBag.movil = usuario.movil;
                ViewBag.movil2 = usuario.movil2;
                bool respuesta = Tienda.Core.Business.Mail.Send(cuentaCorreo, Cbody,  "Cotización", ViewBag.correoEmpresa, "");



                return Json(new { mensaje = "Los datos del combo  !!!",  status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }
    }
}