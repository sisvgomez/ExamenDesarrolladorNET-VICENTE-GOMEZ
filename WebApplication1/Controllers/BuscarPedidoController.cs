using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebTiendaOnLine.Models;
using Microsoft.AspNetCore.Http;
using Tienda.Core.Business;
using System;
using System.Collections.Generic;
using System.Collections;
using Tienda.Core.Entities;
using Microsoft.AspNetCore.Session;

namespace WebTiendaOnLine.Controllers
{
    public class BuscarPedidoController : Controller
    {
        static List<Tienda.Core.Entities.Venta> Venta = new List<Tienda.Core.Entities.Venta>().ToList();
        public IActionResult Index()
        {
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");
            ViewBag.NumPedido = 0;
            return View(Venta);
        }


        public IActionResult Buscar()
        {
                    ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
                    ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");

                   var NumPedido = HttpContext.Request.Form["NumPedido"].ToString();
                    ViewBag.NumPedido = NumPedido;
                    
                    Venta = Tienda.Core.Business.DatosPedidos.BuscarPedido(ViewBag.empresa, NumPedido);
                    ViewBag.Status = Tienda.Core.Business.DatosPedidos.StatusPedido(ViewBag.empresa, NumPedido);
                    return View("Index", Venta);
          
        }

    }
}