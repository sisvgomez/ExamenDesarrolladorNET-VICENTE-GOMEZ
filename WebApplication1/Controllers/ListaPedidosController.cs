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
    
    public class ListaPedidosController : Controller
    {
        static List<Tienda.Core.Entities.ListaPedidos> Pedidos = new List<Tienda.Core.Entities.ListaPedidos>().ToList();
        public IActionResult Index()
        {
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            return View(Pedidos);
        }

        public IActionResult ListaPedidos()
        {
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            var FechaInicio = HttpContext.Request.Form["FechaInicio"].ToString();
            var FechaFin = HttpContext.Request.Form["FechaFin"].ToString();
            int IdEmpresa = Convert.ToInt32(ViewBag.empresa);              
            Pedidos = Tienda.Core.Business.DatosPedidos.ListadePedidosFechas(IdEmpresa, FechaInicio, FechaFin);
           
            return View("Index", Pedidos);

        }
    }
}