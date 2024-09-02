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
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Server;
using System.IO;

namespace WebTiendaOnLine.Controllers
{
    public class AdminProductoController : Controller
    {

        private IHostingEnvironment Environment;

      
        public AdminProductoController(IHostingEnvironment _environment)
        {
            Environment = _environment;
        }

        [HttpPost]
        public IActionResult IndexLoad(List<IFormFile> postedFiles)
        {
            Tienda.Core.Entities.Producto Prod = new Tienda.Core.Entities.Producto();
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
            var IdEmpresa = ViewBag.idEmpresa;
            var ClaveProducto = HttpContext.Request.Form["claveproductoI"].ToString();
            bool existe = Tienda.Core.Business.Consultar.ObtenerClaveProducto(ClaveProducto, Convert.ToInt32(IdEmpresa));
            if (existe)
            {
                string wwwPath = this.Environment.WebRootPath;
                string contentPath = this.Environment.ContentRootPath;
                string NombreEmpresa = usuario.NombreEmpresa;
                string path = Path.Combine("wwwroot/img/products/Empresa/" + NombreEmpresa);
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                List<string> uploadedFiles = new List<string>();
                foreach (IFormFile postedFile in postedFiles)
                {
                    string fileName = Path.GetFileName(postedFile.FileName);
                    using (FileStream stream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        postedFile.CopyTo(stream);
                        uploadedFiles.Add(fileName);
                        Tienda.Core.Business.Consultar.ActulizarImagen(ClaveProducto.ToString(), IdEmpresa.ToString(), fileName.ToString());
                        ViewBag.Message += string.Format("Se cargo el archivo..", fileName);
                    }
                }
            }
            else
            {
                ViewBag.Message += string.Format("La clave no existe");
            }
            return View("Index");
            //return RedirectToAction("Index", "AdminProducto");
        }

        public IActionResult Index(string idValue)

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

            idValue = HttpContext.Request.Query["id"].ToString();
            ViewBag.IdProducto = idValue;
            if (idValue != "")
            {

                var listaProductos = Tienda.Core.Business.Productos.GetProducto(Convert.ToInt32(idValue), Convert.ToInt32(ViewBag.idEmpresa));
                ViewBag.nomProducto = listaProductos.NomProducto;
                ViewBag.IdCategoria= listaProductos.IdCategoria;
                ViewBag.IdSubCategoria = listaProductos.IdSubCategoria;
                ViewBag.marca = listaProductos.Marca;
                ViewBag.modelo = listaProductos.Modelo;
                ViewBag.descripcion = listaProductos.Descripcion;
                ViewBag.unidad = listaProductos.Unidad;
                ViewBag.idProveedor = listaProductos.IdProveedor;
                ViewBag.precio=listaProductos.Precio;
                ViewBag.costo = listaProductos.Costo;
                ViewBag.idTalla=listaProductos.IdTalla;
                ViewBag.idTema = listaProductos.idTema;
                ViewBag.oferta = listaProductos.oferta;
                ViewBag.claveProducto=   listaProductos.ClaveProducto;
                ViewBag.imagen = listaProductos.Imagen;
            }

            return View();

        }
        public ActionResult llenarCombo()
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
            


                

             
                //ViewBag.catTipo = catalogos.catTipo;
                var listacomboCategoria = Tienda.Core.Business.Productos.GetCategorias(ViewBag.idEmpresa);
                var listacombosubCategoria = Tienda.Core.Business.Productos.GetSubCategorias(ViewBag.idEmpresa);

                //var listacomboImpresion = catalogos.catImpresion;


                //var listaProductos = respuesta;


