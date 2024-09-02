using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using Tienda.Core.Entities;
namespace Tienda.Core.Business
{
    public class DatosCliente
    {
        public static void InsertCliente(Tienda.Core.Entities.DatosCliente model )
        {
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            try
            {
                var xmlClientes = Serialization.SerializeObject(model);

                var parametros = new SqlParameter[1];              
                parametros[0] = new SqlParameter("@xmlClientes", xmlClientes);
              
                Movimientos.ExecuteSp_Parametros("usp_Inserta_Clientes_Pedidos", parametros);

            }
            catch (Exception ex)
            {
                var exception = new Exception("Class: IngresoSolicitud Method: Insert", ex);               
                throw new Exception("Exception(Insert): Almacenar informacion de ingreso cliente");
            }

            
        }
        public static Tienda.Core.Entities.DatosCliente BuscarClienteId(int IdCliente,int IdEmpresa)
        {
        
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            Tienda.Core.Entities.DatosCliente Cliente= new Tienda.Core.Entities.DatosCliente();
            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@IdCliente", IdCliente);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);
                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_BuscarClienteIdCliente", parametros);
                if (dt.Tables[0].Rows.Count > 0)
                {
                    var row = dt.Tables[0].Rows;
                   
                    Cliente.Nombre = row[0]["Nombre"].ToString();
                    Cliente.Apellidos = row[0]["Apellidos"].ToString();
                    Cliente.IdEstado = Convert.ToInt32(row[0]["IdEstado"].ToString());
                    Cliente.Calle = row[0]["Calle"].ToString();
                    Cliente.NoExt = row[0]["NoExt"].ToString();
                    Cliente.NoInt = row[0]["NoInt"].ToString();
                    Cliente.CodigoPostal = row[0]["CodigoPostal"].ToString();
                    Cliente.Colonia = row[0]["Colonia"].ToString();
                    Cliente.EntreCalles = row[0]["EntreCalles"].ToString();
                    Cliente.Referencias = row[0]["Referencias"].ToString();
                    Cliente.Email = row[0]["Email"].ToString();
                    Cliente.TelefonoMovil = row[0]["TelefonoMovil"].ToString();
                    Cliente.TelefonoFijo = row[0]["TelefonoFijo"].ToString();                   
                    Cliente.IdUsuario = Convert.ToInt32(row[0]["IdUsuario"].ToString());
                    Cliente.IdEmpresa = Convert.ToInt32(row[0]["IdEmpresa"].ToString());


                    return Cliente;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Venta Method: BuscarPedido", ex);

            }
            return Cliente;
        }
    }
}
