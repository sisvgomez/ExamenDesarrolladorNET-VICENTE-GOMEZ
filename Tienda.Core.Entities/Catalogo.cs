using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tienda.Core.Entities
{
    public class Catalogo
    {
        public string id { get; set; }
        public string descripcion { get; set; }
        public decimal costo { get; set; }
        public string idTipo { get; set; }
        public int numCantidad { get; set; }
        public int valorInicial { get; set; }
        public int valorFinal { get; set; }
        public int idTamano { get; set; }
        public int idImpresion { get; set; }

    }
}
