using System;
using System.Collections.Generic;
using System.Text;

namespace Tienda.Core.Entities
{
    public class DatosCliente
    {
	public string Nombre  { get; set; }
     public  string Apellidos  { get; set; }
	public  int IdEstado { get; set; }
	public string Calle   { get; set; }
	public string NoExt   { get; set; }
	public string NoInt  { get; set; }
	public string CodigoPostal   { get; set; }
	public string Colonia  { get; set; }
	public string EntreCalles  { get; set; }
	public string Referencias   { get; set; }
	public string TelefonoMovil   { get; set; }
	public string TelefonoFijo  { get; set; }
	public string Email { get; set; }
	public int IdUsuario  { get; set; }
	public int IdEmpresa { get; set; }


	}
}
