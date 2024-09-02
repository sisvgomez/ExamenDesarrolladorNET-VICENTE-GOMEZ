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


using System.Runtime;
namespace CapaDatos
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
            string str = @"server=DESKTOP-P1CPL4Q\SQLEXPRESS;database=dbInventario;integrated security=true;";
            ConnectionString = str;
        }

        //private static readonly Microsoft.Practices.EnterpriseLibrary.Data.Database operacionesDB;

        public DataSet RegresaDatasetNoSP(string strQuery)
        {

            DataSet ds;
            Database objDataBase = new Microsoft.Practices.EnterpriseLibrary.Data.Sql.SqlDatabase(@"server=DESKTOP-P1CPL4Q\SQLEXPRESS;database=dbInventario;integrated security=true;");

            ds = objDataBase.ExecuteDataSet(CommandType.Text, strQuery);
            objDataBase = null;
            return ds;

        }
    }
}
