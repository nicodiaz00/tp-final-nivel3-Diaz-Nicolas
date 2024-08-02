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
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> Listado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            Listado=negocio.listarArticulo();
            Session.Add("listadoArticulo", Listado);
        }

        protected void btnListado_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listado.aspx", false);
        }

        protected void btnCatalogo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Catalogo.aspx", false);
        }
    }
}