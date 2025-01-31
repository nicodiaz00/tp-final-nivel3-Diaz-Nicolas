<%@ Page Title="" Language="C#" MasterPageFile="~/masterDefault.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="interfaz.Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">
            <h3>Inicia Sesion</h3>
            <div class="mb-4">
                <label for="usuario" class="form-label">Usuario</label>
                <asp:TextBox runat="server" ID="txtUser" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <asp:Button runat="server" Text="Log" ID="btnLog" OnClick="btnLog_Click" />
            
        </div>
        <div class="col-6">
            <h3>Completá los datos para crear tu cuenta</h3>
            <div class="mb-4">
                <label for="Nombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" ID="txtNombreUser" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="Apellido" class="form-label">Apellido</label>

                <asp:TextBox runat="server" ID="txtApellidoUser" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="Email" class="form-label">Email</label>
                <asp:TextBox runat="server" ID="emailUser" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="Contraseña" class="form-label">Contraseña</label>
                <asp:TextBox runat="server" ID="txtContrasena" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-4">
                <p>Al continuar, te enviaremos un codigo al mail para validar tu cuenta</p>
                <asp:Button runat="server" Text="Log" ID="Button1" OnClick="Button1_Click1" />
               

            </div>


        </div>
    </div>


</asp:Content>
