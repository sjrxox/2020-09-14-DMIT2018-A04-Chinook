<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P05_DDLofArtistsToCGVofAlbumsbyArtistId.aspx.cs" Inherits="WebApp.SamplePages.P05_DDLofArtistToCGVofAlbumsbyArtistId" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h2>DDL of Artists to CGV of Albums by ArtistId</h2>
    </div>
    <br />
    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    <br />
    <div class="row">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    <br />
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>
    <br />
</asp:Content>
