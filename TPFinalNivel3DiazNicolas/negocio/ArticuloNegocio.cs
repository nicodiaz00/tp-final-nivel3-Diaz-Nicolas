using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class ArticuloNegocio
    {
        
        public List<Articulo> listarArticulo()
        {   
            
            List<Articulo> listaArticulo= new List<Articulo>();
            AccesoDatos accesodatos = new AccesoDatos();
            try
            {
                accesodatos.setearConsulta("Select A.Id, A.Codigo, A.Nombre, A.Descripcion,A.IdMarca,A.IdCategoria, A.ImagenUrl, A.Precio, C.Descripcion as 'Categoria', M.Descripcion as 'Marca' from ARTICULOS A, CATEGORIAS C, MARCAS M where A.IdMarca = M.Id and A.IdCategoria = C.Id");
                accesodatos.ejecutarLectura();

                while (accesodatos.Lector.Read())
                {
                    Articulo articulo = new Articulo();
                    articulo.Id = (int)accesodatos.Lector["Id"];
                    articulo.Codigo = (string)accesodatos.Lector["Codigo"];
                    articulo.Nombre = (string)accesodatos.Lector["Nombre"];
                    articulo.Descripcion = (string)accesodatos.Lector["Descripcion"];
                    articulo.Precio = Math.Round((decimal)accesodatos.Lector["Precio"],2);
                    articulo.ImagenUrl = (string)accesodatos.Lector["ImagenUrl"];
                    articulo.Marca = new Marca();
                    articulo.Marca.Id = (int)accesodatos.Lector["IdMarca"];
                    articulo.Marca.DescripcionMarca = (string)accesodatos.Lector["Marca"];

                    articulo.Categoria = new Categoria();
                    articulo.Categoria.Id = (int)accesodatos.Lector["IdCategoria"];
                    articulo.Categoria.DescripcionCategoria = (string)accesodatos.Lector["Categoria"];

                    listaArticulo.Add(articulo);
                    

                }
                return listaArticulo;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                accesodatos.cerrarConexion();
            }
            
        }
    }
}
