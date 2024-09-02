using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebTiendaOnLine.Controllers
{
    public class tablaProductosController : Controller
    {
        public ActionResult Index()
        {
            //var sesion = WebAppAdmonCondominiumJquery.Utils.AdminSessionUsuario.GetSessionUsuario();
            //if (sesion == null)
            //{
            //    return RedirectToAction("Index", "Login");
            //}

            var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("Invitado", "Invitado");
            //  var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");

            if (HttpContext.Session.GetString("iniciar") != null)
            {
                var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
            }
            else
            {
                return RedirectToAction("Index", "Login");
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
            ViewBag.productoOferta = Tienda.Core.Business.Productos.GetProductosOferta(usuario.IdEmpresa);
            ViewBag.bandejaProductos = Tienda.Core.Business.Productos.GetProductos(usuario.IdEmpresa);
         
            return View();
        }
     


          public ActionResult EliminarProducto(string folio)
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
                else
                {
                    return RedirectToAction("Index", "Login");
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

                var listaProductos = Tienda.Core.Business.Productos.Eliminar(folio, usuario.IdEmpresa, usuario.IdUsuario);
                ViewBag.bandejaProductos = Tienda.Core.Business.Productos.GetProductos(usuario.IdEmpresa);
                return Json(new { mensaje = "El  artículo  se Elimino correctamente!!!", listaProductos, status = true, respuesta = 0 });

                            
            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }

        }

    }
}