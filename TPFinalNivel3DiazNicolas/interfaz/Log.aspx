<%@ Page Title="" Language="C#" MasterPageFile="~/masterDefault.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="interfaz.Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        
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
                
               

            </div>


        </div>
    </div>


</asp:Content>
