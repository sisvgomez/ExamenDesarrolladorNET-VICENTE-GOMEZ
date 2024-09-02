using System;
using System.Collections.Generic;
using System.Text;

namespace Tienda.Core.Entities
{
    public class Usuario
    {
        public string usuario { get; set; }
        public string Contrasenausuario { get; set; }
        public int IdEmpresa { get; set; }
        public int IdUsuario { get; set; }
        public string NombreEmpresa { get; set; }

        public string dirEmpresa { get; set; }
        public string telEmpresa { get; set; }
        public string correoEmpresa { get; set; }
        public string imagenEmpresa { get; set; }

        public string movil { get; set; }
        public string movil2{ get; set; }
        public string imagen2 { get; set; }
        public string imagen3 { get; set; }
        public string idRol { get; set; }
    }
}
