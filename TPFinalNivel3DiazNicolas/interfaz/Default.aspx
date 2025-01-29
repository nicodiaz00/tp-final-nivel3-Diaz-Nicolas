<%@ Page Title="" Language="C#" MasterPageFile="~/masterDefault.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="interfaz.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" ID="scriptManager" />


   
        
        <div class="row filaCatalogo">
    <h2>Catalogo de articulos</h2>
</div>
<div class="row row-cols-1 row-cols-md-3 g-4 rowCatalogo" >

    <%
        foreach (dominio.Articulo articulo in Listado)
        {
    %>
    <div class="col colCatalogo">
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
