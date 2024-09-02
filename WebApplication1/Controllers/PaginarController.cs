using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace WebTiendaOnLine.Controllers
{
    public class PaginarController : Controller
    {
        public IActionResult Index()
        {

            //ViewBag.Categorias = Tienda.Core.Business.Productos.GetCategorias();



            return View();
        }

        public ActionResult MostrarProducto(string categoria)
        {
            try
            {

                var respuesta = Tienda.Core.Business.Productos.GetProductos(3);
       
                var listaProductos = respuesta;

                return Json(new { mensaje = "Los datos se actualizarón correctamente !!!", listaProductos, status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }

        public ActionResult FiltrarProducto(string idCategoria, string idSubCategoria,string textoBuscar)
        {
            try
            {

                var respuesta = Tienda.Core.Business.Productos.GetProductosFiltrado(idCategoria, idSubCategoria, textoBuscar,3);

                var listaProductos = respuesta;

                return Json(new { mensaje = "Los datos se actualizarón correctamente !!!", listaProductos, status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }

    }
}