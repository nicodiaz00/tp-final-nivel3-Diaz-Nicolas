using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class UsuarioNegocio
    {
        public bool loguearse (Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos ();

            try
            {
                datos.setearConsulta("select Id, email, pass, admin from USERS where email = @email and pass = @pass");
                datos.setearParametro("@email", usuario.Email);
                datos.setearParametro("@pass", usuario.Pass);


                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    usuario.Id = (int)datos.Lector["Id"];
                    usuario.Email = (string)datos.Lector["email"];
                    usuario.Pass = (string)datos.Lector["pass"];

                    int userValue = Convert.ToInt32(datos.Lector["admin"]);
                    usuario.TipoUsuario = (TipoUsuario)userValue;
                    
                     
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void registrarUsuario(Usuario usuarioNuevo)
        {
            AccesoDatos accesoDatos = new AccesoDatos();
            try
            {

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
