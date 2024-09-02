using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;


namespace WebTiendaOnLine.Controllers
{
    public class PrincipalPinturasController : Controller
    {
        public IActionResult Index()
        {
            var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("invitado", "invitado");
            // var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");
            if (HttpContext.Session.GetString("iniciar") != null)
            {
                var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
            }

            ViewBag.usuario = usuario.usuario;
            ViewBag.idrol = usuario.idRol;
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
            ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "8");  //cambio LUCY
            ViewBag.productoOferta = Tienda.Core.Business.Productos.GetProductosOferta(usuario.IdEmpresa);
            var catalogos = Tienda.Core.Business.Productos.GetCatalogos(1, usuario.IdEmpresa);
            ViewBag.temas = catalogos.catTemas;
            var resPro = Tienda.Core.Business.Productos.GetProductos(Convert.ToInt32(ViewBag.idEmpresa));
            //var resProNuevo = Tienda.Core.Business.Productos.GetProductosNuevo(Convert.ToInt32(ViewBag.idEmpresa));
            var respuesta = Carrito.carrito.ListaCarritoSinAgregar();

            // var ClaveProducto = HttpContext.Request.Query["ClaveProducto"].ToString();
            if (HttpContext.Request.Query["idCategoria"].ToString() != "")
            {
                var idCategoria = HttpContext.Request.Query["idCategoria"].ToString();
                var idSubCategoria = HttpContext.Request.Query["idSubCategoria"].ToString();
                if (HttpContext.Request.Query["idCategoria"].ToString() != "" && idCategoria != "0")
                {
                    resPro = Tienda.Core.Business.Productos.GetProductosFiltrado(idCategoria, idSubCategoria, "0", Convert.ToInt32(ViewBag.idEmpresa));
                }
                else
                { resPro = Tienda.Core.Business.Productos.GetProductosNuevo(Convert.ToInt32(ViewBag.idEmpresa)); }

            }



            ViewBag.productos = resPro;
            //ViewBag.productosNuevos = resProNuevo;
            ViewBag.listaProductos = respuesta;

            return View();

        }

        [HttpPost]
        public ActionResult FiltrarProducto(string idCategoria, string idSubCategoria, string textoBuscar)
        {

            var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("Invitado", "Invitado");
            // var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");
            if (HttpContext.Session.GetString("iniciar") != null)
            {
                var usuarioLogin = HttpContext.Session.GetString("Usuario").ToString();
                var contrasenaLogin = HttpContext.Session.GetString("contrasena").ToString();
                usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioLogin, contrasenaLogin);
            }

            ViewBag.usuario = usuario.usuario;
            ViewBag.idrol = usuario.idRol;
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
            ViewBag.subCategoriasMenuIzq = Tienda.Core.Business.Productos.GetSubCategoriasMenuIzq(usuario.IdEmpresa.ToString(), "8");  //cambio LUCY
            ViewBag.productoOferta = Tienda.Core.Business.Productos.GetProductosOferta(usuario.IdEmpresa);
            var catalogos = Tienda.Core.Business.Productos.GetCatalogos(1, usuario.IdEmpresa);
            ViewBag.temas = catalogos.catTemas;
            var resPro = Tienda.Core.Business.Productos.GetProductos(Convert.ToInt32(ViewBag.idEmpresa));
            //var resProNuevo = Tienda.Core.Business.Productos.GetProductosNuevo(Convert.ToInt32(ViewBag.idEmpresa));
            var respuesta = Carrito.carrito.ListaCarritoSinAgregar();

            if (idCategoria != null && idCategoria != "0")
            {
                resPro = Tienda.Core.Business.Productos.GetProductosFiltrado(idCategoria, idSubCategoria, textoBuscar, Convert.ToInt32(ViewBag.idEmpresa));

            }
            else { }
            if (idCategoria == "0" )
            {
                resPro = Tienda.Core.Business.Productos.GetProductosNuevo(Convert.ToInt32(ViewBag.idEmpresa));
            }
            ViewBag.productos = resPro;
            ViewBag.listaProductos = respuesta;
            //ViewBag.productosNuevos = resProNuevo;

            return View("Index");



        }

    }
}