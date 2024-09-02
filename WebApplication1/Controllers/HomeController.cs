using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebTiendaOnLine.Models;


namespace c.Controllers
{
    public class HomeController : Controller
    {

        static List<Tienda.Core.Entities.Producto> Producto = new List<Tienda.Core.Entities.Producto>().ToList();
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {               
            
            Producto = Tienda.Core.Business.Productos.GetProductos(3);
            ViewBag.NombreEmpresa = "CYS";


            return View(Producto);
         
        }

        public ActionResult MostrarProducto(Tienda.Core.Business.Productos producto)
        {
            try
            {
                
                var respuesta = Tienda.Core.Business.Productos.GetProductos(3);

                var listaProductos = respuesta;               
            
                return Json(new { mensaje = "Los datos se actualizarón correctamente !!!", listaProductos, status = true, respuesta = 0 });
              
            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
