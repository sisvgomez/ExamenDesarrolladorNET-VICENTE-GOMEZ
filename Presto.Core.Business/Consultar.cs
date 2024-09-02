using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//estos los tengo que agregar
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
using CapaDatos;
using CapaDatos1;
namespace Presto.Core.Business
{
    public class Consultar
    { 

        public static Presto.Core.Entities.Productos ObtenerInfoProducto()
    {
        var producto = new Presto.Core.Entities.Productos();
            CapaDatos1.Transacciones Movimientos = new CapaDatos1.Transacciones();
        //var parametros = new[]
        //    {
        //            new SqlParameter("@idProducto",IdProducto)
        //        };
        try
        {
                System.Data.DataSet dt = Movimientos.RegresaDatasetNoSP("select * from productos");
            if (dt != null)
            {
                if (dt.Tables[0].Rows.Count > 0)
                {
                    var row = dt.Tables[0].Rows;

           
                    producto.IdProducto = row[0].Field<int>("IdProducto");
                    producto.nombreProducto  = row[0].Field<string>("nombreProducto");
                    producto.descripcionProducto   = row[0].Field<string>("descripcionProducto");
                    producto.precioProducto  = row[0].Field<double>("precioProducto");
                    producto.costoProducto  = row[0].Field<double>("costoProducto");
                    producto.ImagenProducto  = row[0].Field<string>("ImagenProducto");
                    producto.claveProducto   = row[0].Field<string>("claveProducto");
                    producto.idUsuario = row[0].Field<int>("idUsuario");

                
                }
                    return producto;
            }
        }
        catch (Exception ex)
        {
            Exception exception = new Exception("Class: Business.Productos Method: ObtenerInfoProducto", ex);
        
        }
        return producto;
    }



    }
}
