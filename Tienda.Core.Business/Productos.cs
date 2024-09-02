using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using Tienda.Core.Entities;

namespace Tienda.Core.Business
{
    [Serializable]
    public class Productos
    {
        public static Entities.catalogoProductos GetCatalogos(int idSubCategoria,int idEmpresa)
        {
            try
            {
                Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@idSubCategoria", idSubCategoria);
                parametros[1] = new SqlParameter("@idEmpresa", idEmpresa);
                System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("uSP_Productos_ConsultaCatalogos_Cotizacion", parametros);
                //DataSet ds = Tienda.Core.DataAccess.DataHelper.ExecuteQuery("uSP_Casas_ConsultaCatalogos", null);


                Entities.catalogoProductos catalogos = new Entities.catalogoProductos();
                if (ds!=null)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        catalogos.catTamano = Componentes.ListaCatalogos.Catalogo(ds, 0);
                    }
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        catalogos.catTipo = Componentes.ListaCatalogos.Catalogo(ds, 1);
                    }
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        catalogos.catCantidad = Componentes.ListaCatalogos.Catalogo(ds, 2);
                    }
                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        catalogos.catImpresion = Componentes.ListaCatalogos.Catalogo(ds, 3);
                    }
                    if (ds.Tables[4].Rows.Count > 0)
                    {
                        catalogos.catTerminado = Componentes.ListaCatalogos.Catalogo(ds, 4);
                    }
                    if (ds.Tables[5].Rows.Count > 0)
                    {
                        catalogos.catFolio = Componentes.ListaCatalogos.Catalogo(ds, 5);
                    }
                    if (ds.Tables[6].Rows.Count > 0)
                    {
                        catalogos.catNoCopias = Componentes.ListaCatalogos.Catalogo(ds, 6);
                    }
                    if (ds.Tables[7].Rows.Count > 0)
                    {
                        catalogos.catCantidadRango = Componentes.ListaCatalogos.Catalogo(ds, 7);
                    }
                    if (ds.Tables[8].Rows.Count > 0)
                    {
                        catalogos.catTemas = Componentes.ListaCatalogos.Catalogo(ds, 8);
                    }

                }
                return catalogos;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public static List<Tienda.Core.Entities.Producto> GetProductos(int IdEmpresa)
        {
            List<Entities.Producto> producto = new List<Entities.Producto>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[1];          
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_TotalProducto", parametros);        

            if (ds.Tables[0].Rows.Count > 0)
            {
                producto = PRODUCTO(ds.Tables[0]);
            }

            return producto;
        }


        public static List<Tienda.Core.Entities.Producto> GetProductosNuevo(int IdEmpresa)
        {
            List<Entities.Producto> producto = new List<Entities.Producto>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_TotalProductoNuevo", parametros);

            if (ds.Tables[0].Rows.Count > 0)
            {
                producto = PRODUCTO(ds.Tables[0]);
            }

            return producto;
        }
        public static Tienda.Core.Entities.Producto GetProducto(int idProducto,int IdEmpresa)
        {
            //List<Entities.Producto> producto = new List<Entities.Producto>();
            var producto = new Tienda.Core.Entities.Producto();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[2];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            parametros[1] = new SqlParameter("@idProducto", idProducto);
            System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_Producto", parametros);
            if (dt != null)
            {
                if (dt.Tables[0].Rows.Count > 0)
                {
                    var row = dt.Tables[0].Rows;
                    producto.IdProducto = row[0].Field<int>("IdProducto");
                    producto.NomProducto = row[0].Field<string>("NomProducto");
                    producto.Descripcion = row[0].Field<string>("Descripcion");
                    producto.Precio = Convert.ToDecimal(row[0]["Precio"].ToString());
                    producto.Costo = Convert.ToDecimal(row[0]["Costo"].ToString());
                    producto.Imagen = row[0].Field<string>("Imagen");
                    producto.ClaveProducto = row[0].Field<string>("ClaveProducto");
                    producto.IdCategoria= row[0].Field<int>("idCategoria");
                    producto.categoria = row[0].Field<string>("categoria");
                    producto.IdSubCategoria = row[0].Field<int>("idSubCategoria");              
                    producto.NombreEmpresa = row[0].Field<string>("NombreEmpresa"); 
                    producto.oferta = Convert.ToString(row[0].Field<bool>("oferta"));
                    producto.Marca = row[0].Field<string>("Marca");
                    producto.Modelo = row[0].Field<string>("Modelo");
                    producto.Unidad = row[0].Field<int>("Unidad");
                    producto.IdProveedor = row[0].Field<int>("IdProveedor");
                    producto.IdTalla = row[0].Field<string>("IdTalla");
                    producto.idTema = row[0].Field<int>("idTema");
                
                    producto.categoria = row[0].Field<string>("categoria");
                    producto.subCategoria = row[0].Field<string>("subCategoria");
                    producto.folio = row[0].Field<int>("IdProducto");


                }
                return producto;

            }
            else
            {
                return null;
            }


            return producto;
        }
        public static List<Tienda.Core.Entities.Producto> GetProductosOferta(int IdEmpresa)
        {
            List<Entities.Producto> producto = new List<Entities.Producto>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_OfertaProducto", parametros);
            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    producto = PRODUCTO(ds.Tables[0]);
                }
            }
            return producto;
        }

        public static List<Tienda.Core.Entities.Producto> GetProductosFiltrado(string idCategoria, string idSubCategoria, string textoBuscar, int IdEmpresa)
        {
           


            List<Entities.Producto> producto = new List<Entities.Producto>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[4];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            parametros[1] = new SqlParameter("@idCategoria", idCategoria);
            parametros[2] = new SqlParameter("@idSubcategoria", idSubCategoria);
            parametros[3] = new SqlParameter("@textoBuscar", textoBuscar);
            
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_ProductoFiltrado", parametros);

            if (ds.Tables[0].Rows.Count > 0)
            {
                producto = PRODUCTO(ds.Tables[0]);
            }

            return producto;
        }
        
        public static List<Tienda.Core.Entities.Producto> GetProductosFiltradoTemas(string idEmpresa, string idTema, string idCategoria)
        {



            List<Entities.Producto> producto = new List<Entities.Producto>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[3];
            parametros[0] = new SqlParameter("@IdEmpresa", idEmpresa);
            parametros[1] = new SqlParameter("@idTema", idTema);
            parametros[2] = new SqlParameter("@idCategoria", idCategoria);
          
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_ProductoFiltradoTemas", parametros);
            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    producto = PRODUCTO(ds.Tables[0]);
                }
            }
            return producto;
        }

        public static List<Tienda.Core.Entities.Categorias> GetCategorias(int IdEmpresa)
        {
            List<Entities.Categorias> categoria = new List<Entities.Categorias>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_Subcategorias", parametros);

            if (ds != null)
            {

                if (ds.Tables[0].Rows.Count > 0)
                {
                    categoria = CATEGORIAS(ds.Tables[0]);
                }
            }
            return categoria;
        }
        public static List<Tienda.Core.Entities.Categorias> GetSubCategorias(int IdEmpresa)
        {
            List<Entities.Categorias> subcategoria = new List<Entities.Categorias>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);

            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_Subcategorias", parametros);

            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    subcategoria = SUBCATEGORIAS(ds.Tables[1]);
                }
            }

            return subcategoria;
        }

        public static List<Tienda.Core.Entities.Categorias> GettemaSubCategorias(int IdEmpresa)
        {
            List<Entities.Categorias> subcategoria = new List<Entities.Categorias>();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            var parametros = new SqlParameter[1];
            parametros[0] = new SqlParameter("@IdEmpresa", IdEmpresa);
            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_Subcategorias", parametros);

            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    subcategoria = TEMASSUBCATEGORIAS(ds.Tables[2]);
                }
            }
            return subcategoria;
        }

        private static List<Tienda.Core.Entities.Producto> PRODUCTO(DataTable dt)
        {
            List<Entities.Producto> producto = new List<Entities.Producto>();
          
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                producto.Add(new Entities.Producto()
                {                

                    IdProducto = Convert.ToInt32(dt.Rows[i]["IdProducto"].ToString()),
                    NomProducto = dt.Rows[i]["NomProducto"].ToString(),
                    Descripcion = dt.Rows[i]["Descripcion"].ToString(),
                    Precio = Convert.ToDecimal(dt.Rows[i]["Precio"].ToString()),
                    Costo = Convert.ToDecimal(dt.Rows[i]["Costo"].ToString()),
                    Imagen = dt.Rows[i]["Imagen"].ToString(),
                    ClaveProducto = dt.Rows[i]["ClaveProducto"].ToString(),
                    NombreEmpresa= dt.Rows[i]["NombreEmpresa"].ToString(),
                    oferta= dt.Rows[i]["oferta"].ToString(),
                    categoria= dt.Rows[i]["categoria"].ToString(),
                    subCategoria = dt.Rows[i]["subCategoria"].ToString(),
                    folio= Convert.ToInt32(dt.Rows[i]["IdProducto"].ToString())
                    //idUsuario = dt.Rows[i]["idUsuario"].ToString()
                }); 
            }
            return producto;
        }
        private static List<Tienda.Core.Entities.Categorias> CATEGORIAS(DataTable dt)
        {
            List<Entities.Categorias> categoria = new List<Entities.Categorias>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                categoria.Add(new Entities.Categorias()
                {
                    categoria = dt.Rows[i]["NomCategoria"].ToString(),                
                    idCategoria = dt.Rows[i]["idCategoria"].ToString()
                    
                }); ;
            }
            return categoria;
        }
        private static List<Tienda.Core.Entities.Categorias> SUBCATEGORIAS(DataTable dt)
        {
            List<Entities.Categorias> subcategoria = new List<Entities.Categorias>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                subcategoria.Add(new Entities.Categorias()
                {
                    categoria = dt.Rows[i]["categoria"].ToString(),
                    subCategoria = dt.Rows[i]["subCategoria"].ToString(),
                    idCategoria= dt.Rows[i]["idCategoria"].ToString(),
                    idSubCategoria = dt.Rows[i]["idSubCategoria"].ToString(),
                    imagen= dt.Rows[i]["imagen"].ToString()
                }); ;
            }
            return subcategoria;
        }
        private static List<Tienda.Core.Entities.Categorias> TEMASSUBCATEGORIAS(DataTable dt)
        {
            List<Entities.Categorias> categoria = new List<Entities.Categorias>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                categoria.Add(new Entities.Categorias()
                {
                    temaSubCategoria = dt.Rows[i]["temasSubCategoria"].ToString(),
                    idSubCategoria = dt.Rows[i]["idSubCategoria"].ToString()

                }); ;
            }
            return categoria;
        }
 

    public static List<Tienda.Core.Entities.Categorias> GetSubCategoriasMenuIzq( string IdEmpresa, string idCategoria)
    {
        List<Entities.Categorias> subcategoria = new List<Entities.Categorias>();
        Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
        var parametros = new SqlParameter[2];
        parametros[0] = new SqlParameter("@idEmpresa", IdEmpresa);
        parametros[1] = new SqlParameter("@idCategoria", idCategoria);
        System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("SP_Subcategorias_MenuIzq", parametros);

           if(ds!=null)
            {
        if (ds.Tables[0].Rows.Count > 0)
        {
            subcategoria = SUBCATEGORIAS(ds.Tables[0]);
        }
            }
            return subcategoria;
    }


        public  static List<Tienda.Core.Entities.Producto> Eliminar(string folio, int IdEmpresa, int idUsuario)
        {
           
           

                List<Entities.Producto> producto = new List<Entities.Producto>();
                Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
                SqlParameter[] parametros = new SqlParameter[3];
                parametros[0] = new SqlParameter("@id", folio);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[2] = new SqlParameter("@idUsuario ", idUsuario);

            System.Data.DataSet ds = Movimientos.RegresaDatasetConSP("uSp_Productos_Eliminar", parametros);


                if (ds.Tables[0].Rows.Count > 0)
                {
                    producto = PRODUCTO(ds.Tables[0]);
                }


                return producto;
           
          

        }

    }

}
