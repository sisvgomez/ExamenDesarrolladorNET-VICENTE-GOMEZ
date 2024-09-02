using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebTiendaOnLine.Carrito
{

    public static class carrito
    {
        static List<Tienda.Core.Entities.Venta> Venta = new List<Tienda.Core.Entities.Venta>().ToList();
        static int contador = 0;
        public static List<Tienda.Core.Entities.Venta> ListaCarrito(string ClaveProducto, int idEmpresa,int cantidad, string valorTotal, string tamano )
        {

            Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, idEmpresa);
            if (datos.ClaveProducto != null)
            {
                contador++;
                Venta.Add(new Tienda.Core.Entities.Venta() {idLista=contador.ToString(), IdProducto = datos.IdProducto, ClaveProducto = ClaveProducto, Nombre = datos.Nombre, Descripcion = datos.Descripcion, Precio = Convert.ToDecimal(valorTotal)/Convert.ToDecimal(cantidad), Cantidad = cantidad, Subtotal = Convert.ToDecimal(valorTotal), Imagen = datos.Imagen });
            }

            return Venta;

        }

     
        public static List<Tienda.Core.Entities.Venta> ListaCarritoSinAgregar()
        {

            //Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, idEmpresa);
            //if (datos.ClaveProducto != null)
            //{
            //    Venta.Add(new Tienda.Core.Entities.Venta() { IdProducto = datos.IdProducto, ClaveProducto = ClaveProducto, Nombre = datos.Nombre, Descripcion = datos.Descripcion, Precio = datos.Precio, Cantidad = cantidad, Subtotal = datos.Precio, Imagen = datos.Imagen });
            //}

            return Venta;

        }
        public static List<Tienda.Core.Entities.Venta> ListaCarritoEliminar(string ClaveProducto, string idLista)
        {

            //Tienda.Core.Entities.Venta datos = Tienda.Core.Business.Ventas.ObtenerProducto(ClaveProducto, idEmpresa);
            //if (datos.ClaveProducto != null)
            //{
            //    Venta.Add(new Tienda.Core.Entities.Venta() { IdProducto = datos.IdProducto, ClaveProducto = ClaveProducto, Nombre = datos.Nombre, Descripcion = datos.Descripcion, Precio = datos.Precio, Cantidad = cantidad, Subtotal = datos.Precio, Imagen = datos.Imagen });
            //}
            Venta.RemoveAll(Venta => Venta.ClaveProducto == ClaveProducto && Venta.idLista==idLista) ;
            return Venta;

        }

        public static List<Tienda.Core.Entities.Venta> LimpiarCarrito()
        {

            
            Venta.Clear();
            contador = 0;
            return Venta;

        }
    }
}
