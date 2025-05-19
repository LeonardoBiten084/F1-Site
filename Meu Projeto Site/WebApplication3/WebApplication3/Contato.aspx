<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication3.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row margin-top-60">
        <div class="col-6">
            <div class="box border padding-14 margin-right-20">
                <h2>Fale Conosco</h2>
                <br />
                <asp:Label ID="Alerta" ForeColor="Red" Font-Size="16px" runat="server" ></asp:Label>
                <br />
                <label>Seu Nome</label>
                <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                <label>E-Mail</label>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" MaxLength="255" runat="server"></asp:TextBox>
                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
            </div>
        </div>
        <div class="col-6">
            <div class="box border padding-14">

            </div>
        </div>
   </div>
</asp:Content>
