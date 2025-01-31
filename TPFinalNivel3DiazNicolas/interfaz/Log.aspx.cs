using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace interfaz
{
    public partial class Log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            Usuario usuario;
            UsuarioNegocio usuarioNegocio = new UsuarioNegocio();

            try
            {
                usuario = new Usuario(txtUser.Text, txtPassword.Text);
                if (usuarioNegocio.loguearse(usuario))
                {
                    Session.Add("usuario",usuario);
                    Response.Redirect("MenuUsuario.aspx");

                }
                else
                {
                    Session.Add("erro", "datos incorrectos");
                    Response.Redirect("Error.aspx");
                };
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Error.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}