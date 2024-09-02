using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using Tienda.Core.Entities;

namespace Tienda.Core.Business
{
    public class Ventas
    {

        public static List<Tienda.Core.Entities.Producto> ObtenerTotalProducto( int IdEmpresa)
        {
            List<Tienda.Core.Entities.Producto> datos = new List<Tienda.Core.Entities.Producto>().ToList();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_TotalProducto", parametros);
                if (dt.Tables[0].Rows.Count > 0)
                {
                    datos = DataTableToIList.ConvertTo<Tienda.Core.Entities.Producto>(dt.Tables[0]).ToList<Tienda.Core.Entities.Producto>();

                    return datos;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Venta Method: ObtenerTotalProducto", ex);

            }
            return datos;
        }
        public static Tienda.Core.Entities.Venta ObtenerProducto(string ClaveProducto, int IdEmpresa)
        {
            var Venta = new Tienda.Core.Entities.Venta();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@ClaveProducto", ClaveProducto);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);

                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_BuscarProductoClave", parametros);
                if (dt != null)
                {
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                        var row = dt.Tables[0].Rows;
                        Venta.IdProducto= Convert.ToInt32(row[0]["IdProducto"].ToString());
                        Venta.ClaveProducto = ClaveProducto;
                        Venta.Nombre= row[0]["NomProducto"].ToString();
                        Venta.Descripcion = row[0]["Descripcion"].ToString();
                        Venta.Precio = Convert.ToDecimal(row[0]["Precio"].ToString());
                        Venta.Cantidad = Convert.ToInt32("1");
                        Venta.Subtotal = Venta.Precio;
                        Venta.Imagen = row[0]["Imagen"].ToString();

                    }
                    return Venta;
                }
                else
                {
                    return Venta;
                }
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Venta Method: ObtenerProducto", ex);

            }
            return Venta;
        }





    }


}
