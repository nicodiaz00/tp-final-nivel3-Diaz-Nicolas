<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="interfaz.Listado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row primeraRow">
        <div class="col-12 columna">
            <h2>Lista de Articulos</h2>
        </div>
        
    </div>
    <div class="row">
        <div class="col-12 columnaListado">
            <div class="contenedorListado">
                <asp:GridView runat="server" ID="dgvArticulos" AutoGenerateColumns="false"  CssClass="table tabladgv">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="Id" ItemStyle-CssClass="oculto" HeaderStyle-CssClass="oculto" />
                        <asp:BoundField HeaderText="CODIGO" DataField="Codigo" />
                        <asp:BoundField HeaderText="NOMBRE" DataField="Nombre"/>
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
            </div>
        </div>

    </div>

</asp:Content>