                return Json(new { mensaje = "Los datos del combo  !!!", listacomboCategoria, listacombosubCategoria, status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }
        public IActionResult RegistrarProducto()
        {
            Tienda.Core.Entities.Producto Prod = new Tienda.Core.Entities.Producto();
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
            var IdEmpresa = ViewBag.idEmpresa;

            
                Prod.IdProducto= HttpContext.Request.Form["idProducto"].ToString()==""?0:Convert.ToInt32(HttpContext.Request.Form["idProducto"].ToString());
                Prod.NomProducto = HttpContext.Request.Form["nombreproducto"].ToString();
                Prod.IdCategoria = Convert.ToInt32(HttpContext.Request.Form["categoria"].ToString());
                Prod.IdSubCategoria = Convert.ToInt32(HttpContext.Request.Form["subCategoria"].ToString());
                Prod.Marca = HttpContext.Request.Form["marca"].ToString();
                Prod.Modelo = HttpContext.Request.Form["modelo"].ToString();
                Prod.Descripcion = HttpContext.Request.Form["descripcion"].ToString();
                Prod.Unidad = Convert.ToInt32(HttpContext.Request.Form["unidad"].ToString());
                Prod.IdProveedor = Convert.ToInt32(HttpContext.Request.Form["proveedor"].ToString());
                Prod.Imagen = HttpContext.Request.Form["imagen"].ToString();
                //Prod.Imagen = "comodin.jpg";
                Prod.Precio = Convert.ToDecimal(HttpContext.Request.Form["precio"].ToString());
                Prod.Costo = Convert.ToDecimal(HttpContext.Request.Form["costo"].ToString());
                Prod.IdEmpresa = Convert.ToInt32(IdEmpresa);
                Prod.IdTalla = HttpContext.Request.Form["talla"].ToString();
                Prod.idTema = Convert.ToInt32(HttpContext.Request.Form["tema"].ToString());
                Prod.oferta = HttpContext.Request.Form["oferta"].ToString();
                Prod.ClaveProducto = HttpContext.Request.Form["claveproducto"].ToString();
                Prod.idUsuario= usuario.IdUsuario.ToString();
                bool existe = Tienda.Core.Business.Consultar.ObtenerClaveProducto(Prod.ClaveProducto, Convert.ToInt32(IdEmpresa));

            if(Prod.IdProducto==0)
            {
                if (!existe)
                    {                           
                        var model = Prod;
                        Tienda.Core.Business.Consultar.InsertProducto(model);
                  
                        ViewBag.Message = "El Producto ha sido registrado ";
                    }
                    else
                    {
                        ViewBag.Message = "La Clave del Producto ya existe ";
                    }
            }
            else
            {
                Tienda.Core.Business.Consultar.ActualizarProducto(Prod.IdProducto.ToString(),Prod.ClaveProducto, Prod.IdEmpresa, Prod.NomProducto, Prod.IdCategoria.ToString(), Prod.IdSubCategoria.ToString(), Prod.Marca, Prod.Modelo, Prod.Descripcion, Prod.Unidad.ToString(), Prod.IdProveedor.ToString(), Prod.Imagen, Prod.Precio.ToString(), Prod.Costo.ToString(), Prod.IdTalla, Prod.idTema.ToString(), Prod.oferta, usuario.IdUsuario.ToString());
                ViewBag.Message = "El Producto se ha actualizado ";

            }


            return View("Index",Prod);
        }

        public ActionResult llenarFormulario(string idValue)
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

                
                
                var listaProductos = Tienda.Core.Business.Productos.GetProducto(Convert.ToInt32(idValue), Convert.ToInt32(ViewBag.idEmpresa));
               



                //var listaProductos = Productos;

                //ViewBag.catTipo = catalogos.catTipo;
                var listacomboCategoria = Tienda.Core.Business.Productos.GetCategorias(ViewBag.idEmpresa);
                var listacombosubCategoria = Tienda.Core.Business.Productos.GetSubCategorias(ViewBag.idEmpresa);

                //var listacomboImpresion = catalogos.catImpresion;


                //var listaProductos = respuesta;


                return Json(new { mensaje = "Los datos del formulario !!!", listaProductos, listacomboCategoria, listacombosubCategoria, status = true, respuesta = "True" });

            }
            catch
            {
                return Json(new { mensaje = "Ocurrio una excepción, favor de reintentar", status = false, respuesta = 2 });
            }



        }




    }
}