using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebTiendaOnLine.Models;
using Microsoft.AspNetCore.Http;
using Tienda.Core.Business;
using System.Collections;

namespace WebTiendaOnLine.Controllers
{
    public class ProductosController : Controller
    {
        static List<Tienda.Core.Entities.Producto> Producto = new List<Tienda.Core.Entities.Producto>().ToList();
        //Tienda.Core.Entities.Venta Producto = new List<Tienda.Core.Entities.Venta();
        public IActionResult Index(int page=0)

        { 
            if (HttpContext.Session.GetString("Usuario") == null)
            {
                var Usuario = HttpContext.Request.Form["username"];
                var Pass = HttpContext.Request.Form["pwd"];
                var usuario = Tienda.Core.Business.Consultar.ObtenerInfoUsuario(Usuario, Pass);
                Tienda.Core.Business.Consultar.actualizaringreso(Usuario, Pass);
                if (usuario != null)
                {
                    ViewBag.usuario = Usuario;
                    ViewBag.empresa = usuario.IdEmpresa;
                    ViewBag.NombreEmpresa = usuario.NombreEmpresa;
                    HttpContext.Session.SetString("Usuario", Usuario);
                    HttpContext.Session.SetString("Empresa", usuario.IdEmpresa.ToString());
                    HttpContext.Session.SetString("IdUsuario", usuario.IdUsuario.ToString());
                    HttpContext.Session.SetString("NombreEmpresa", usuario.NombreEmpresa.ToString());
                    Producto = Tienda.Core.Business.Ventas.ObtenerTotalProducto(usuario.IdEmpresa);

                    //Para paginación
                    const int PageSize =8; 
                    var count = Producto.Count();
                    var ProductoM = Producto.Skip(page * PageSize).Take(PageSize).ToList();
                    this.ViewBag.MaxPage = (count / PageSize) - (count % PageSize == 0 ? 1 : 0);
                    this.ViewBag.Page = page;
                    //Producto.Add(new Tienda.Core.Entities.Venta() { IdProducto = valores.IdProducto, ClaveProducto = valores.ClaveProducto, Nombre = valores.Nombre, Descripcion = valores.Descripcion, Precio = valores.Precio, Cantidad = 1, Subtotal = valores.Precio });
                    return View(ProductoM);
                }
                return Redirect("~/Login/index");
            }
            else
            {
                ViewBag.usuario = HttpContext.Session.GetString("Usuario");
                ViewBag.empresa = HttpContext.Session.GetString("Empresa");
                ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");

                Producto = Tienda.Core.Business.Ventas.ObtenerTotalProducto(Convert.ToInt32(ViewBag.empresa));
                //Para paginación
                const int PageSize = 8; 
                var count = Producto.Count();
                var ProductoM = Producto.Skip(page * PageSize).Take(PageSize).ToList();
                this.ViewBag.MaxPage = (count / PageSize) - (count % PageSize == 0 ? 1 : 0);
                this.ViewBag.Page = page;
                return View(ProductoM);
            }
        }
    }
}