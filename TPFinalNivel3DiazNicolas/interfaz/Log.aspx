<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="interfaz.Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">
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
    </div>

</asp:Content>
