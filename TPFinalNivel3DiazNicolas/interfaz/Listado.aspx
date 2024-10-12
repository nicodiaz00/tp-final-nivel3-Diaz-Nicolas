<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="interfaz.Listado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div class="row primeraRow">
        <div class="col-12 columna">
            <h2>Lista de Articulos</h2>

        </div>

    </div>
    <div class="row segundaRow">
        <!--FILA BUSQUEDA SIMPLE -->
        <div class="col-6 cajaBusqueda">
            <div class="contendorB">
                <div class="mb-4 contenedorBusquedaSimple">
                    <label for="txtBusqueda" class="form-label">Buscar</label>
                    <asp:TextBox runat="server" AutoPostBack="true" ID="txtBusqueda" OnTextChanged="txtBusqueda_TextChanged" CssClass="form-control w-50"></asp:TextBox>
                    <asp:CheckBox ID="checkBoxBusquedaAvanzada" Text="Busqueda avanzada" runat="server" Checked="false" OnCheckedChanged="checkBoxBusquedaAvanzada_CheckedChanged" AutoPostBack="true" />
                </div>

            </div>
        </div>
    </div>
    <div class="row terceraRow">
        <!--FILA BUSQUEDA AVANZADA -->
        <%if (checkBoxBusquedaAvanzada.Checked)
            {%>

        <div class="col-6 columnaBusquedaAvanzada">
            <div class="contenedorDDL">
                <div class="container">
                    <label for="ddlCampo">Campo</label>
                    <asp:DropDownList runat="server" ID="ddlCampo" CssClass="form-control">
                        <asp:ListItem Text="Nombre"></asp:ListItem>
                        <asp:ListItem Text="Tipo"></asp:ListItem>
                        <asp:ListItem Text="Precio"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="container">
                    <label for="ddlCriterio">Criterio</label>
                    <asp:DropDownList runat="server" ID="ddlCriterio" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="container">
                    <label for="ddlFiltro">Filtro</label>
                    <asp:DropDownList runat="server" ID="ddlFiltro" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
            <div class="contenedorBtnBusqueda">
                <asp:Button runat="server" ID="btnBuscar" Text="Buscar" CssClass="btn btn-primary"/>
            </div>

        </div>
        <%} %>
    </div>

    <div class="row">

        <div class="col-12 columnaListado">

            <div class="contenedorListado">

                <asp:UpdatePanel runat="server">
                    <ContentTemplate>



                        <asp:GridView runat="server" ID="dgvArticulos" AutoGenerateColumns="false" CssClass="table tabladgv">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="Id" ItemStyle-CssClass="oculto" HeaderStyle-CssClass="oculto" />
                                <asp:BoundField HeaderText="CODIGO" DataField="Codigo" />
                                <asp:BoundField HeaderText="NOMBRE" DataField="Nombre" />
                                <asp:BoundField HeaderText="DESCRIPCION" DataField="Descripcion" />
                                <asp:BoundField HeaderText="IDMARCA" DataField="Marca.Id" ItemStyle-CssClass="oculto" HeaderStyle-CssClass="oculto" />
                                <asp:BoundField HeaderText="IDCATEGORIA" DataField="Categoria.Id" ItemStyle-CssClass="oculto" HeaderStyle-CssClass="oculto" />

                                <asp:BoundField HeaderText="CATEGORIA" DataField="Categoria" />
                                <asp:BoundField HeaderText="MARCA" DataField="Marca" />
                                <asp:BoundField HeaderText="IMAGEN" DataField="ImagenUrl" ItemStyle-CssClass="oculto" HeaderStyle-CssClass="oculto" />
                                <asp:BoundField HeaderText="PRECIO" DataField="Precio" />
                                <asp:CommandField ShowSelectButton="true" HeaderText="Editar" SelectText="✍️" />
                            </Columns>

                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

    </div>

</asp:Content>
