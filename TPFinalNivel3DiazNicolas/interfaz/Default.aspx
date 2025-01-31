<%@ Page Title="" Language="C#" MasterPageFile="~/masterDefault.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="interfaz.Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col columnacard">
                    <asp:Repeater runat="server" ID="repArticulo">
                        <ItemTemplate>
                            <div class="card">
                                <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("Nombre")%></h5>
                                    <p class="card-text"><%#Eval("Descripcion")%></p>
                                    
                                    <asp:Button runat="server" ID="btnIdArticulo" CssClass="btn btn-primary" Text="Seleccionar" CommandArgument='<%#Eval("Id")%>' CommandName="IdArticulo" OnClick="btnIdArticulo_Click"/>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
