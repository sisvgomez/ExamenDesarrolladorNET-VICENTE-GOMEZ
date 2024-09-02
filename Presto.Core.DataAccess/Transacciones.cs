using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//estos los tengo que agregar
using System.Data;
//using System.Data.SqlClient;
//using System.Data.Sql;

//tengo que agregar la ddl
using Microsoft.Practices.EnterpriseLibrary;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace Presto.Core.DataAccess
{
    public class Transacciones
    {
        /*
         Aqui se hacen todos los metodos para 
            -consultar
            -Insertar
            -eliminar
            -actualizar
         */

        DataSet objDS;
        Database objDB;
        static string ConnectionString;
      
        public Transacciones()

        {
            //string str = "Data Source = DESKTOP - P1CPL4Q//SQLEXPRESS; Initial Catalog = dbInventario; integrated security = true; Max Pool Size = 600";
            string str = @"server=DESKTOP - P1CPL4Q\SQLEXPRESS;database=dbInventario;integrated security=true;";
            ConnectionString = str;
        }

        //private static readonly Microsoft.Practices.EnterpriseLibrary.Data.Database operacionesDB;

        public DataSet RegresaDatasetNoSP(string strQuery)
        {
            int test = 0;
            DataSet ds;
            Database objDataBase = new Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabase(@"server=DESKTOP-P1CPL4Q\SQLEXPRESS;database=dbInventario;integrated security=true;");
            //Database objDataBase = new Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabase(@"Server=bgtnhy\sql2008;Database=KadSysV2;User id=kaduser;Password=kad123;");
            ds = objDataBase.ExecuteDataSet(CommandType.Text, strQuery);
            objDataBase = null;
            return ds;
            // objDB = new SqlDatabase(ConnectionString);
            //string m;
            //using (DataSet objcmd = objDB.ExecuteDataSet(CommandType.Text, strQuery))
            //{
            //    try
            //    {
            //        return objcmd;
            //    }
            //    catch (Exception ex)
            //    {
            //        Exception exception = new Exception("Class: Business.Productos Method: ObtenerInfoProducto", ex);
            //        return null;
            //    }
            //}
        }
        //public DataSet RegresaDatasetNoSP(string strQuery)//Regresa una consulta
        //{ 
        //    try
        //    {
        //        //objDS = SqlHelper.ExecuteDataset(objCnn.Conectar("StrConexion"), CommandType.Text, strQuery);
        //        operacionesDB.CreateConnection();
        //        DataSet objDS = operacionesDB.ExecuteDataSet(CommandType.Text, strQuery);
          
        //        return objDS;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}
        //public DataSet RegresaDatasetConSP(string strQuery)//Regresa una consulta
        //{
        //    try
        //    {
        //        Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabaseAssembler.

        //            //objDS = SqlHelper.ExecuteDataset(objCnn.Conectar("StrConexion"),"","");
            
        //                       return objDS;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        //public int Insertar(String strQuery)
        //{
        //    //-1 cuando no se pude ejecutar el comando...
        //    //0  En proceso
        //    //1  aceptado
        //    try
        //    {
        //        //int n = SqlHelper.ExecuteNonQuery(objCnn.Conectar("StrConexion"), CommandType.Text, strQuery);
        //        //return n;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        //public int Eliminar(String strQuery)
        //{
        //    try
        //    {
        //        //int n = SqlHelper.ExecuteNonQuery(objCnn.Conectar("StrConexion"), CommandType.Text, strQuery);
        //        //return n;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        //public int Modificar(String strQuery)
        //{
        //    try
        //    {
        //        //int n = SqlHelper.ExecuteNonQuery(objCnn.Conectar("StrConexion"), CommandType.Text, strQuery);
        //        //return n;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}
    }
}
