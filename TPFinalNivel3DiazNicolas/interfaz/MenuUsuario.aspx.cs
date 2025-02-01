using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace interfaz
{
    public partial class MenuUsuario : System.Web.UI.Page
    {
        public Usuario UsuarioAux { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioAux = null;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UsuarioNegocio usuarioNegocio = new UsuarioNegocio();



            UsuarioAux= usuarioNegocio.loguearse(txtUser.Text, txtPassword.Text);

            if(UsuarioAux != null)
            {
                imagenPefil.ImageUrl = UsuarioAux.UrlImagen;
                txtNombre.Text = UsuarioAux.Nombre;

                Session["usuario"] = UsuarioAux;
                
            }
            


        }
    }
}