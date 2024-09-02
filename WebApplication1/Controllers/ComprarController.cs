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
    public class ComprarController : Controller
    {
         

        public IActionResult Index()
        {
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.total = HttpContext.Request.Form["total"].ToString();
            Tienda.Core.Entities.DatosCliente Cliente = new Tienda.Core.Entities.DatosCliente();

            return View("Index", Cliente);
        }

        public IActionResult RegistrarCliente()
        {
            Tienda.Core.Entities.DatosCliente Cliente = new Tienda.Core.Entities.DatosCliente();
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.total = HttpContext.Request.Form["total"].ToString();
            var IdEmpresa = HttpContext.Session.GetString("Empresa").ToString();
       
            if (HttpContext.Session.GetString("IdCliente") == null)
            {
             
              
                Cliente.IdEstado = 1;
                Cliente.Nombre = HttpContext.Request.Form["nombre"].ToString();
                Cliente.Apellidos = HttpContext.Request.Form["apellidos"].ToString();
                Cliente.Calle = HttpContext.Request.Form["calle"].ToString();
                Cliente.NoExt = HttpContext.Request.Form["noext"].ToString();
                Cliente.NoInt = HttpContext.Request.Form["noint"].ToString();
                Cliente.CodigoPostal = HttpContext.Request.Form["codigopostal"].ToString();
                Cliente.Colonia = HttpContext.Request.Form["colonia"].ToString();
                Cliente.EntreCalles = HttpContext.Request.Form["entrecalles"].ToString();
                Cliente.Referencias = HttpContext.Request.Form["referencias"].ToString();
                Cliente.Email = HttpContext.Request.Form["correo"].ToString();
                Cliente.TelefonoMovil = HttpContext.Request.Form["telefonomovil"].ToString();
                Cliente.TelefonoFijo = HttpContext.Request.Form["telefonofijo"].ToString();
                Cliente.IdEmpresa = Convert.ToInt32(IdEmpresa);
                Cliente.IdUsuario = Convert.ToInt32(HttpContext.Session.GetString("IdUsuario").ToString());
                var model = Cliente;
                Tienda.Core.Business.DatosCliente.InsertCliente(model);
                ViewBag.Message = "El Cliente ha sido registrado ";
            }
            else
            {
                Cliente.IdEstado = 1;
                Cliente.Nombre = HttpContext.Request.Form["nombre"].ToString();
                Cliente.Apellidos = HttpContext.Request.Form["apellidos"].ToString();
                Cliente.Calle = HttpContext.Request.Form["calle"].ToString();
                Cliente.NoExt = HttpContext.Request.Form["noext"].ToString();
                Cliente.NoInt = HttpContext.Request.Form["noint"].ToString();
                Cliente.CodigoPostal = HttpContext.Request.Form["codigopostal"].ToString();
                Cliente.Colonia = HttpContext.Request.Form["colonia"].ToString();
                Cliente.EntreCalles = HttpContext.Request.Form["entrecalles"].ToString();
                Cliente.Referencias = HttpContext.Request.Form["referencias"].ToString();
                Cliente.Email = HttpContext.Request.Form["correo"].ToString();
                Cliente.TelefonoMovil = HttpContext.Request.Form["telefonomovil"].ToString();
                Cliente.TelefonoFijo = HttpContext.Request.Form["telefonofijo"].ToString();
                Cliente.IdEmpresa = Convert.ToInt32(IdEmpresa);
                Cliente.IdUsuario = Convert.ToInt32(HttpContext.Session.GetString("IdUsuario").ToString());
                var model = Cliente;
                ViewBag.MessageCliente = "El Cliente ya existe";
            }
            return View("Index",Cliente);
        }
        public IActionResult BuscarClienteIdCliente()
        {
            Tienda.Core.Entities.DatosCliente Cliente = new Tienda.Core.Entities.DatosCliente();
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.total = HttpContext.Request.Form["total"].ToString();
            ViewBag.IdCliente = HttpContext.Request.Form["BuscarCliente"].ToString();
            var IdCliente = HttpContext.Request.Form["BuscarCliente"].ToString();
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            Cliente = Tienda.Core.Business.DatosCliente.BuscarClienteId(Convert.ToInt32(ViewBag.IdCliente), Convert.ToInt32(ViewBag.empresa));      
           if (Cliente.Nombre!=null)
            {
                HttpContext.Session.SetString("IdCliente", IdCliente.ToString());
            }
            return View("Index", Cliente);

        }

    }
}