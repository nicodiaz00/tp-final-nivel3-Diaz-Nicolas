using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace interfaz
{
    public partial class Listado : System.Web.UI.Page
    {
        public bool FiltroAvanzado {  get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FiltroAvanzado = false;
                dgvArticulos.DataSource = Session["listadoArticulo"];
                dgvArticulos.DataBind();
            }
            
        }

        protected void txtBusqueda_TextChanged(object sender, EventArgs e)
        {
            List<Articulo> lista = (List<Articulo>)Session["listadoArticulo"];
            List<Articulo> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtBusqueda.Text.ToUpper()));
            dgvArticulos.DataSource= listaFiltrada;
            dgvArticulos.DataBind();
        }

        protected void checkBoxBusquedaAvanzada_CheckedChanged(object sender, EventArgs e)
        {
            FiltroAvanzado = checkBoxBusquedaAvanzada.Checked;
            txtBusqueda.Enabled = !FiltroAvanzado;
        }
    }
}