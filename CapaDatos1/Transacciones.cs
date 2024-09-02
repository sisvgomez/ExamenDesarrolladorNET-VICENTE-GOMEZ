using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//estos los tengo que agregar
using System.Data;
using System.Data.SqlClient;
//tengo que agregar la dll
using Microsoft.ApplicationBlocks.Data;

namespace CapaDatos1
{
    public class Transacciones
    {

        DataSet objDS;
        Conexion objCnn = new Conexion();
        public DataSet RegresaDatasetNoSP(string strQuery)//Regresa una consulta
        {
            try
            {
                objDS = SqlHelper.ExecuteDataset(objCnn.Conectar("StrConexion"), CommandType.Text, strQuery);
                return objDS;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Insertar(String strQuery)
        {
            //-1 cuando no se pude ejecutar el comando...
            //0  En proceso
            //1  aceptado
            try
            {
                int n = SqlHelper.ExecuteNonQuery(objCnn.Conectar("StrConexion"), CommandType.Text, strQuery);
                return n;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    }
}
