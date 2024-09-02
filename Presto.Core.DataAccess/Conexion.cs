using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Presto.Core.DataAccess
{
   
     public class Conexion
    {
        public string Conectar(String strConexion)
        {
            //strConexion = ConfigurationSettings.AppSettings[strConexion].ToString();
            strConexion = "Data Source = DESKTOP - P1CPL4Q//SQLEXPRESS; Initial Catalog = dbInventario; integrated security = true; Max Pool Size = 600";
            return strConexion;
        }
    }
}

