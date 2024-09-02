using System;
using System.Collections.Generic;
using System.Text;

namespace Tienda.Core.Entities
{
    public class Venta
    {
        public string idLista { get; set; }
        public int IdProducto { get; set; }
        public string ClaveProducto { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public int Cantidad{ get; set; }
        public decimal Subtotal { get; set; }
        public string Imagen { get; set; }
    }
}
