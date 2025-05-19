<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirLog.aspx.cs" Inherits="WebApplication3.ExibirLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="margin-top-60">
        <asp:Label ID="Logs" runat="server" ></asp:Label>
        <br />
        <br />
        <asp:Button ID="Limpar" OnClick="Limpar_Click" runat="server" Text="Limpar" />
    </div>
</asp:Content>
