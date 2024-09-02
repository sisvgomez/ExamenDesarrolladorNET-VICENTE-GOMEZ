using System;
using System.Collections.Generic;
using System.Text;

namespace Tienda.Core.Entities
{
   public class Producto
    {
		public int IdProducto { get; set; }
		public string NomProducto { get; set; }
		public int IdCategoria { get; set; }
		public int IdSubCategoria { get; set; }
		public string subCategoria { get; set; }
		public string categoria { get; set; }
		public string Marca { get; set; }
		public string Modelo { get; set; }
		public string Descripcion { get; set; }
		public int Unidad { get; set; }
		public int IdProveedor { get; set; }
		public string Imagen { get; set; }
		public string Imagen2 { get; set; }
		public string Imagen3 { get; set; }
		public decimal Precio { get; set; }
		public decimal Costo { get; set; }
		public int IdEmpresa { get; set; }
		public string IdTalla { get; set; }
		public string ClaveProducto { get; set; }
		public string idUsuario { get; set; }
		public string NombreEmpresa { get; set; }

		public string oferta { get; set; }

		public int idTema { get; set; }

		public int folio { get; set; }

	}
}
