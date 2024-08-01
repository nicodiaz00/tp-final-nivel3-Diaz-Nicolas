<%@ Page Title="" Language="C#" MasterPageFile="~/masterDefault.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="interfaz.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" ID="scriptManager" />


    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row filaHome1">
                <div class="col-4">
                    <p>as</p>
                </div>
                <div class="col-4">
                    <p>as</p>
                </div>
                <div class="col-4">
                    <p>as</p>
                </div>
            </div>

            <div class="row filaHome">
                <div class="col-4">
                    <asp:Button runat="server" ID="btnCatalogo" Text="catalogo" CssClass="btnCatalogo"/>
                </div>
                <div class="col-4">

                    <asp:Button runat="server" ID="btnListado" CssClass="btnListado" Text="Listado" OnClick="btnListado_Click"/>
                </div>
                <div class="col-4">
                    <asp:Button runat="server" ID="btnPerfil" Text="Perfil" CssClass="btnPerfil" />
                </div>




            </div>


        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
