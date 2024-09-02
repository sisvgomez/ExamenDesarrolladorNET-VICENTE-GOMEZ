using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using Tienda.Core.Entities;
namespace Tienda.Core.Business
{
    public class Consultar
    {

        public static Tienda.Core.Entities.Productos ObtenerInfoProducto()
        {
            var producto = new Tienda.Core.Entities.Productos();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                System.Data.DataSet dt = Movimientos.RegresaDatasetNoSP("select * from productos");
                if (dt != null)
                {
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                        var row = dt.Tables[0].Rows;
                        producto.IdProducto = row[0].Field<int>("IdProducto");
                        producto.nombreProducto = row[0].Field<string>("nombreProducto");
                        producto.descripcionProducto = row[0].Field<string>("descripcionProducto");
                        producto.precioProducto = Convert.ToDouble(row[0]["precioProducto"].ToString());
                        producto.costoProducto = Convert.ToDouble(row[0]["costoProducto"].ToString());
                        producto.ImagenProducto = row[0].Field<string>("ImagenProducto");
                        producto.claveProducto = row[0].Field<string>("claveProducto");
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


       

        public static Tienda.Core.Entities.Producto ObtenerProducto(int IdProducto, int IdEmpresa)
        {
            var producto = new Tienda.Core.Entities.Producto();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@IdProducto", IdProducto);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);

                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_BuscarProducto", parametros);
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
                        producto.Imagen2 = row[0].Field<string>("Imagen2");
                        producto.Imagen3 = row[0].Field<string>("Imagen3");
                        producto.ClaveProducto = row[0].Field<string>("ClaveProducto");
                        producto.categoria = row[0].Field<string>("categoria");
                        producto.IdSubCategoria= row[0].Field<int>("idSubCategoria");



                    }
                    return producto;

                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Producto Method: ObtenerProducto", ex);

            }
            return producto;
        }
        public static Tienda.Core.Entities.Usuario ObtenerInfoUsuario(string usuario, string Contrasenausuario)
        {
            var Usuario = new Tienda.Core.Entities.Usuario();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@usuario", usuario);
                parametros[1] = new SqlParameter("@Contrasenausuario", Contrasenausuario);

                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_IngresoUsuarios", parametros);
                if (dt != null)
                {
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                        var row = dt.Tables[0].Rows;
                        Usuario.usuario = row[0]["usuario"].ToString();
                        Usuario.Contrasenausuario = row[0]["Contrasenausuario"].ToString();
                        Usuario.IdEmpresa = Convert.ToInt32(row[0]["IdEmpresa"].ToString());
                        Usuario.IdUsuario = Convert.ToInt32(row[0]["IdUsuario"].ToString());
                        Usuario.NombreEmpresa = row[0]["NombreEmpresa"].ToString();
                        Usuario.dirEmpresa= row[0]["dirEmpresa"].ToString();
                        Usuario.telEmpresa = row[0]["telefono"].ToString();
                        Usuario.correoEmpresa = row[0]["email"].ToString();
                        Usuario.imagenEmpresa = row[0]["imagen"].ToString();
                        Usuario.movil = row[0]["movil"].ToString();
                        Usuario.movil2 = row[0]["movil2"].ToString();
                        Usuario.imagen2 = row[0]["imagen2"].ToString();
                        Usuario.imagen3 = row[0]["imagen3"].ToString();
                        Usuario.idRol= row[0]["idRol"].ToString();


                    }
                    return Usuario;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Usuario Method: ObtenerInfoUsuario", ex);

            }
            return Usuario;
        }

