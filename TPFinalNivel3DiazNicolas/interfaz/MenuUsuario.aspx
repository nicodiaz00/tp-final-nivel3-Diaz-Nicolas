<%@ Page Title="" Language="C#" MasterPageFile="~/masterDefault.Master" AutoEventWireup="true" CodeBehind="MenuUsuario.aspx.cs" Inherits="interfaz.MenuUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <%if (Session["usuario"] != null)
            {%>
        <style>
            .contenedorLogin {
                display: none;
            }
        </style>
        <%}%>
        <%if (Session["usuario"] == null)
            {%>
        <style>
            .contenedorAdmin {
                display: none;
            }
        </style>
        <%}%>
        <div class="col-6">
            <!--   aca esta el contedor para mostrar el login-->
            <div class="contenedorLogin">
                <h3>Inicia Sesion</h3>
                <div class="mb-4">
                    <label for="usuario" class="form-label">Usuario</label>
                    <asp:TextBox runat="server" ID="txtUser" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-4">
                    <label for="password" class="form-label">Password</label>
                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-primary" Text="Iniciar Sesion" OnClick="btnLogin_Click" />
            </div>
            <div class="contenedorAdmin">
                <div class="mb-4">
                    <label for="imagenPerfil" class="form-label">Image</label>
                    <asp:Image runat="server" ID="imagenPefil" />
                </div>
                <div class="mb-4">
                    <label for="ID" class="form-label">Nombre</label>
                    <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" ></asp:TextBox>
                </div>



            </div>

        </div>
    </div>


</asp:Content>
