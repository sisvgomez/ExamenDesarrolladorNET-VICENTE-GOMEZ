
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Data;
using System.IO;

namespace Tienda.Core.DataAccess
{
    public class DataHelper
    {
        SqlConnection Conexion;
        AppConfiguration CadenaStr = new AppConfiguration();


        public void conectar()
        {

            var configurationBuilder = new ConfigurationBuilder();
            var path = Path.Combine(Directory.GetCurrentDirectory(), "appsettings.json");
            configurationBuilder.AddJsonFile(path, false);

            var root = configurationBuilder.Build();
            string connectionString = root.GetSection("ConnectionStrings").GetSection("DefaultConnection").Value;
            var appSetting = root.GetSection("ApplicationSettings");


            string str = @connectionString;
            //string str = @"Data Source = DESKTOP-P1CPL4Q\SQLEXPRESS; Initial Catalog = dbTiendaOnLine; integrated security = true; Max Pool Size = 600";
            Conexion = new SqlConnection(str);
        }
        private static void CreateCommand(string queryString, string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(
                       connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }
        }

        public DataSet RegresaDatasetConSP(string spName, SqlParameter[] parametros)
        {
            conectar();
            SqlCommand command = new SqlCommand();          
            DataSet ds = new DataSet();
            int i = 0;
            try {
            Conexion.Open();
            command.Connection = Conexion;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = spName;
            command.Parameters.AddRange(parametros);

            SqlDataAdapter datos = new SqlDataAdapter(command);
            datos.Fill(ds,"datos");
                    
            if (ds.Tables[0].Rows.Count>0)
                { 
                 Conexion.Close();
                 return ds;
                }
             return null;
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Productos Method: ObtenerInfoProducto", ex);
                return null;
            }
        }
        public  void ExecuteSp(string spName)
        {
            conectar();
            SqlCommand command = new SqlCommand();
         
            try
            {
                Conexion.Open();
                command.Connection = Conexion;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = spName;       
                command.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Productos Method: ObtenerInfoProducto", ex);
               
            }
        }
        public void ExecuteSp_Parametros(string spName, SqlParameter[] parametros)
        {
            conectar();
            SqlCommand command = new SqlCommand();
          
            try
            {
                Conexion.Open();
                command.Connection = Conexion;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = spName;
                command.Parameters.AddRange(parametros);
                command.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Usuarios Method: ExecuteSp_Parametros", ex);
               
            }
        }
        public DataSet RegresaDatasetNoSP( string queryString)
            {
            conectar();
            Conexion.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter arti = new SqlDataAdapter(queryString, Conexion);
            arti.Fill(ds, "datos");      
             return ds;                
            }
        
    }
}