        public static void actualizaringreso(string usuario, string Contrasenausuario)
        {
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@usuario", usuario);
                parametros[1] = new SqlParameter("@Contrasenausuario", Contrasenausuario);

                Movimientos.ExecuteSp_Parametros("SP_AactualizaIngreso", parametros);

            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Usuario Method: actualizaringreso", ex);

            }


        }
        public static void InsertProducto(Tienda.Core.Entities.Producto model)
        {
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            try
            {
                var xmlProducto = Serialization.SerializeObject(model);

                var parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@xmlProducto", xmlProducto);
             

                Movimientos.ExecuteSp_Parametros("usp_Inserta_Productos", parametros);

            }
            catch (Exception ex)
            {
                var exception = new Exception("Class: Producto Method: Insert", ex);
                throw new Exception("Exception(Insert): Almacenar informacion de producto");
            }


        }

        public static void ActulizarImagen(string ClaveProducto, string IdEmpresa, string Imagen)
        {
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();
            try
            {
               
                var parametros = new SqlParameter[3];
                parametros[0] = new SqlParameter("@ClaveProducto", ClaveProducto);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);
                parametros[2] = new SqlParameter("@Imagen", Imagen);

                Movimientos.ExecuteSp_Parametros("SP_AactualizaImagen", parametros);

            }
            catch (Exception ex)
            {
                var exception = new Exception("Class: Producto Method: Actualiza", ex);
                throw new Exception("Exception(Actualiza): Actualiza la imagen");
            }


        }
        public static bool ObtenerClaveProducto(string ClaveProducto, int IdEmpresa)
        {
            var prod = new Tienda.Core.Entities.Producto();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
                var parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@ClaveProducto", ClaveProducto);
                parametros[1] = new SqlParameter("@IdEmpresa", IdEmpresa);

                System.Data.DataSet dt = Movimientos.RegresaDatasetConSP("SP_BuscarProductoClave", parametros);
              
                    if (dt.Tables[0].Rows.Count > 0)
                    {
                    return true;
                    }
                return false;
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Venta Method: ObtenerProducto", ex);

            }
            return false;
        }
        public static void ActualizarProducto(string idProducto, string ClaveProducto, int IdEmpresa,string NomProducto, string IdCategoria,string idSubCategoria,string Marca, string Modelo, string Descripcion, string Unidad,string IdProveedor, string Imagen,string Precio, string Costo, string IdTalla,string idTema, string oferta, string idUsuarioModifica)
        {
            var prod = new Tienda.Core.Entities.Producto();
            Tienda.Core.DataAccess.DataHelper Movimientos = new Tienda.Core.DataAccess.DataHelper();

            try
            {
          
                var parametros = new SqlParameter[18];
                parametros[0] = new SqlParameter("@ClaveProducto", ClaveProducto);
                parametros[1] = new SqlParameter("@idProducto", idProducto);
                parametros[2] = new SqlParameter("@IdEmpresa", IdEmpresa.ToString());
                parametros[3] = new SqlParameter("@NomProducto", NomProducto);
                parametros[4] = new SqlParameter("@IdCategoria", IdCategoria);
                parametros[5] = new SqlParameter("@idSubCategoria", idSubCategoria);
                parametros[6] = new SqlParameter("@Marca", Marca);
                parametros[7] = new SqlParameter("@Modelo", Modelo);
                parametros[8] = new SqlParameter("@Descripcion", Descripcion);
                parametros[9] = new SqlParameter("@Unidad", Unidad);
                parametros[10] = new SqlParameter("@IdProveedor", IdProveedor);
                parametros[11] = new SqlParameter("@Imagen", Imagen);
                parametros[12] = new SqlParameter("@Precio ", Precio);
                parametros[13] = new SqlParameter("@Costo", Costo);
                parametros[14] = new SqlParameter("@IdTalla", IdTalla);
                parametros[15] = new SqlParameter("@idTema", idTema);
                parametros[16] = new SqlParameter("@oferta", oferta);
                parametros[17] = new SqlParameter("@idUsuarioModifica ", idUsuarioModifica);
               

                Movimientos.ExecuteSp_Parametros("usp_Actualiza_Productos", parametros);

               
               
            }
            catch (Exception ex)
            {
                Exception exception = new Exception("Class: Business.Venta Method:Producto", ex);

            }
           
        }
    }
}
