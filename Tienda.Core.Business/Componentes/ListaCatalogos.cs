using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace Tienda.Core.Business.Componentes
{
    public class ListaCatalogos
    {
        public static List<Entities.Catalogo> Catalogo(DataSet ds, int numeroTabla)
        {
            try
            {
                List<Entities.Catalogo> catalogo = new List<Entities.Catalogo>();

                //catalogo.Add(new Entities.Catalogo { descripcion = "--SELECCIONE--", Value = "0" });

                for (int i = 0; i < ds.Tables[numeroTabla].Rows.Count; i++)
                {
                    catalogo.Add(new Entities.Catalogo() { descripcion = ds.Tables[numeroTabla].Rows[i]["descripcion"].ToString(), id = ds.Tables[numeroTabla].Rows[i]["id"].ToString() , idTipo = ds.Tables[numeroTabla].Rows[i]["idTipo"].ToString(), costo = Convert.ToDecimal(ds.Tables[numeroTabla].Rows[i]["costo"].ToString()), numCantidad = Convert.ToInt32(ds.Tables[numeroTabla].Rows[i]["numCantidad"].ToString()), valorInicial = Convert.ToInt32(ds.Tables[numeroTabla].Rows[i]["valorInicial"].ToString()), valorFinal = Convert.ToInt32(ds.Tables[numeroTabla].Rows[i]["valorFinal"].ToString()), idImpresion = Convert.ToInt32(ds.Tables[numeroTabla].Rows[i]["idImpresion"].ToString()), idTamano = Convert.ToInt32(ds.Tables[numeroTabla].Rows[i]["idTamano"].ToString()) });
                }

                return catalogo;
            }
            catch
            {
                throw;
            }
        }


    }

}
