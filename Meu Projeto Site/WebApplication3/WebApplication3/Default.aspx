<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="flexslider">
  <ul class="slides">
    <li>
      <img src="images/Grid-Oficial.jpg" />
    </li>
    <li>
      <img src="images/Largada.jpg" />
    </li>
    <li>
      <img src="images/F1Track.jpg" />
    </li>
    <li>
      <img src="images/Podio.jpg" />
    </li>
  </ul>
</div>
<script>
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide"
        });
    });
</script>

<div class="row margin-top-60">
    <div class="col-3">
        <div class="box border margin-right-20">
            <img width="100%" src="../Images/Capacete.jpg" />
            <div class="padding-14">
                <h2>Pilotos</h2>
                <br />
                Descubra quem são os pilotos da atual temporada de 2025, suas histórias, estatísticas e curiosidades. 
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Pilotos.aspx" runat="server">Saiba Mais</asp:HyperLink>
            </div>
        </div>
    </div>

    <div class="col-3">
        <div class="box border margin-right-20">
            <img width="100%" src="../Images/Carro F1.jpg" />
            <div class="padding-14">
                <h2>Equipes</h2>
                <br />
                Novas duplas, surpresas no grid e mudanças que prometem agitar a temporada. Clique e descubra como cada equipe se preparou para dominar as pistas! 
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Equipes.aspx" runat="server">Saiba Mais</asp:HyperLink>
            </div>
        </div>
    </div>

    <div class="col-3">
        <div class="box border margin-right-20">
            <img width="100%" src="../Images/Curva.jpg" />
            <div class="padding-14">
                <h2>Pistas</h2>
                <br />
                De Melbourne a Abu Dhabi, a F1 passa por 24 circuitos lendários com desafios, sprints e paisagens incríveis. Explore cada etapa dessa jornada de pura velocidade!                
                <br />
                <br />
                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Pistas.aspx" runat="server">Saiba Mais</asp:HyperLink>
            </div>
        </div>
    </div>

    <div class="col-3">
        <div class="box border margin-right-20">
            <img width="100%" src="../Images/Campeoes.jpg" />
            <div class="padding-14">
                <h2>Campeões deste Século</h2>
                <br />
                Descubra todos os campeões do século XXI da categoria mais importante do automobilismo! 
                <br />
                <br />
                <asp:HyperLink ID="HyperLink4" NavigateUrl="~/Campeões.aspx" runat="server">Saiba Mais</asp:HyperLink>
            </div>
        </div>
    </div>
</div>



</asp:Content>
