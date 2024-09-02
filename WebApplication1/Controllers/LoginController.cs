using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Globalization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace WebTiendaOnLine.Controllers
{
    public class LoginController : Controller
    {
        public IActionResult Index(string buscar, string numcantidad, string valorTotal, string tamano, int textCantidad)
        {
            var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("Invitado", "Invitado");
            //  var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario("adminLucy", "admin");

            ViewBag.usuario = usuario.usuario;
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
            var catalogos = Tienda.Core.Business.Productos.GetCatalogos(1, usuario.IdEmpresa);
            ViewBag.temas = catalogos.catTemas;
            var resPro = Tienda.Core.Business.Productos.GetProductos(Convert.ToInt32(ViewBag.idEmpresa));
            var respuesta = Carrito.carrito.ListaCarritoSinAgregar();
            ViewBag.productos = resPro;
            ViewBag.IdProducto = 0;
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
        public IActionResult AccesoUsuario(string usuarioI, string contrasenaI)
        {
            try
            {
                var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(usuarioI, contrasenaI);

                if (usuario != null)
                 {
                     HttpContext.Session.SetString("iniciar", usuario.usuario);
                     HttpContext.Session.SetString("Usuario",usuario.usuario);
                     HttpContext.Session.SetString("contrasena",usuario.Contrasenausuario);
                    return RedirectToAction("Index", "Prueba");
                }
                return RedirectToAction("Index", "Login");
            }
            catch (Exception ex)
            {
                throw new Exception("Ocurrio una excepció, favor de intentar nuevamente, si el problema persiste favor de notificar la administrador del sistema!!!");
            }
        }

        public IActionResult SalirUsuario()
        {
            try
            {



                HttpContext.Session.Clear();
                HttpContext.Session.Remove("iniciar");
               
                return RedirectToAction("Index", "Prueba");
            }
            catch (Exception ex)
            {
                throw new Exception("Ocurrio una excepció, favor de intentar nuevamente, si el problema persiste favor de notificar la administrador del sistema!!!");
            }
        }
    }
}