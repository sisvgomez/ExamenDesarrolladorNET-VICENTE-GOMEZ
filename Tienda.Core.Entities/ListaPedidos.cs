using System;
using System.Collections.Generic;
using System.Text;

namespace Tienda.Core.Entities
{
  public  class ListaPedidos
    {

		public string NumPedido{ get; set; }
		public decimal Total { get; set; }
		public DateTime Fecha { get; set; }
		public string Status { get; set; }
		public int Idcliente{ get; set; }
	}
}

