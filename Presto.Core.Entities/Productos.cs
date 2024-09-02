using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Presto.Core.Entities
{
    public class Productos
    { 
                     
            public int IdProducto { get; set; }
            public string nombreProducto { get; set; }
            public string descripcionProducto { get; set; }
            public double precioProducto { get; set; }
           public double costoProducto { get; set; }
           public string ImagenProducto { get; set; }
           public string claveProducto { get; set; }
           public int idUsuario { get; set; }
    

}
}
