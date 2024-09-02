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
    public class CrearPedidoController : Controller
    {
        static List<Tienda.Core.Entities.Venta> Venta = new List<Tienda.Core.Entities.Venta>().ToList();
        public IActionResult Index()
        {
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");
            //List<Tienda.Core.Entities.Venta> Venta = new List<Tienda.Core.Entities.Venta>();

            return View(Venta);


        }

        public IActionResult Buscar()
        {
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");
            if (HttpContext.Request.Form["buscar"].ToString() != "")
            {
                var ClaveProducto = HttpContext.Request.Form["buscar"].ToString();
                int Cantidad = 0;
                if (HttpContext.Request.Form["Cantidad"].ToString() != "")
                {
                    Cantidad = Convert.ToInt16(HttpContext.Request.Form["Cantidad"].ToString());
                }
                else
                {
                    Cantidad = 1;
                }
                    Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, Convert.ToInt32(ViewBag.empresa));
                if(datos.ClaveProducto!=null)
                { 
                Venta.Add(new Tienda.Core.Entities.Venta() {IdProducto= datos.IdProducto, ClaveProducto = ClaveProducto,Nombre = datos.Nombre,Descripcion = datos.Descripcion,Precio=datos.Precio,Cantidad=Cantidad, Subtotal=datos.Precio, Imagen = datos.Imagen });
                }
                return View("Index", Venta);
            }
            return View("Index",Venta);
        }
        public IActionResult BuscarQuery()
        {
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");
            if (HttpContext.Request.Query["ClaveProducto"].ToString()!="")
            {
                var ClaveProducto = HttpContext.Request.Query["ClaveProducto"].ToString();

                Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, Convert.ToInt32(ViewBag.empresa));
                Venta.Add(new Tienda.Core.Entities.Venta() { IdProducto = datos.IdProducto, ClaveProducto = ClaveProducto, Nombre = datos.Nombre, Descripcion = datos.Descripcion, Precio = datos.Precio, Cantidad = 1, Subtotal = datos.Precio,Imagen=datos.Imagen });

                return View("Index", Venta);
            }
            return View("Index", Venta);
        }
        public IActionResult Iniciar()
        {
            ViewBag.usuario = HttpContext.Session.GetString("Usuario").ToString();
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            Venta.Clear();
            return View("Index", Venta);
        }
        public IActionResult EliminarProducto()
        {
                ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            
                var ClaveProducto = HttpContext.Request.Query["ClaveProducto"].ToString();              
            
                Venta.RemoveAll(Venta=> Venta.ClaveProducto == ClaveProducto);
                return View("Index", Venta);
            
            
        }
        public IActionResult CalcularSubtotal()
        {
            ViewBag.empresa = HttpContext.Session.GetString("Empresa").ToString();
            ViewBag.NombreEmpresa = HttpContext.Session.GetString("NombreEmpresa");
            var ClaveProducto = HttpContext.Request.Form["ClaveProducto"].ToString();
            var Cantidad = HttpContext.Request.Form["Cantidad"].ToString();
            var Precio = HttpContext.Request.Form["Precio"].ToString();
            var subtotal = Convert.ToDecimal(Precio) * Convert.ToInt32(Cantidad);

            //Venta.First(d(Venta => Venta.ClaveProducto == ClaveProducto). = listaCeldaKey;
            var elementIndex = Venta.FindIndex(Venta => Venta.ClaveProducto == ClaveProducto);
            Venta[elementIndex].Subtotal= subtotal;
            Venta[elementIndex].Cantidad = Convert.ToInt32(Cantidad);


            return View("Index", Venta);

        }
        public IActionResult RegistrarCliente()
        {
            Tienda.Core.Entities.DatosCliente Cliente = new Tienda.Core.Entities.DatosCliente();

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
            Cliente.IdUsuario = Convert.ToInt32(HttpContext.Session.GetString("IdUsuario").ToString());
            var model = Cliente;
            Tienda.Core.Business.DatosCliente.InsertCliente(model);
            ViewBag.Message = "El Cliente ha sido registrado ";
            }
            else
            {
                ViewBag.MessageCliente = "El Cliente ya existe";
            }
            return View("Index", Venta);
        }
        public IActionResult EnviarPedido()
        {  //Guardar clientes
           

            //Guardar Ventas/Pedidos
            Tienda.Core.Entities.Venta Pedidos = new Tienda.Core.Entities.Venta();
            var total= HttpContext.Request.Form["total"].ToString();
            var empresa = HttpContext.Session.GetString("Empresa").ToString();
            var usuario = HttpContext.Session.GetString("Usuario").ToString();
            var idusuario = HttpContext.Session.GetString("IdUsuario").ToString();
            //Aqui me quede InsertePedidoIdCliente
            if (HttpContext.Session.GetString("IdCliente") == null)
            {
                int NumPedido = Tienda.Core.Business.DatosPedidos.InsertePedido(Venta, Convert.ToInt32(empresa), Convert.ToInt32(idusuario), Convert.ToDouble(total));
                ViewBag.Message = "El Folio de su pedido generado es :" + NumPedido;
            }
            else
            {
                int IdCliente = Convert.ToInt32(HttpContext.Session.GetString("IdCliente"));
                int NumPedido = Tienda.Core.Business.DatosPedidos.InsertePedidoIdCliente(Venta, Convert.ToInt32(empresa), Convert.ToInt32(idusuario), Convert.ToDouble(total),IdCliente);
                ViewBag.Message = "El Folio de su pedido generado es :" + NumPedido;
            }
            Venta.Clear();
            HttpContext.Session.Remove("IdCliente");
              

            return View("Index",Venta);

            //return View("Index", Venta);

        }
       
        //[HttpPost]
        //public JsonResult ObtenerDesarrollador()
        //{
        //    try
        //    {
        //        Desarrollador model;
        //        if (Session["idDesarrollador"] != null)
        //        {
        //            var idDesarrollador = (long)Session["idDesarrollador"];
        //            model = AdministracionDesarrollos.ObtenerDesarrollador(idDesarrollador, null, null);
        //        }
        //        else
        //        {
        //            model = AdministracionDesarrollos.ObtenerDesarrollador();
        //        }

        //        return Json(new { Status = "OK", Result = model });
        //    }
        //    catch (Exception)
        //    {
        //        return Json(new { Status = "ERROR" };
        //    }
    }
    }
