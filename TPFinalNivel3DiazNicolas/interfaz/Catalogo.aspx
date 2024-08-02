<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="interfaz.Catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <h2>Catalogo de articulos</h2>
    </div>
    <div class="row row-cols-1 row-cols-md-3 g-4">
       
        <%
            foreach (dominio.Articulo articulo in Lista)
            {
        %>
        <div class="col">
            <div class="card tarjetaCatalogo">
                <div class="contedorTarjeta">
                    <img src="<%:articulo.ImagenUrl %>" alt="Avatar" class="imagenes">
                </div>
                
                <div class="container">
                    <h4><b><%:articulo.Nombre %></b></h4>
                    <p><%:articulo.Descripcion %></p>
                </div>
            </div>
        </div>

        <%  }

        %>
    </div>
</asp:Content>
