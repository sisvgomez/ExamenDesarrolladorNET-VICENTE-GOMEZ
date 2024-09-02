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
    public class DatosPedidos
    {
        public static int InsertePedido(List<Tienda.Core.Entities.Venta> model, int IdEmpresa,int IdUsuario, double Total)
        {
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            try
            {
                              
                var xmlPedidos = Serialization.SerializeObject(model);

                var parametros = new SqlParameter[4];
                parametros[0] = new SqlParameter("@xmlPedidos", xmlPedidos);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[2] = new SqlParameter("@IdUsuario", IdUsuario);
                parametros[3] = new SqlParameter("@Total", Total);

                System.Data.DataSet dt= Movimientos.RegresaDatasetConSP("usp_Inserta_Ventas_Pedidos", parametros);
                int Pedido = 0;
                if (dt != null)
                {
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                        var row = dt.Tables[0].Rows;
                        Pedido = row[0].Field<int>("NumPedido");
                    }
                }
                        return Pedido;
            }
            catch (Exception ex)
            {
                var exception = new Exception("Class: IngresoSolicitud Method: Insert", ex);
                throw new Exception("Exception(InsertePedido): Almacenar informacion de pedidos");
            }


        }

        public static int InsertePedidoIdCliente(List<Tienda.Core.Entities.Venta> model, int IdEmpresa, int IdUsuario, double Total, int IdCliente)
        {
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            try
            {

                var xmlPedidos = Serialization.SerializeObject(model);

                var parametros = new SqlParameter[5];
                parametros[0] = new SqlParameter("@xmlPedidos", xmlPedidos);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[2] = new SqlParameter("@IdUsuario", IdUsuario);
                parametros[3] = new SqlParameter("@Total", Total);
                parametros[4] = new SqlParameter("@IdCliente", IdCliente);

                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("usp_Inserta_Ventas_PedidosConIdCliente", parametros);
                int Pedido = 0;
                if (dt != null)
                {
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                        var row = dt.Tables[0].Rows;
                        Pedido = row[0].Field<int>("NumPedido");
                    }
                }
                return Pedido;
            }
            catch (Exception ex)
            {
                var exception = new Exception("Class: IngresoSolicitud Method: Insert", ex);
                throw new Exception("Exception(InsertePedidoIdCliente): Almacenar informacion de pedidos");
            }


        }
        public static List<Tienda.Core.Entities.Venta> BuscarPedido(string IdEmpresa, string NumPedido)
        {
            List<Tienda.Core.Entities.Venta> datos = new List<Tienda.Core.Entities.Venta>().ToList();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
           
            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[1] = new SqlParameter("@NumPedido", NumPedido);
                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_BuscarPedido", parametros);
                if (dt.Tables[0].Rows.Count > 0)
                {
                    datos = DataTableToIList.ConvertTo<Tienda.Core.Entities.Venta>(dt.Tables[0]).ToList<Tienda.Core.Entities.Venta>();
                  
                    return datos;
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
            return datos;
        }
        public static string StatusPedido(string IdEmpresa, string NumPedido)
        {
          
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[1] = new SqlParameter("@NumPedido", NumPedido);
                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_BuscarPedido", parametros);
                string STATUS = null;
                if (dt.Tables[1].Rows.Count > 0)
                {
                    var row = dt.Tables[1].Rows;
                    STATUS =  row[0].Field<string>("Descripcion");

                    return STATUS;
                }
                return null;

            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Venta Method: BuscarPedido", ex);

            }
            return null;
        }

        public static List<Tienda.Core.Entities.ListaPedidos> ListadePedidosFechas(int IdEmpresa, string FechaInicio, string FechaFin)
        {
            List<Tienda.Core.Entities.ListaPedidos> datos = new List<Tienda.Core.Entities.ListaPedidos>().ToList();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
                                   
            try
            {
                var parametros = new SqlParameter[3];
                parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[1] = new SqlParameter("@FechaInicio", FechaInicio);
                parametros[2] = new SqlParameter("@FechaFin", FechaFin);
                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_ListaPedidoPorFecha", parametros);
                if (dt.Tables[0].Rows.Count > 0)
                {
                    datos = DataTableToIList.ConvertTo<Tienda.Core.Entities.ListaPedidos>(dt.Tables[0]).ToList<Tienda.Core.Entities.ListaPedidos>();

                    return datos;
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
            return datos;
        }

    }
}
